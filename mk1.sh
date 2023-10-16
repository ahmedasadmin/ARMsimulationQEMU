#!/bin/sh

arm-none-eabi-as -o ts.o ts.s
arm-none-eabi-ld -T t.ld -o t.elf ts.o
arm-none-eabi-nm t.elf
arm-none-eabi-objcopy -O binary t.elf t.bin
qemu-system-arm -M versatilepb -kernel t.bin -nographic -serial /dev/null
