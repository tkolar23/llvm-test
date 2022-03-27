; ModuleID = './llFiles/unopt/sum_unopt.ll'
source_filename = "./cFiles/sum.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64"

; Function Attrs: nounwind
define dso_local signext i32 @sum(i32 noundef signext %x, i32 noundef signext %y) #0 {
entry:
  %add = add nsw i32 %x, %y
  ret i32 %add
}

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"}
