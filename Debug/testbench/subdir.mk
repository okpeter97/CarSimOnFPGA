################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../main.cpp 

OBJS += \
./testbench/main.o 

CPP_DEPS += \
./testbench/main.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/main.o: D:/Dev/Repos/CarSimOnFPGA/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/Apps/Xilinx/Vivado/2019.1/include -ID:/Apps/Xilinx/Vivado/2019.1/include/etc -ID:/Apps/Xilinx/Vivado/2019.1/include/ap_sysc -ID:/Dev/Repos -ID:/Apps/Xilinx/Vivado/2019.1/win64/tools/auto_cc/include -ID:/Apps/Xilinx/Vivado/2019.1/win64/tools/systemc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


