	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0"
	.file	"sum.c"
	.globl	sum                             # -- Begin function sum
	.p2align	1
	.type	sum,@function
sum:                                    # @sum
# %bb.0:                                # %entry
	addw	a0, a0, a1                      # <MCInst #9437 C_ADDW
                                        #  <MCOperand Reg:50>
                                        #  <MCOperand Reg:50>
                                        #  <MCOperand Reg:51>>
	ret                                     # <MCInst #9455 C_JR
                                        #  <MCOperand Reg:41>>
.Lfunc_end0:
	.size	sum, .Lfunc_end0-sum
                                        # -- End function
	.ident	"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"
	.section	".note.GNU-stack","",@progbits
