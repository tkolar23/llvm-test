; ModuleID = './llFiles/unopt/return_int_unopt.ll'
source_filename = "./cFiles/return_int.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "thru"

; Function Attrs: nounwind
define dso_local i32 @return_int(i32 noundef %arg) #0 {
bb:
  ret i32 %arg
}

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 14.0.0"}
