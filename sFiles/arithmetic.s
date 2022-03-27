	.text
	.file	"arithmetic.c"
	.globl	arithmetic                      # -- Begin function arithmetic
	.type	arithmetic,@function
arithmetic:                             # @arithmetic
# %bb.0:                                # %entry
	add	x1, x0, x1                      # <MCInst #247 ADDrr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>>
	sub	x1, x1, x2                      # <MCInst #271 SUBrr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:3>>
	mul	x0, x1, x0                      # <MCInst #254 MULrr
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:1>>
	FCD	1172812402960, 1809             # <MCInst #251 FCD
                                        #  <MCOperand Imm:1172812402960>
                                        #  <MCOperand Imm:1809>>
.Lfunc_end0:
	.size	arithmetic, .Lfunc_end0-arithmetic
                                        # -- End function
	.ident	"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"
	.section	".note.GNU-stack","",@progbits
