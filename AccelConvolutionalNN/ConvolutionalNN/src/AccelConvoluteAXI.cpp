#include <math.h>
#include <string.h>
#include "AccelConvoluteAXI.hpp"


int Filter3X[FILTER_SIZE_3][FILTER_SIZE_3] =  {{ 1, 0, -1 },
										       { 2, 0, -2 },
										       { 1, 0, -1 }};

int Filter3Y[FILTER_SIZE_3][FILTER_SIZE_3] =  {{ -1, -2, -1 },
										       {  0,  0,  0 },
										       {  1,  2,  1 }};

//int Filter5[FILTER_SIZE_5][FILTER_SIZE_5] =  {{  1, 2, 3, 2, 1 },
//											 {  1, 2, 3, 2, 1 },
//											 {  0, 0, 0, 0, 0 },
//											 { -1,-2,-3,-2,-1 },
//											 { -1,-2,-3,-2,-1 },
//											};

void AccelConvoluteAXI(UINT24*  in_pointer, UINT8* out_pointer)
{

	#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
	#pragma HLS INTERFACE mode=m_axi depth=256 port=in_pointer  offset=slave bundle=gmem
	#pragma HLS INTERFACE mode=m_axi depth=256 port=out_pointer offset=slave bundle=gmem
	#pragma HLS INTERFACE s_axilite port=in_pointer
	#pragma HLS INTERFACE s_axilite port=out_pointer

	UINT24 image_in[BUFF_LEN];
	UINT8  image_out[BUFF_LEN];

	UINT8 GrayBuffX[BUFF_LEN];
	UINT8 GrayBuffY[BUFF_LEN];

	UINT8 GrayBuffXOut[BUFF_LEN];
	UINT8 GrayBuffYOut[BUFF_LEN];

//	#pragma HLS ARRAY_PARTITION variable=image_in  type=complete
//	#pragma HLS ARRAY_PARTITION variable=image_out type=complete
//	#pragma HLS ARRAY_PARTITION variable=GrayBuffX type=complete
//	#pragma HLS ARRAY_PARTITION variable=GrayBuffY type=complete

	for (int i = 0 ; i < BUFF_LEN ; ++i)
	{
		image_in[i] = in_pointer[i] & 0xFFFFFF;
	}

	{
		#pragma HLS DATAFLOW
		GrayScale(	image_in, BUFF_LEN,
					GrayBuffX, GrayBuffY);

		ConvoluteX(GrayBuffX, MAT_SIZE,
				   GrayBuffXOut);

		ConvoluteY(GrayBuffY, MAT_SIZE,
				   GrayBuffYOut);

		Magnitude(GrayBuffXOut, GrayBuffYOut , BUFF_LEN,
				  image_out);
	}

	memcpy((UINT8*)out_pointer, (const UINT8*)image_out, BUFF_BYTES);

	return;
}

void GrayScale(	UINT24* In, unsigned int Size,
				UINT8* Out1, UINT8* Out2)
{
	UINT24 Val = 0;

	GrayScale:
	for (int i = 0; i < Size; i++)
	{
		//#pragma HLS PIPELINE off

		Val = In[i];
		UINT8 RGB = static_cast<UINT8>(((Val & 0xFF) + ((Val & 0xFF00) >> 8) + ((Val & 0xFF0000) >> 16)) / 3.0 ) ;
		Out1[i] = RGB;
		Out2[i] = RGB;
	}
}


void TraverseMatrix3X(UINT8* MatIn, UINT8* MatOut, int MatSize)
{
	#pragma HLS ARRAY_PARTITION variable=MatIn type=complete

	TraverseMatrix3X:
	for (int i = 0 ; i < MatSize; ++i)
	{
		#pragma HLS UNROLL factor=8

		TraverseMatrix3X1:
		for (int j = 0 ; j < MatSize; ++j)
		{
			#pragma HLS UNROLL factor=8

			MatOut[i*MatSize + j] = ApplyFilterDim3X(MatIn, i, j, MatSize);
 		}
	}
}


int ApplyFilterDim3X(UINT8* MatIn, int i, int j, int MatSize)
{
	int FilterOffset = FILTER_SIZE_3/2;
	int sum = 0;

	ApplyFilterDim3X:
	for (int u = -FilterOffset; u <= FilterOffset; ++u)
	{
		#pragma HLS PIPELINE off
		#pragma HLS performance target_ti=32
		#pragma HLS LOOP_TRIPCOUNT max=32
		ApplyFilterDim3X1:
		for (int v = -FilterOffset; v <= FilterOffset; ++v)
		{
			#pragma HLS PIPELINE off
			#pragma HLS performance target_ti=32
			#pragma HLS LOOP_TRIPCOUNT max=32
			if ((i+u >= 0) && (j+v >= 0) && (i+u < MatSize) && (j+v < MatSize))
			{
				int k = (i+u)*MatSize + (j+v);
				sum += MatIn[k] * Filter3X[u+FilterOffset][v+FilterOffset];
			}
		}
	}
	return sum ;/// 9;
}


void TraverseMatrix3Y(UINT8* MatIn, UINT8* MatOut, int MatSize)
{
	TraverseMatrix3Y:
	for (int i = 0 ; i < MatSize; ++i)
	{
		#pragma HLS PIPELINE off
		#pragma HLS performance target_ti=32
		#pragma HLS LOOP_TRIPCOUNT max=32
		TraverseMatrix3Y1:
		for (int j = 0 ; j < MatSize; ++j)
		{
			#pragma HLS performance target_ti=32
			#pragma HLS LOOP_TRIPCOUNT max=32
			#pragma HLS PIPELINE off
			MatOut[i*MatSize + j] = ApplyFilterDim3Y(MatIn, i, j, MatSize);
 		}
	}
}


int ApplyFilterDim3Y(UINT8* MatIn, int i, int j, int MatSize)
{
	int FilterOffset = FILTER_SIZE_3/2;
	int sum = 0;

	ApplyFilterDim3Y:
	for (int u = -FilterOffset; u <= FilterOffset; ++u)
	{
		#pragma HLS PIPELINE off
		#pragma HLS performance target_ti=32
		#pragma HLS LOOP_TRIPCOUNT max=32

		ApplyFilterDim3Y1:
		for (int v = -FilterOffset; v <= FilterOffset; ++v)
		{
			#pragma HLS PIPELINE off
			#pragma HLS performance target_ti=32
			#pragma HLS LOOP_TRIPCOUNT max=32

			if ((i+u >= 0) && (j+v >= 0) && (i+u < MatSize) && (j+v < MatSize))
			{
				int k = (i+u)*MatSize + (j+v);
				sum += MatIn[k] * Filter3Y[u+FilterOffset][v+FilterOffset];
			}
		}
	}
	return sum ;/// 9;
}


// Convolute gray scaled matrix on X
void ConvoluteX(UINT8* In, size_t MatSize,
				UINT8* Out)
{
	UINT24 Val = 0;
	ConvoluteX:
	for (int i = 0; i < MatSize; i++)
	{
		#pragma HLS PIPELINE off
		#pragma HLS pipeline rewind
		#pragma HLS UNROLL factor=8
		ConvoluteX1:
		for (int j = 0; j < MatSize; j++)
		{
			#pragma HLS PIPELINE off
			#pragma HLS pipeline rewind
			#pragma HLS UNROLL factor=8
			Out[i*MatSize + j] = ApplyFilterDim3X(In, i, j, MatSize);
		}
	}
}

void ConvoluteY(UINT8* In, size_t MatSize,
				UINT8* Out)
{
	UINT8 Val = 0;
	ConvoluteY:
	for (int i = 0; i < MatSize; i++)
	{
		#pragma HLS PIPELINE off
		#pragma HLS pipeline rewind
		#pragma HLS UNROLL factor=8

		ConvoluteY1:
		for (int j = 0; j < MatSize; j++)
		{
			#pragma HLS pipeline rewind
			#pragma HLS UNROLL factor=8
			Out[i*MatSize + j] = In[i*MatSize + j] + 5 ;//ApplyFilterDim3Y(In, i, j, MatSize);
		}
	}
}


void Magnitude(	UINT8* In1, UINT8* In2, unsigned int Size,
				UINT8* Out)
{
	UINT8 Val = 0;
	Magnitude:
	for (int i = 0; i < Size; i++)
	{
		Out[i] = In1[i] + In2[i]; //sqrt(pow(In1[i], 2) + pow(In2[i], 2));
	}
}

