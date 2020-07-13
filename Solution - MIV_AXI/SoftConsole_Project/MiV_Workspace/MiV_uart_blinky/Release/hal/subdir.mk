################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/hal_irq.c 

S_UPPER_SRCS += \
../hal/hw_reg_access.S 

OBJS += \
./hal/hal_irq.o \
./hal/hw_reg_access.o 

S_UPPER_DEPS += \
./hal/hw_reg_access.d 

C_DEPS += \
./hal/hal_irq.d 


# Each subdirectory must supply rules for building sources it contributes
hal/%.o: ../hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreGPIO" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreSPI" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreUARTapb" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\hal" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\riscv_hal" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal/%.o: ../hal/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


