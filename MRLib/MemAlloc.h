/* MapDSW is a MapReduce Framework which was aimed to fully develop the potential
 * of GPU. It is for an undergraduate graduation thesis at CS/SJTU
 *
 * MemAlloc.h
 *
 *  Created on: 2013-4-15
 *      Author: Shiwei Dong
 */

#ifndef MEMALLOC_H_
#define MEMALLOC_H_

#include "Common.h"

class SMCache;

//the global data in the device memory
global_data_t* global_data_d;

//the offset
unsigned int* input_offset_d;
unsigned int* input_size_d;



/**
 * part1: Reserved for
 */
class MemAlloc{
public:
	//Interface
	__device__ void init();
	__device__ void Start_MA_kernal();
	__device__ void Merge_SMCache(SMCache*);

private:
	 char memoryPool[NUM_BUCKETS];
	 unsigned int buckets_remain;
	 unsigned int offset;

private:
    __device__ char* Mem_Alloc_Global();



};


#endif /* MEMALLOC_H_ */
