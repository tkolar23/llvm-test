	.text
	.file	"sub.c"
	.globl	sub                             # -- Begin function sub
	.type	sub,@function
sub:                                    # @sub
# %bb.0:                                # %entry
	add	x1, x0, x1                      # <MCInst #247 ADDrr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>>
	add	x1, x1, x1                      # <MCInst #247 ADDrr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>>
	add	x0, x1, 4800                    # <MCInst #246 ADDrl
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Imm:4800>>
	FCD	1172812402960, 1809             # <MCInst #251 FCD
                                        #  <MCOperand Imm:1172812402960>
                                        #  <MCOperand Imm:1809>>
.Lfunc_end0:
	.size	sub, .Lfunc_end0-sub
                                        # -- End function
	.ident	"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"
	.section	".note.GNU-stack","",@progbits
