; ModuleID = './llFiles/unopt/average_three_unopt.ll'
source_filename = "./cFiles/average_three.c"
target datalayout = "e-S64-p:64:64-i64:64-m:e-n64"
target triple = "thru"

; Function Attrs: nounwind
define dso_local i32 @average_three(i32 noundef %x, i32 noundef %y, i32 noundef %z) #0 {
entry:
  %add = add nsw i32 %x, %y
  %add1 = add nsw i32 %add, %z
  %div = sdiv i32 %add1, 3
  ret i32 %div
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"}
