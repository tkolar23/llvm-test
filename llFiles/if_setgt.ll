; ModuleID = './llFiles/unopt/if_setgt_unopt.ll'
source_filename = "./cFiles/if_setgt.c"
target datalayout = "e-S64-p:64:64-i64:64-m:e-n64"
target triple = "thru"

; Function Attrs: nounwind
define dso_local i32 @if_setgt(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %cmp = icmp sgt i32 %x, %y
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"}
