.set noreorder
.set noat
.globl __start  
.section text

# 寄存器建议使用 $t0 - $t7
# 循环展开

__start:
.text

    # 假设要计算的数，存储在了 地址0x8040_0000
    lui $t7,0x8040
    lw $t0,0($t7)     # t0 = number
    ori $t2,$zero,0x0 # t2 = 0

    ori $t6,$zero,32  # t6 = 32 循环32次
    ori $t7,$zero,0   # t7 = 0
loop:
    ori  $t1,$t0,0x0     # t1 = t0
    andi $t1,$t1,0x1    # t1 &= 0x1
    addu $t2,$t2,$t1    # t2 += t1
    srl  $t0,$t0,0x1    # t0 >>= 0x1

    # 错误！！！addu $t7,$t7,0x1    # t7 += 1
    addiu $t7,$t7,0x1    # t7 += 1
    bne  $t6,$t7,loop
    nop # !! 任何跳转之后后面都要有延迟槽！！！！！！！！

# #########################################
# 下面的不要动
end:
    jr    $ra
    ori   $zero, $zero, 0 # nop

# .text
#     ori $t0, $zero, 0x1   # t0 = 1
#     ori $t1, $zero, 0x1   # t1 = 1
#     xor $v0, $v0,   $v0   # v0 = 0
#     ori $v1, $zero, 8     # v1 = 8
#     lui $a0, 0x8040       # a0 = 0x80400000
# 
# loop:
#     addu  $t2, $t0, $t1   # t2 = t0+t1
#     ori   $t0, $t1, 0x0   # t0 = t1
#     ori   $t1, $t2, 0x0   # t1 = t2
#     sw    $t1, 0($a0)
#     addiu $a0, $a0, 4     # a0 += 4
#     addiu $v0, $v0, 1     # v0 += 1
# 
#     bne   $v0, $v1, loop
#     ori   $zero, $zero, 0 # nop