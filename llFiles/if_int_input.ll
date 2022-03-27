; ModuleID = './llFiles/unopt/if_int_input_unopt.ll'
source_filename = "./cFiles/if_int_input.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "thru"

; Function Attrs: nounwind
define dso_local i32 @if_int_input(i32 noundef %arg) #0 {
bb:
  %i = icmp sgt i32 %arg, 10
  br i1 %i, label %bb1, label %bb2

bb1:                                              ; preds = %bb
  br label %bb3

bb2:                                              ; preds = %bb
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %.0 = phi i32 [ 1, %bb1 ], [ 0, %bb2 ]
  ret i32 %.0
}

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 14.0.0"}
