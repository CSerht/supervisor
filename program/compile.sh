#!/bin/bash

mips-mti-elf-gcc -EL -mips32r2 -nostdlib -Ttext 0x00000000 program.S -o program.elf

mips-mti-elf-objcopy -j .text -O binary program.elf program.bin

mips-mti-elf-objdump -D program.elf > disas.S
