	.text
	.file	"return_int.c"
	.globl	return_int                      # -- Begin function return_int
	.type	return_int,@function
return_int:                             # @return_int
# %bb.0:                                # %bb
	FCD	0, 1809                         # <MCInst #249 FCD
                                        #  <MCOperand Imm:0>
                                        #  <MCOperand Imm:1809>>
.Lfunc_end0:
	.size	return_int, .Lfunc_end0-return_int
                                        # -- End function
	.ident	"clang version 14.0.0"
	.section	".note.GNU-stack","",@progbits
