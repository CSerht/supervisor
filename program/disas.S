
program.elf:     file format elf32-tradlittlemips


Disassembly of section .text:

00000000 <__start>:
   0:	34080001 	li	t0,0x1
   4:	34090001 	li	t1,0x1
   8:	34110004 	li	s1,0x4
   c:	340c0100 	li	t4,0x100
  10:	3c048040 	lui	a0,0x8040
  14:	008c6821 	addu	t5,a0,t4

00000018 <loop>:
  18:	01095021 	addu	t2,t0,t1
  1c:	35280000 	ori	t0,t1,0x0
  20:	35490000 	ori	t1,t2,0x0
  24:	ac890000 	sw	t1,0(a0)
  28:	8c8b0000 	lw	t3,0(a0)
  2c:	152b0004 	bne	t1,t3,40 <end>
  30:	34000000 	li	zero,0x0
  34:	00912021 	addu	a0,a0,s1
  38:	148dfff7 	bne	a0,t5,18 <loop>
  3c:	34000000 	li	zero,0x0

00000040 <end>:
  40:	03e00008 	jr	ra
  44:	00000000 	nop

Disassembly of section .MIPS.abiflags:

00400098 <_gp+0x3e8058>:
  400098:	02200000 	0x2200000
  40009c:	05000101 	bltz	t0,4004a4 <_gp+0x3e8464>
  4000a0:	00000000 	nop
	...

Disassembly of section .reginfo:

004000b0 <.reginfo>:
  4000b0:	80023f10 	lb	v0,16144(zero)
	...
  4000c4:	00018040 	sll	s0,at,0x1

Disassembly of section .gnu.attributes:

00000000 <_fdata-0x10048>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <_gp+0x5b81bc0>
   8:	00070100 	sll	zero,a3,0x4
   c:	05040000 	0x5040000
