#include "cuda.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void helloWorld() {
	printf("hello world from thread %d and block %d - In total there are %d Threads and %d blocks\n",threadIdx.x,blockIdx.x, blockDim.x, gridDim.x);
}

//int main() {
//	//helloWorld <<<2, 1024>>>();
//	dim3 blocks(2, 1, 1); //grid size and dimensions, it consists of blocks 
//	dim3 threads(6, 1, 1); //block size and dimensions, it consists of threads
//	helloWorld << <blocks, threads >> > ();
//
//	cudaError_t error = cudaGetLastError(); //get the status of the last cuda function that was called
//	if (error != cudaSuccess) //if the hello() function did not run appropriately 
//		printf("\nError %s\n", cudaGetErrorString(error)); //use this function to show the description of the error
//
//	cudaDeviceReset();
//
//	return 0;
//}