################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include riscv_hal/subdir.mk
-include hal/subdir.mk
-include drivers/CoreUARTapb/subdir.mk
-include drivers/CoreSPI/subdir.mk
-include drivers/CoreGPIO/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
MiV_uart_blinky.hex \

SECONDARY_SIZE += \
MiV_uart_blinky.siz \


# All Target
all: MiV_uart_blinky.elf secondary-outputs

# Tool invocations
MiV_uart_blinky.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -T "E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\riscv_hal\microsemi-riscv-ram.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"MiV_uart_blinky.map" -o "MiV_uart_blinky.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

MiV_uart_blinky.hex: MiV_uart_blinky.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv64-unknown-elf-objcopy -O ihex --change-section-lma *-0x80000000 "MiV_uart_blinky.elf"  "MiV_uart_blinky.hex"
	@echo 'Finished building: $@'
	@echo ' '

MiV_uart_blinky.siz: MiV_uart_blinky.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv64-unknown-elf-size --format=berkeley "MiV_uart_blinky.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) MiV_uart_blinky.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
