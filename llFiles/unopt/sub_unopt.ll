; ModuleID = './cFiles/sub.c'
source_filename = "./cFiles/sub.c"
target datalayout = "e-S64-p:64:64-i64:64-m:e-n64"
target triple = "thru"

; Function Attrs: nounwind
define dso_local i32 @sub(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ans = alloca i32, align 4
  %new = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !3
  store i32 %y, i32* %y.addr, align 4, !tbaa !3
  %0 = bitcast i32* %ans to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 100, i32* %ans, align 4, !tbaa !3
  %1 = load i32, i32* %ans, align 4, !tbaa !3
  %2 = load i32, i32* %x.addr, align 4, !tbaa !3
  %sub = sub i32 %1, %2
  %3 = load i32, i32* %y.addr, align 4, !tbaa !3
  %sub1 = sub i32 %sub, %3
  store i32 %sub1, i32* %ans, align 4, !tbaa !3
  %4 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load i32, i32* %ans, align 4, !tbaa !3
  %sub2 = sub i32 5000, %5
  store i32 %sub2, i32* %new, align 4, !tbaa !3
  %6 = load i32, i32* %new, align 4, !tbaa !3
  %7 = load i32, i32* %ans, align 4, !tbaa !3
  %sub3 = sub i32 %6, %7
  store i32 %sub3, i32* %ans, align 4, !tbaa !3
  %8 = load i32, i32* %ans, align 4, !tbaa !3
  %9 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %ans to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #2
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 14.0.0 (https://github.com/tkolar23/llvm-clang.git 594602390d1b7d1610c6f5043b6a48e2728456b6)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
