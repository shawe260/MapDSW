################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../MRLib/Common.cu \
../MRLib/Intermediate.cu \
../MRLib/MemAlloc.cu \
../MRLib/SMCahce.cu \
../MRLib/TaskScheduler.cu 

CU_DEPS += \
./MRLib/Common.d \
./MRLib/Intermediate.d \
./MRLib/MemAlloc.d \
./MRLib/SMCahce.d \
./MRLib/TaskScheduler.d 

OBJS += \
./MRLib/Common.o \
./MRLib/Intermediate.o \
./MRLib/MemAlloc.o \
./MRLib/SMCahce.o \
./MRLib/TaskScheduler.o 


# Each subdirectory must supply rules for building sources it contributes
MRLib/%.o: ../MRLib/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	nvcc -I/usr/local/cuda-5.0/include -G -g -lineinfo -pg -O0 -gencode arch=compute_20,code=sm_21 -odir "MRLib" -M -o "$(@:%.o=%.d)" "$<"
	nvcc --device-c -G -I/usr/local/cuda-5.0/include -O0 -g -gencode arch=compute_20,code=sm_21 -lineinfo -pg  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


