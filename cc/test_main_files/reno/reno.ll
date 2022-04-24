; ModuleID = '/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno/b-ElVTuR.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tcp_congestion_ops = type { i32, i32, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*, i32, i32)*, void (%struct.sock*, i8)*, void (%struct.sock*, i32)*, void (%struct.sock*, i32)*, i32 (%struct.sock*)*, void (%struct.sock*, %struct.ack_sample*)*, i32 (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*, %struct.rate_sample*)*, i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)*, [16 x i8], %struct.module* }
%struct.sock = type { %struct.sock_common, i32, i32 }
%struct.sock_common = type { i8, %struct.possible_net_t, i64 }
%struct.possible_net_t = type { %struct.net* }
%struct.net = type { %struct.netns_ipv4 }
%struct.netns_ipv4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }
%struct.rate_sample = type { %struct.skb_mstamp, i32, i32, i64, i64, i32, i32, i32, i8, i8 }
%struct.skb_mstamp = type { %union.anon }
%union.anon = type { i64 }
%union.tcp_cc_info = type { %struct.tcp_bbr_info }
%struct.tcp_bbr_info = type { i32, i32, i32, i32, i32 }
%struct.module = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i32, [3 x i32], i16, i8, i8, i32, %struct.skb_mstamp, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.skb_mstamp, %struct.skb_mstamp, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff*, %struct.sk_buff*, %struct.rb_root, %struct.sk_buff*, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, %struct.anon.5, %struct.tcp_sack_block, i32, %struct.tcp_fastopen_request*, %struct.request_sock*, i32* }
%struct.inet_connection_sock = type { %struct.inet_sock, i32, i32, %struct.tcp_congestion_ops*, i32 (%struct.sock*, i32)*, i8, i8, i8, i8, i8, i8, i16, %struct.anon.0, %struct.tcp_bbr_info, i32, [11 x i64] }
%struct.inet_sock = type { %struct.sock }
%struct.anon.0 = type { i8, i8, i8, i8, i32, i64, i32, i16, i16 }
%struct.tcp_rack = type { %struct.skb_mstamp, i32, i32, i8, i8 }
%struct.minmax = type {}
%struct.tcp_options_received = type { i64, i32, i32, i32, i16, i8, i16, i16 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sk_buff = type { %union.anon.2, %struct.sock*, %union.anon, [48 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.anon.5 = type { i32, i32, %struct.skb_mstamp }
%struct.tcp_sack_block = type { i32, i32 }
%struct.tcp_fastopen_request = type opaque
%struct.request_sock = type opaque

@jiffies = internal global i64 100, align 8, !dbg !0
@tcp_reno = internal global %struct.tcp_congestion_ops { i32 0, i32 1, void (%struct.sock*)* null, void (%struct.sock*)* null, i32 (%struct.sock*)* @tcp_reno_ssthresh, void (%struct.sock*, i32, i32)* @tcp_reno_cong_avoid, void (%struct.sock*, i8)* null, void (%struct.sock*, i32)* null, void (%struct.sock*, i32)* null, i32 (%struct.sock*)* @tcp_reno_undo_cwnd, void (%struct.sock*, %struct.ack_sample*)* null, i32 (%struct.sock*)* null, i32 (%struct.sock*)* null, void (%struct.sock*, %struct.rate_sample*)* null, i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* null, [16 x i8] c"reno\00\00\00\00\00\00\00\00\00\00\00\00", %struct.module* null }, align 8, !dbg !651
@.str.2 = private unnamed_addr constant [83 x i8] c"[Func: tcp_reno_cong_avoid] ack:%u, acked:%u, snd_cwnd_cnt:%u, max_packets_out:%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Dangerous area\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"[Func: tcp_cong_avoid_ai] w:%u, acked:%u, snd_cwnd_cnt:%u\0A\00", align 1
@.str = private unnamed_addr constant [74 x i8] c"[Func: tcp_slow_start] cwnd:%u, acked:%u, snd_cwnd:%u, snd_cwnd_clamp:%u\0A\00", align 1
@sysctl_tcp_wmem = internal global [3 x i32] zeroinitializer, align 4, !dbg !691
@sysctl_tcp_rmem = internal global [3 x i32] zeroinitializer, align 4, !dbg !694
@sysctl_tcp_timestamps = internal global i32 1, align 4, !dbg !654
@sysctl_tcp_window_scaling = internal global i32 1, align 4, !dbg !657
@sysctl_tcp_sack = internal global i32 1, align 4, !dbg !659
@sysctl_tcp_max_reordering = internal global i32 300, align 4, !dbg !661
@sysctl_tcp_dsack = internal global i32 1, align 4, !dbg !663
@sysctl_tcp_app_win = internal global i32 31, align 4, !dbg !665
@sysctl_tcp_adv_win_scale = internal global i32 1, align 4, !dbg !667
@sysctl_tcp_challenge_ack_limit = internal global i32 1000, align 4, !dbg !669
@sysctl_tcp_max_orphans = internal global i32 8192, align 4, !dbg !671
@sysctl_tcp_frto = internal global i32 2, align 4, !dbg !673
@sysctl_tcp_min_rtt_wlen = internal global i32 300, align 4, !dbg !675
@sysctl_tcp_moderate_rcvbuf = internal global i32 1, align 4, !dbg !677
@sysctl_tcp_early_retrans = internal global i32 3, align 4, !dbg !679
@sysctl_tcp_invalid_ratelimit = internal global i32 500, align 4, !dbg !681
@sysctl_tcp_pacing_ss_ratio = internal global i32 200, align 4, !dbg !683
@sysctl_tcp_pacing_ca_ratio = internal global i32 120, align 4, !dbg !685
@sysctl_tcp_mem = internal global [3 x i64] zeroinitializer, align 16, !dbg !687
@sysctl_tcp_fack = internal global i32 0, align 4, !dbg !696
@sysctl_tcp_stdurg = internal global i32 0, align 4, !dbg !698
@sysctl_tcp_rfc1337 = internal global i32 0, align 4, !dbg !700
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"file:%s : func:%s, the stub function is called !\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"../../stub_model/source/simple_tcp_input.c\00", align 1
@__func__.tcp_skb_mark_lost_uncond_verify = private unnamed_addr constant [32 x i8] c"tcp_skb_mark_lost_uncond_verify\00", align 1
@__func__.tcp_enter_loss = private unnamed_addr constant [15 x i8] c"tcp_enter_loss\00", align 1
@__func__.tcp_ecn_queue_cwr = private unnamed_addr constant [18 x i8] c"tcp_ecn_queue_cwr\00", align 1
@__func__.tcp_simple_retransmit = private unnamed_addr constant [22 x i8] c"tcp_simple_retransmit\00", align 1
@__func__.tcp_reset = private unnamed_addr constant [10 x i8] c"tcp_reset\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"[Before initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"[After initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Congestion avoidance\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Cwnd reduction\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Undo\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"tp->snd_cwnd:%u\0A\00", align 1
@.str.4.1 = private unnamed_addr constant [13 x i8] c"assume true;\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"assume @ != $0;\00", align 1
@.str.1.15 = private unnamed_addr constant [16 x i8] c"assert @ != $0;\00", align 1
@.str.2.16 = private unnamed_addr constant [14 x i8] c"assert false;\00", align 1
@.str.3.17 = private unnamed_addr constant [28 x i8] c"assert {:overflow} @ == $0;\00", align 1
@.str.5.20 = private unnamed_addr constant [11 x i8] c"type $mop;\00", align 1
@.str.6.21 = private unnamed_addr constant [41 x i8] c"procedure boogie_si_record_mop(m: $mop);\00", align 1
@.str.7.22 = private unnamed_addr constant [18 x i8] c"const $MOP: $mop;\00", align 1
@.str.8.23 = private unnamed_addr constant [16 x i8] c"var $exn: bool;\00", align 1
@.str.9.24 = private unnamed_addr constant [16 x i8] c"var $exnv: int;\00", align 1
@.str.10.25 = private unnamed_addr constant [71 x i8] c"procedure $alloc(n: ref) returns (p: ref)\0A{\0A  call p := $$alloc(n);\0A}\0A\00", align 1
@.str.11.26 = private unnamed_addr constant [72 x i8] c"procedure $malloc(n: ref) returns (p: ref)\0A{\0A  call p := $$alloc(n);\0A}\0A\00", align 1
@.str.12.27 = private unnamed_addr constant [20 x i8] c"var $CurrAddr:ref;\0A\00", align 1
@.str.13 = private unnamed_addr constant [361 x i8] c"procedure {:inline 1} $$alloc(n: ref) returns (p: ref)\0Amodifies $CurrAddr;\0A{\0A  assume $sge.ref.bool(n, $0.ref);\0A  if ($sgt.ref.bool(n, $0.ref)) {\0A    p := $CurrAddr;\0A    havoc $CurrAddr;\0A    assume $sge.ref.bool($sub.ref($CurrAddr, n), p);\0A    assume $sgt.ref.bool($CurrAddr, $0.ref) && $slt.ref.bool($CurrAddr, $MALLOC_TOP);\0A  } else {\0A    p := $0.ref;\0A  }\0A}\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"procedure $free(p: ref);\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"$CurrAddr := $1024.ref;\00", align 1
@env_value_str = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.28, i32 0, i32 0), align 8, !dbg !703
@.str.1.28 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"assume false;\00", align 1
@errno_global = internal global i32 0, align 4, !dbg !711

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_reno_ssthresh(%struct.sock*) #0 !dbg !724 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  %3 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !726, metadata !DIExpression()), !dbg !727, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %3, metadata !728, metadata !DIExpression()), !dbg !731, !verifier.code !725
  %4 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !732, !verifier.code !725
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4), !dbg !733, !verifier.code !725
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8, !dbg !731, !verifier.code !725
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !734, !verifier.code !725
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 52, !dbg !734, !verifier.code !725
  %8 = load i32, i32* %7, align 4, !dbg !734, !verifier.code !725
  %9 = lshr i32 %8, 1, !dbg !734, !verifier.code !725
  %10 = call i32 @max_func(i32 %9, i32 2), !dbg !734, !verifier.code !725
  ret i32 %10, !dbg !735, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reno_cong_avoid(%struct.sock*, i32, i32) #0 !dbg !736 {
  %4 = alloca %struct.sock*, align 8, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  %6 = alloca i32, align 4, !verifier.code !725
  %7 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %4, metadata !737, metadata !DIExpression()), !dbg !738, !verifier.code !725
  store i32 %1, i32* %5, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !739, metadata !DIExpression()), !dbg !740, !verifier.code !725
  store i32 %2, i32* %6, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %6, metadata !741, metadata !DIExpression()), !dbg !742, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %7, metadata !743, metadata !DIExpression()), !dbg !744, !verifier.code !725
  %8 = load %struct.sock*, %struct.sock** %4, align 8, !dbg !745, !verifier.code !725
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8), !dbg !746, !verifier.code !725
  store %struct.tcp_sock* %9, %struct.tcp_sock** %7, align 8, !dbg !744, !verifier.code !725
  %10 = load i32, i32* %5, align 4, !dbg !747, !verifier.code !725
  %11 = load i32, i32* %6, align 4, !dbg !748, !verifier.code !725
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !749, !verifier.code !725
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 53, !dbg !750, !verifier.code !725
  %14 = load i32, i32* %13, align 8, !dbg !750, !verifier.code !725
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !751, !verifier.code !725
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 43, !dbg !752, !verifier.code !725
  %17 = load i32, i32* %16, align 4, !dbg !752, !verifier.code !725
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i32 0), i32 %10, i32 %11, i32 %14, i32 %17), !dbg !753, !verifier.code !725
  %19 = load %struct.sock*, %struct.sock** %4, align 8, !dbg !754, !verifier.code !725
  %20 = call zeroext i1 @tcp_is_cwnd_limited(%struct.sock* %19), !dbg !756, !verifier.code !725
  br i1 %20, label %22, label %21, !dbg !757, !verifier.code !725

; <label>:21:                                     ; preds = %3
  br label %40, !dbg !758, !verifier.code !725

; <label>:22:                                     ; preds = %3
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !759, !verifier.code !725
  %24 = call zeroext i1 @tcp_in_slow_start(%struct.tcp_sock* %23), !dbg !761, !verifier.code !725
  br i1 %24, label %25, label %33, !dbg !762, !verifier.code !725

; <label>:25:                                     ; preds = %22
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !763, !verifier.code !725
  %27 = load i32, i32* %6, align 4, !dbg !765, !verifier.code !725
  %28 = call i32 @tcp_slow_start(%struct.tcp_sock* %26, i32 %27), !dbg !766, !verifier.code !725
  store i32 %28, i32* %6, align 4, !dbg !767, !verifier.code !725
  %29 = load i32, i32* %6, align 4, !dbg !768, !verifier.code !725
  %30 = icmp ne i32 %29, 0, !dbg !768, !verifier.code !725
  br i1 %30, label %32, label %31, !dbg !770, !verifier.code !725

; <label>:31:                                     ; preds = %25
  br label %40, !dbg !771, !verifier.code !725

; <label>:32:                                     ; preds = %25
  br label %33, !dbg !772, !verifier.code !725

; <label>:33:                                     ; preds = %32, %22
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !773, !verifier.code !725
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !774, !verifier.code !725
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8, !dbg !775, !verifier.code !725
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 52, !dbg !776, !verifier.code !725
  %38 = load i32, i32* %37, align 4, !dbg !776, !verifier.code !725
  %39 = load i32, i32* %6, align 4, !dbg !777, !verifier.code !725
  call void @tcp_cong_avoid_ai(%struct.tcp_sock* %35, i32 %38, i32 %39), !dbg !778, !verifier.code !725
  br label %40, !dbg !779, !verifier.code !725

; <label>:40:                                     ; preds = %33, %31, %21
  ret void, !dbg !779, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_reno_undo_cwnd(%struct.sock*) #0 !dbg !780 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  %3 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !781, metadata !DIExpression()), !dbg !782, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %3, metadata !783, metadata !DIExpression()), !dbg !784, !verifier.code !725
  %4 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !785, !verifier.code !725
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4), !dbg !786, !verifier.code !725
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8, !dbg !784, !verifier.code !725
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !787, !verifier.code !725
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 52, !dbg !787, !verifier.code !725
  %8 = load i32, i32* %7, align 4, !dbg !787, !verifier.code !725
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !787, !verifier.code !725
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 51, !dbg !787, !verifier.code !725
  %11 = load i32, i32* %10, align 8, !dbg !787, !verifier.code !725
  %12 = shl i32 %11, 1, !dbg !787, !verifier.code !725
  %13 = call i32 @max_func(i32 %8, i32 %12), !dbg !787, !verifier.code !725
  ret i32 %13, !dbg !788, !verifier.code !725
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_sock* @tcp_sk(%struct.sock*) #0 !dbg !789 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !794, metadata !DIExpression()), !dbg !795, !verifier.code !725
  %3 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !796, !verifier.code !725
  %4 = bitcast %struct.sock* %3 to %struct.tcp_sock*, !dbg !797, !verifier.code !725
  ret %struct.tcp_sock* %4, !dbg !798, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_func(i32, i32) #0 !dbg !799 {
  %3 = alloca i32, align 4, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  store i32 %0, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !803, metadata !DIExpression()), !dbg !804, !verifier.code !725
  store i32 %1, i32* %5, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !805, metadata !DIExpression()), !dbg !806, !verifier.code !725
  %6 = load i32, i32* %4, align 4, !dbg !807, !verifier.code !725
  %7 = load i32, i32* %5, align 4, !dbg !809, !verifier.code !725
  %8 = icmp ugt i32 %6, %7, !dbg !810, !verifier.code !725
  br i1 %8, label %9, label %11, !dbg !811, !verifier.code !725

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !812, !verifier.code !725
  store i32 %10, i32* %3, align 4, !dbg !813, !verifier.code !725
  br label %13, !dbg !813, !verifier.code !725

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !814, !verifier.code !725
  store i32 %12, i32* %3, align 4, !dbg !815, !verifier.code !725
  br label %13, !dbg !815, !verifier.code !725

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %3, align 4, !dbg !816, !verifier.code !725
  ret i32 %14, !dbg !816, !verifier.code !725
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tcp_is_cwnd_limited(%struct.sock*) #0 !dbg !817 {
  %2 = alloca i1, align 1, !verifier.code !725
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !820, metadata !DIExpression()), !dbg !821, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %4, metadata !822, metadata !DIExpression()), !dbg !823, !verifier.code !725
  %5 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !824, !verifier.code !725
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5), !dbg !825, !verifier.code !725
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8, !dbg !823, !verifier.code !725
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !826, !verifier.code !725
  %8 = call zeroext i1 @tcp_in_slow_start(%struct.tcp_sock* %7), !dbg !828, !verifier.code !725
  br i1 %8, label %9, label %18, !dbg !829, !verifier.code !725

; <label>:9:                                      ; preds = %1
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !830, !verifier.code !725
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 52, !dbg !831, !verifier.code !725
  %12 = load i32, i32* %11, align 4, !dbg !831, !verifier.code !725
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !832, !verifier.code !725
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 43, !dbg !833, !verifier.code !725
  %15 = load i32, i32* %14, align 4, !dbg !833, !verifier.code !725
  %16 = mul i32 2, %15, !dbg !834, !verifier.code !725
  %17 = icmp ult i32 %12, %16, !dbg !835, !verifier.code !725
  store i1 %17, i1* %2, align 1, !dbg !836, !verifier.code !725
  br label %25, !dbg !836, !verifier.code !725

; <label>:18:                                     ; preds = %1
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !837, !verifier.code !725
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 32, !dbg !838, !verifier.code !725
  %21 = load i8, i8* %20, align 1, !dbg !838, !verifier.code !725
  %22 = lshr i8 %21, 6, !dbg !838, !verifier.code !725
  %23 = and i8 %22, 1, !dbg !838, !verifier.code !725
  %24 = icmp ne i8 %23, 0, !dbg !837, !verifier.code !725
  store i1 %24, i1* %2, align 1, !dbg !839, !verifier.code !725
  br label %25, !dbg !839, !verifier.code !725

; <label>:25:                                     ; preds = %18, %9
  %26 = load i1, i1* %2, align 1, !dbg !840, !verifier.code !725
  ret i1 %26, !dbg !840, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tcp_in_slow_start(%struct.tcp_sock*) #0 !dbg !841 {
  %2 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %2, metadata !844, metadata !DIExpression()), !dbg !845, !verifier.code !725
  %3 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8, !dbg !846, !verifier.code !725
  %4 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %3, i32 0, i32 52, !dbg !847, !verifier.code !725
  %5 = load i32, i32* %4, align 4, !dbg !847, !verifier.code !725
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8, !dbg !848, !verifier.code !725
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 51, !dbg !849, !verifier.code !725
  %8 = load i32, i32* %7, align 8, !dbg !849, !verifier.code !725
  %9 = icmp ult i32 %5, %8, !dbg !850, !verifier.code !725
  ret i1 %9, !dbg !851, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_slow_start(%struct.tcp_sock*, i32) #0 !dbg !852 {
  %3 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %3, metadata !855, metadata !DIExpression()), !dbg !856, !verifier.code !725
  store i32 %1, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !857, metadata !DIExpression()), !dbg !858, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !859, metadata !DIExpression()), !dbg !860, !verifier.code !725
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !861, !verifier.code !725
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 52, !dbg !861, !verifier.code !725
  %8 = load i32, i32* %7, align 4, !dbg !861, !verifier.code !725
  %9 = load i32, i32* %4, align 4, !dbg !861, !verifier.code !725
  %10 = add i32 %8, %9, !dbg !861, !verifier.code !725
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !861, !verifier.code !725
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 51, !dbg !861, !verifier.code !725
  %13 = load i32, i32* %12, align 8, !dbg !861, !verifier.code !725
  %14 = call i32 @min_func(i32 %10, i32 %13), !dbg !861, !verifier.code !725
  store i32 %14, i32* %5, align 4, !dbg !860, !verifier.code !725
  %15 = load i32, i32* %5, align 4, !dbg !862, !verifier.code !725
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !863, !verifier.code !725
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 52, !dbg !864, !verifier.code !725
  %18 = load i32, i32* %17, align 4, !dbg !864, !verifier.code !725
  %19 = sub i32 %15, %18, !dbg !865, !verifier.code !725
  %20 = load i32, i32* %4, align 4, !dbg !866, !verifier.code !725
  %21 = sub i32 %20, %19, !dbg !866, !verifier.code !725
  store i32 %21, i32* %4, align 4, !dbg !866, !verifier.code !725
  %22 = load i32, i32* %5, align 4, !dbg !867, !verifier.code !725
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !867, !verifier.code !725
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 54, !dbg !867, !verifier.code !725
  %25 = load i32, i32* %24, align 4, !dbg !867, !verifier.code !725
  %26 = call i32 @min_func(i32 %22, i32 %25), !dbg !867, !verifier.code !725
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !868, !verifier.code !725
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 52, !dbg !869, !verifier.code !725
  store i32 %26, i32* %28, align 4, !dbg !870, !verifier.code !725
  %29 = load i32, i32* %5, align 4, !dbg !871, !verifier.code !725
  %30 = load i32, i32* %4, align 4, !dbg !872, !verifier.code !725
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !873, !verifier.code !725
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 52, !dbg !874, !verifier.code !725
  %33 = load i32, i32* %32, align 4, !dbg !874, !verifier.code !725
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !875, !verifier.code !725
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 54, !dbg !876, !verifier.code !725
  %36 = load i32, i32* %35, align 4, !dbg !876, !verifier.code !725
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i32 0), i32 %29, i32 %30, i32 %33, i32 %36), !dbg !877, !verifier.code !725
  %38 = load i32, i32* %4, align 4, !dbg !878, !verifier.code !725
  ret i32 %38, !dbg !879, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #0 !dbg !880 {
  %4 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  %6 = alloca i32, align 4, !verifier.code !725
  %7 = alloca i32, align 4, !verifier.code !725
  store %struct.tcp_sock* %0, %struct.tcp_sock** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %4, metadata !883, metadata !DIExpression()), !dbg !884, !verifier.code !725
  store i32 %1, i32* %5, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !885, metadata !DIExpression()), !dbg !886, !verifier.code !725
  store i32 %2, i32* %6, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %6, metadata !887, metadata !DIExpression()), !dbg !888, !verifier.code !725
  %8 = load i32, i32* %5, align 4, !dbg !889, !verifier.code !725
  %9 = load i32, i32* %6, align 4, !dbg !890, !verifier.code !725
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !891, !verifier.code !725
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 53, !dbg !892, !verifier.code !725
  %12 = load i32, i32* %11, align 8, !dbg !892, !verifier.code !725
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i32 %8, i32 %9, i32 %12), !dbg !893, !verifier.code !725
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !894, !verifier.code !725
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 53, !dbg !896, !verifier.code !725
  %16 = load i32, i32* %15, align 8, !dbg !896, !verifier.code !725
  %17 = load i32, i32* %5, align 4, !dbg !897, !verifier.code !725
  %18 = icmp uge i32 %16, %17, !dbg !898, !verifier.code !725
  br i1 %18, label %19, label %26, !dbg !899, !verifier.code !725

; <label>:19:                                     ; preds = %3
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !900, !verifier.code !725
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 53, !dbg !902, !verifier.code !725
  store i32 0, i32* %21, align 8, !dbg !903, !verifier.code !725
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !904, !verifier.code !725
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 52, !dbg !905, !verifier.code !725
  %24 = load i32, i32* %23, align 4, !dbg !906, !verifier.code !725
  %25 = add i32 %24, 1, !dbg !906, !verifier.code !725
  store i32 %25, i32* %23, align 4, !dbg !906, !verifier.code !725
  br label %26, !dbg !907, !verifier.code !725

; <label>:26:                                     ; preds = %19, %3
  %27 = load i32, i32* %6, align 4, !dbg !908, !verifier.code !725
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !909, !verifier.code !725
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 53, !dbg !910, !verifier.code !725
  %30 = load i32, i32* %29, align 8, !dbg !911, !verifier.code !725
  %31 = add i32 %30, %27, !dbg !911, !verifier.code !725
  store i32 %31, i32* %29, align 8, !dbg !911, !verifier.code !725
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !912, !verifier.code !725
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 53, !dbg !914, !verifier.code !725
  %34 = load i32, i32* %33, align 8, !dbg !914, !verifier.code !725
  %35 = load i32, i32* %5, align 4, !dbg !915, !verifier.code !725
  %36 = icmp uge i32 %34, %35, !dbg !916, !verifier.code !725
  br i1 %36, label %37, label %55, !dbg !917, !verifier.code !725

; <label>:37:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %7, metadata !918, metadata !DIExpression()), !dbg !920, !verifier.code !725
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !921, !verifier.code !725
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 53, !dbg !922, !verifier.code !725
  %40 = load i32, i32* %39, align 8, !dbg !922, !verifier.code !725
  %41 = load i32, i32* %5, align 4, !dbg !923, !verifier.code !725
  %42 = udiv i32 %40, %41, !dbg !924, !verifier.code !725
  store i32 %42, i32* %7, align 4, !dbg !920, !verifier.code !725
  %43 = load i32, i32* %7, align 4, !dbg !925, !verifier.code !725
  %44 = load i32, i32* %5, align 4, !dbg !926, !verifier.code !725
  %45 = mul i32 %43, %44, !dbg !927, !verifier.code !725
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !928, !verifier.code !725
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 53, !dbg !929, !verifier.code !725
  %48 = load i32, i32* %47, align 8, !dbg !930, !verifier.code !725
  %49 = sub i32 %48, %45, !dbg !930, !verifier.code !725
  store i32 %49, i32* %47, align 8, !dbg !930, !verifier.code !725
  %50 = load i32, i32* %7, align 4, !dbg !931, !verifier.code !725
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !932, !verifier.code !725
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 52, !dbg !933, !verifier.code !725
  %53 = load i32, i32* %52, align 4, !dbg !934, !verifier.code !725
  %54 = add i32 %53, %50, !dbg !934, !verifier.code !725
  store i32 %54, i32* %52, align 4, !dbg !934, !verifier.code !725
  br label %55, !dbg !935, !verifier.code !725

; <label>:55:                                     ; preds = %37, %26
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !936, !verifier.code !725
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 52, !dbg !936, !verifier.code !725
  %58 = load i32, i32* %57, align 4, !dbg !936, !verifier.code !725
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !936, !verifier.code !725
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 54, !dbg !936, !verifier.code !725
  %61 = load i32, i32* %60, align 4, !dbg !936, !verifier.code !725
  %62 = call i32 @min_func(i32 %58, i32 %61), !dbg !936, !verifier.code !725
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !937, !verifier.code !725
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 52, !dbg !938, !verifier.code !725
  store i32 %62, i32* %64, align 4, !dbg !939, !verifier.code !725
  ret void, !dbg !940, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_func(i32, i32) #0 !dbg !941 {
  %3 = alloca i32, align 4, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  store i32 %0, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !942, metadata !DIExpression()), !dbg !943, !verifier.code !725
  store i32 %1, i32* %5, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !944, metadata !DIExpression()), !dbg !945, !verifier.code !725
  %6 = load i32, i32* %4, align 4, !dbg !946, !verifier.code !725
  %7 = load i32, i32* %5, align 4, !dbg !948, !verifier.code !725
  %8 = icmp ult i32 %6, %7, !dbg !949, !verifier.code !725
  br i1 %8, label %9, label %11, !dbg !950, !verifier.code !725

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !951, !verifier.code !725
  store i32 %10, i32* %3, align 4, !dbg !952, !verifier.code !725
  br label %13, !dbg !952, !verifier.code !725

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !953, !verifier.code !725
  store i32 %12, i32* %3, align 4, !dbg !954, !verifier.code !725
  br label %13, !dbg !954, !verifier.code !725

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %3, align 4, !dbg !955, !verifier.code !725
  ret i32 %14, !dbg !955, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_assign_congestion_control(%struct.sock*) #0 !dbg !956 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !957, metadata !DIExpression()), !dbg !958, !verifier.code !725
  ret void, !dbg !959, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_congestion_control(%struct.sock*) #0 !dbg !960 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  %3 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !961, metadata !DIExpression()), !dbg !962, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %3, metadata !963, metadata !DIExpression()), !dbg !966, !verifier.code !725
  %4 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !967, !verifier.code !725
  %5 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %4), !dbg !968, !verifier.code !725
  store %struct.inet_connection_sock* %5, %struct.inet_connection_sock** %3, align 8, !dbg !966, !verifier.code !725
  %6 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !969, !verifier.code !725
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6), !dbg !970, !verifier.code !725
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 83, !dbg !971, !verifier.code !725
  store i32 0, i32* %8, align 4, !dbg !972, !verifier.code !725
  %9 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8, !dbg !973, !verifier.code !725
  %10 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %9, i32 0, i32 3, !dbg !975, !verifier.code !725
  %11 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %10, align 8, !dbg !975, !verifier.code !725
  %12 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %11, i32 0, i32 2, !dbg !976, !verifier.code !725
  %13 = load void (%struct.sock*)*, void (%struct.sock*)** %12, align 8, !dbg !976, !verifier.code !725
  %14 = icmp ne void (%struct.sock*)* %13, null, !dbg !973, !verifier.code !725
  br i1 %14, label %15, label %22, !dbg !977, !verifier.code !725

; <label>:15:                                     ; preds = %1
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8, !dbg !978, !verifier.code !725
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 3, !dbg !979, !verifier.code !725
  %18 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %17, align 8, !dbg !979, !verifier.code !725
  %19 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %18, i32 0, i32 2, !dbg !980, !verifier.code !725
  %20 = load void (%struct.sock*)*, void (%struct.sock*)** %19, align 8, !dbg !980, !verifier.code !725
  %21 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !981, !verifier.code !725
  call void @devirtbounce(void (%struct.sock*)* %20, %struct.sock* %21)
  br label %22, !dbg !978, !verifier.code !725

; <label>:22:                                     ; preds = %15, %1
  ret void, !dbg !982, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_connection_sock* @inet_csk(%struct.sock*) #0 !dbg !983 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !986, metadata !DIExpression()), !dbg !987, !verifier.code !725
  %3 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !988, !verifier.code !725
  %4 = bitcast %struct.sock* %3 to %struct.inet_connection_sock*, !dbg !989, !verifier.code !725
  ret %struct.inet_connection_sock* %4, !dbg !990, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cleanup_congestion_control(%struct.sock*) #0 !dbg !991 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !992, metadata !DIExpression()), !dbg !993, !verifier.code !725
  ret void, !dbg !994, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_set_congestion_control(%struct.sock*, %struct.tcp_congestion_ops*) #0 !dbg !995 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_congestion_ops*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !998, metadata !DIExpression()), !dbg !999, !verifier.code !725
  store %struct.tcp_congestion_ops* %1, %struct.tcp_congestion_ops** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_congestion_ops** %4, metadata !1000, metadata !DIExpression()), !dbg !1001, !verifier.code !725
  %5 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1002, !verifier.code !725
  %6 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %4, align 8, !dbg !1003, !verifier.code !725
  call void @tcp_reinit_congestion_control(%struct.sock* %5, %struct.tcp_congestion_ops* %6), !dbg !1004, !verifier.code !725
  ret i32 0, !dbg !1005, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reinit_congestion_control(%struct.sock*, %struct.tcp_congestion_ops*) #0 !dbg !1006 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_congestion_ops*, align 8, !verifier.code !725
  %5 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1009, metadata !DIExpression()), !dbg !1010, !verifier.code !725
  store %struct.tcp_congestion_ops* %1, %struct.tcp_congestion_ops** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_congestion_ops** %4, metadata !1011, metadata !DIExpression()), !dbg !1012, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %5, metadata !1013, metadata !DIExpression()), !dbg !1014, !verifier.code !725
  %6 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1015, !verifier.code !725
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6), !dbg !1016, !verifier.code !725
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8, !dbg !1014, !verifier.code !725
  %8 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1017, !verifier.code !725
  call void @tcp_cleanup_congestion_control(%struct.sock* %8), !dbg !1018, !verifier.code !725
  %9 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %4, align 8, !dbg !1019, !verifier.code !725
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1020, !verifier.code !725
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 3, !dbg !1021, !verifier.code !725
  store %struct.tcp_congestion_ops* %9, %struct.tcp_congestion_ops** %11, align 8, !dbg !1022, !verifier.code !725
  %12 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1023, !verifier.code !725
  %13 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %12, i32 0, i32 5, !dbg !1024, !verifier.code !725
  %14 = load i8, i8* %13, align 8, !dbg !1025, !verifier.code !725
  %15 = and i8 %14, -65, !dbg !1025, !verifier.code !725
  %16 = or i8 %15, 64, !dbg !1025, !verifier.code !725
  store i8 %16, i8* %13, align 8, !dbg !1025, !verifier.code !725
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1026, !verifier.code !725
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 15, !dbg !1027, !verifier.code !725
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 15, i32 0
  %20 = bitcast i64* %19 to i8*, !dbg !1028, !verifier.code !725
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 88, i1 false), !dbg !1028, !verifier.code !725
  %21 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1029, !verifier.code !725
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0, !dbg !1031, !verifier.code !725
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0, i32 0
  %24 = load volatile i8, i8* %23, align 8, !dbg !1031, !verifier.code !725
  %25 = zext i8 %24 to i32, !dbg !1029, !verifier.code !725
  %26 = icmp ne i32 %25, 7, !dbg !1032, !verifier.code !725
  br i1 %26, label %27, label %29, !dbg !1033, !verifier.code !725

; <label>:27:                                     ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1034, !verifier.code !725
  call void @tcp_init_congestion_control(%struct.sock* %28), !dbg !1035, !verifier.code !725
  br label %29, !dbg !1035, !verifier.code !725

; <label>:29:                                     ; preds = %27, %2
  ret void, !dbg !1036, !verifier.code !725
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sync_mss(%struct.sock*, i32) #0 !dbg !1037 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1039, metadata !DIExpression()), !dbg !1040, !verifier.code !725
  store i32 %1, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1041, metadata !DIExpression()), !dbg !1042, !verifier.code !725
  ret i32 0, !dbg !1043, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_sock(%struct.sock*) #0 !dbg !1044 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  %3 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !1045, metadata !DIExpression()), !dbg !1046, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %3, metadata !1047, metadata !DIExpression()), !dbg !1048, !verifier.code !725
  %5 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1049, !verifier.code !725
  %6 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %5), !dbg !1050, !verifier.code !725
  store %struct.inet_connection_sock* %6, %struct.inet_connection_sock** %3, align 8, !dbg !1048, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %4, metadata !1051, metadata !DIExpression()), !dbg !1052, !verifier.code !725
  %7 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1053, !verifier.code !725
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7), !dbg !1054, !verifier.code !725
  store %struct.tcp_sock* %8, %struct.tcp_sock** %4, align 8, !dbg !1052, !verifier.code !725
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1055, !verifier.code !725
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 52, !dbg !1056, !verifier.code !725
  store i32 10, i32* %10, align 4, !dbg !1057, !verifier.code !725
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1058, !verifier.code !725
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 62, !dbg !1059, !verifier.code !725
  store i32 -1, i32* %12, align 4, !dbg !1060, !verifier.code !725
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1061, !verifier.code !725
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 51, !dbg !1062, !verifier.code !725
  store i32 2147483647, i32* %14, align 8, !dbg !1063, !verifier.code !725
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1064, !verifier.code !725
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 54, !dbg !1065, !verifier.code !725
  store i32 -1, i32* %16, align 4, !dbg !1066, !verifier.code !725
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1067, !verifier.code !725
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 23, !dbg !1068, !verifier.code !725
  store i32 536, i32* %18, align 4, !dbg !1069, !verifier.code !725
  %19 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1070, !verifier.code !725
  %20 = call %struct.net* @sock_net(%struct.sock* %19), !dbg !1071, !verifier.code !725
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0, !dbg !1072, !verifier.code !725
  %22 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0, i32 28
  %23 = load i32, i32* %22, align 4, !dbg !1073, !verifier.code !725
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1074, !verifier.code !725
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 48, !dbg !1075, !verifier.code !725
  store i32 %23, i32* %25, align 8, !dbg !1076, !verifier.code !725
  %26 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1077, !verifier.code !725
  call void @tcp_assign_congestion_control(%struct.sock* %26), !dbg !1078, !verifier.code !725
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1079, !verifier.code !725
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 19, !dbg !1080, !verifier.code !725
  store i32 0, i32* %28, align 4, !dbg !1081, !verifier.code !725
  %29 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1082, !verifier.code !725
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0, !dbg !1083, !verifier.code !725
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0, i32 0
  store volatile i8 7, i8* %31, align 8, !dbg !1084, !verifier.code !725
  %32 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1085, !verifier.code !725
  call void @sock_set_flag(%struct.sock* %32, i32 9), !dbg !1086, !verifier.code !725
  %33 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8, !dbg !1087, !verifier.code !725
  %34 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %33, i32 0, i32 4, !dbg !1088, !verifier.code !725
  store i32 (%struct.sock*, i32)* @tcp_sync_mss, i32 (%struct.sock*, i32)** %34, align 8, !dbg !1089, !verifier.code !725
  %35 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_wmem, i64 0, i64 1), align 4, !dbg !1090, !verifier.code !725
  %36 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1091, !verifier.code !725
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 2, !dbg !1092, !verifier.code !725
  store i32 %35, i32* %37, align 4, !dbg !1093, !verifier.code !725
  %38 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_rmem, i64 0, i64 1), align 4, !dbg !1094, !verifier.code !725
  %39 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1095, !verifier.code !725
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1, !dbg !1096, !verifier.code !725
  store i32 %38, i32* %40, align 8, !dbg !1097, !verifier.code !725
  ret void, !dbg !1098, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @sock_net(%struct.sock*) #0 !dbg !1099 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !1102, metadata !DIExpression()), !dbg !1103, !verifier.code !725
  %3 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1104, !verifier.code !725
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0, !dbg !1105, !verifier.code !725
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0, i32 1
  %6 = call %struct.net* @read_pnet(%struct.possible_net_t* %5), !dbg !1106, !verifier.code !725
  ret %struct.net* %6, !dbg !1107, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_set_flag(%struct.sock*, i32) #0 !dbg !1108 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1111, metadata !DIExpression()), !dbg !1112, !verifier.code !725
  store i32 %1, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1113, metadata !DIExpression()), !dbg !1114, !verifier.code !725
  %5 = load i32, i32* %4, align 4, !dbg !1115, !verifier.code !725
  %6 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1116, !verifier.code !725
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0, !dbg !1117, !verifier.code !725
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0, i32 2
  %9 = bitcast i64* %8 to i8*, !dbg !1118, !verifier.code !725
  call void @__set_bit(i32 %5, i8* %9), !dbg !1119, !verifier.code !725
  ret void, !dbg !1120, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_bit(i32, i8*) #0 !dbg !1121 {
  %3 = alloca i32, align 4, !verifier.code !725
  %4 = alloca i8*, align 8, !verifier.code !725
  store i32 %0, i32* %3, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1127, metadata !DIExpression()), !dbg !1128, !verifier.code !725
  store i8* %1, i8** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1129, metadata !DIExpression()), !dbg !1130, !verifier.code !725
  %5 = load i32, i32* %3, align 4, !dbg !1131, !verifier.code !725
  %6 = and i32 %5, 31, !dbg !1132, !verifier.code !725
  %7 = shl i32 1, %6, !dbg !1133, !verifier.code !725
  %8 = load i8*, i8** %4, align 8, !dbg !1134, !verifier.code !725
  %9 = bitcast i8* %8 to i32*, !dbg !1135, !verifier.code !725
  %10 = load i32, i32* %3, align 4, !dbg !1136, !verifier.code !725
  %11 = ashr i32 %10, 5, !dbg !1137, !verifier.code !725
  %12 = sext i32 %11 to i64, !dbg !1138, !verifier.code !725
  %13 = getelementptr inbounds i32, i32* %9, i64 %12, !dbg !1138, !verifier.code !725
  %14 = load i32, i32* %13, align 4, !dbg !1139, !verifier.code !725
  %15 = or i32 %14, %7, !dbg !1139, !verifier.code !725
  store i32 %15, i32* %13, align 4, !dbg !1139, !verifier.code !725
  ret void, !dbg !1140, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @read_pnet(%struct.possible_net_t*) #0 !dbg !1141 {
  %2 = alloca %struct.possible_net_t*, align 8, !verifier.code !725
  store %struct.possible_net_t* %0, %struct.possible_net_t** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.possible_net_t** %2, metadata !1146, metadata !DIExpression()), !dbg !1147, !verifier.code !725
  %3 = load %struct.possible_net_t*, %struct.possible_net_t** %2, align 8, !dbg !1148, !verifier.code !725
  %4 = getelementptr inbounds %struct.possible_net_t, %struct.possible_net_t* %3, i32 0, i32 0, !dbg !1149, !verifier.code !725
  %5 = load %struct.net*, %struct.net** %4, align 8, !dbg !1149, !verifier.code !725
  ret %struct.net* %5, !dbg !1150, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_set_ca_state(%struct.sock*, i8 zeroext) #0 !dbg !1151 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca i8, align 1, !verifier.code !725
  %5 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1155, metadata !DIExpression()), !dbg !1156, !verifier.code !725
  store i8 %1, i8* %4, align 1, !verifier.code !725
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1157, metadata !DIExpression()), !dbg !1158, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %5, metadata !1159, metadata !DIExpression()), !dbg !1160, !verifier.code !725
  %6 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1161, !verifier.code !725
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6), !dbg !1162, !verifier.code !725
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8, !dbg !1160, !verifier.code !725
  %8 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1163, !verifier.code !725
  %9 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %8, i32 0, i32 3, !dbg !1165, !verifier.code !725
  %10 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %9, align 8, !dbg !1165, !verifier.code !725
  %11 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %10, i32 0, i32 6, !dbg !1166, !verifier.code !725
  %12 = load void (%struct.sock*, i8)*, void (%struct.sock*, i8)** %11, align 8, !dbg !1166, !verifier.code !725
  %13 = icmp ne void (%struct.sock*, i8)* %12, null, !dbg !1163, !verifier.code !725
  br i1 %13, label %14, label %22, !dbg !1167, !verifier.code !725

; <label>:14:                                     ; preds = %2
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1168, !verifier.code !725
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 3, !dbg !1169, !verifier.code !725
  %17 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %16, align 8, !dbg !1169, !verifier.code !725
  %18 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %17, i32 0, i32 6, !dbg !1170, !verifier.code !725
  %19 = load void (%struct.sock*, i8)*, void (%struct.sock*, i8)** %18, align 8, !dbg !1170, !verifier.code !725
  %20 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1171, !verifier.code !725
  %21 = load i8, i8* %4, align 1, !dbg !1172, !verifier.code !725
  call void @devirtbounce.1(void (%struct.sock*, i8)* %19, %struct.sock* %20, i8 %21)
  br label %22, !dbg !1168, !verifier.code !725

; <label>:22:                                     ; preds = %14, %2
  %23 = load i8, i8* %4, align 1, !dbg !1173, !verifier.code !725
  %24 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1174, !verifier.code !725
  %25 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %24, i32 0, i32 5, !dbg !1175, !verifier.code !725
  %26 = load i8, i8* %25, align 8, !dbg !1176, !verifier.code !725
  %27 = and i8 %23, 63, !dbg !1176, !verifier.code !725
  %28 = and i8 %26, -64, !dbg !1176, !verifier.code !725
  %29 = or i8 %28, %27, !dbg !1176, !verifier.code !725
  store i8 %29, i8* %25, align 8, !dbg !1176, !verifier.code !725
  ret void, !dbg !1177, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tcp_in_cwnd_reduction(%struct.sock*) #0 !dbg !1178 {
  %2 = alloca %struct.sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %2, metadata !1179, metadata !DIExpression()), !dbg !1180, !verifier.code !725
  %3 = load %struct.sock*, %struct.sock** %2, align 8, !dbg !1181, !verifier.code !725
  %4 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %3), !dbg !1182, !verifier.code !725
  %5 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %4, i32 0, i32 5, !dbg !1183, !verifier.code !725
  %6 = load i8, i8* %5, align 8, !dbg !1183, !verifier.code !725
  %7 = and i8 %6, 63, !dbg !1183, !verifier.code !725
  %8 = zext i8 %7 to i32, !dbg !1182, !verifier.code !725
  %9 = shl i32 1, %8, !dbg !1184, !verifier.code !725
  %10 = and i32 12, %9, !dbg !1185, !verifier.code !725
  %11 = icmp ne i32 %10, 0, !dbg !1186, !verifier.code !725
  ret i1 %11, !dbg !1187, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_current_ssthresh(%struct.sock*) #0 !dbg !1188 {
  %2 = alloca i32, align 4, !verifier.code !725
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1191, metadata !DIExpression()), !dbg !1192, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %4, metadata !1193, metadata !DIExpression()), !dbg !1194, !verifier.code !725
  %5 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1195, !verifier.code !725
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5), !dbg !1196, !verifier.code !725
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8, !dbg !1194, !verifier.code !725
  %7 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1197, !verifier.code !725
  %8 = call zeroext i1 @tcp_in_cwnd_reduction(%struct.sock* %7), !dbg !1199, !verifier.code !725
  br i1 %8, label %9, label %13, !dbg !1200, !verifier.code !725

; <label>:9:                                      ; preds = %1
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1201, !verifier.code !725
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 51, !dbg !1202, !verifier.code !725
  %12 = load i32, i32* %11, align 8, !dbg !1202, !verifier.code !725
  store i32 %12, i32* %2, align 4, !dbg !1203, !verifier.code !725
  br label %27, !dbg !1203, !verifier.code !725

; <label>:13:                                     ; preds = %1
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1204, !verifier.code !725
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 51, !dbg !1204, !verifier.code !725
  %16 = load i32, i32* %15, align 8, !dbg !1204, !verifier.code !725
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1204, !verifier.code !725
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 52, !dbg !1204, !verifier.code !725
  %19 = load i32, i32* %18, align 4, !dbg !1204, !verifier.code !725
  %20 = lshr i32 %19, 1, !dbg !1204, !verifier.code !725
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1204, !verifier.code !725
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 52, !dbg !1204, !verifier.code !725
  %23 = load i32, i32* %22, align 4, !dbg !1204, !verifier.code !725
  %24 = lshr i32 %23, 2, !dbg !1204, !verifier.code !725
  %25 = add i32 %20, %24, !dbg !1204, !verifier.code !725
  %26 = call i32 @max_func(i32 %16, i32 %25), !dbg !1204, !verifier.code !725
  store i32 %26, i32* %2, align 4, !dbg !1205, !verifier.code !725
  br label %27, !dbg !1205, !verifier.code !725

; <label>:27:                                     ; preds = %13, %9
  %28 = load i32, i32* %2, align 4, !dbg !1206, !verifier.code !725
  ret i32 %28, !dbg !1206, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main() #0 !dbg !1207 {
  %1 = alloca i32, align 4, !verifier.code !725
  %2 = alloca %struct.tcp_sock, align 8, !verifier.code !725
  %3 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  %4 = alloca %struct.tcp_sock*, align 8, !verifier.code !725
  %5 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  %6 = alloca i8, align 1, !verifier.code !725
  %7 = alloca %struct.net, align 4, !verifier.code !725
  %8 = alloca i32, align 4, !verifier.code !725
  %9 = alloca i32, align 4, !verifier.code !725
  %10 = alloca i32, align 4, !verifier.code !725
  %11 = alloca i32, align 4, !verifier.code !725
  %12 = alloca %struct.ack_sample, align 4, !verifier.code !725
  store i32 0, i32* %1, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock* %2, metadata !1210, metadata !DIExpression()), !dbg !1211, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %3, metadata !1212, metadata !DIExpression()), !dbg !1213, !verifier.code !725
  store %struct.tcp_sock* %2, %struct.tcp_sock** %3, align 8, !dbg !1213, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.tcp_sock** %4, metadata !1214, metadata !DIExpression()), !dbg !1215, !verifier.code !725
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1216, !verifier.code !725
  %14 = bitcast %struct.tcp_sock* %13 to %struct.sock*, !dbg !1216, !verifier.code !725
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14), !dbg !1217, !verifier.code !725
  store %struct.tcp_sock* %15, %struct.tcp_sock** %4, align 8, !dbg !1215, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %5, metadata !1218, metadata !DIExpression()), !dbg !1219, !verifier.code !725
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1220, !verifier.code !725
  %17 = bitcast %struct.tcp_sock* %16 to %struct.sock*, !dbg !1220, !verifier.code !725
  %18 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %17), !dbg !1221, !verifier.code !725
  store %struct.inet_connection_sock* %18, %struct.inet_connection_sock** %5, align 8, !dbg !1219, !verifier.code !725
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1222, metadata !DIExpression()), !dbg !1223, !verifier.code !725
  %19 = bitcast %struct.tcp_sock* %2 to i8*, !dbg !1224, !verifier.code !725
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 784, i1 false), !dbg !1224, !verifier.code !725
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1225, !verifier.code !725
  %21 = bitcast %struct.tcp_sock* %20 to %struct.sock*, !dbg !1225, !verifier.code !725
  %22 = call i32 @tcp_set_congestion_control(%struct.sock* %21, %struct.tcp_congestion_ops* @tcp_reno), !dbg !1226, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.net* %7, metadata !1227, metadata !DIExpression()), !dbg !1228, !verifier.code !725
  %23 = bitcast %struct.net* %7 to i8*, !dbg !1229, !verifier.code !725
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 160, i1 false), !dbg !1229, !verifier.code !725
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1230, !verifier.code !725
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, !dbg !1231, !verifier.code !725
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, i32 0, i32 0
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, i32 0, i32 0, i32 0
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0
  store %struct.net* %7, %struct.net** %30, align 8, !dbg !1232, !verifier.code !725
  %31 = call i32 @tcp_sk_init(%struct.net* %7), !dbg !1233, !verifier.code !725
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1234, !verifier.code !725
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 52, !dbg !1235, !verifier.code !725
  %34 = load i32, i32* %33, align 4, !dbg !1235, !verifier.code !725
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1236, !verifier.code !725
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 51, !dbg !1237, !verifier.code !725
  %37 = load i32, i32* %36, align 8, !dbg !1237, !verifier.code !725
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0), i32 %34, i32 %37), !dbg !1238, !verifier.code !725
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1239, !verifier.code !725
  %40 = bitcast %struct.tcp_sock* %39 to %struct.sock*, !dbg !1239, !verifier.code !725
  call void @tcp_init_sock(%struct.sock* %40), !dbg !1240, !verifier.code !725
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1241, !verifier.code !725
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 3, !dbg !1243, !verifier.code !725
  %43 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %42, align 8, !dbg !1243, !verifier.code !725
  %44 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %43, i32 0, i32 2, !dbg !1244, !verifier.code !725
  %45 = load void (%struct.sock*)*, void (%struct.sock*)** %44, align 8, !dbg !1244, !verifier.code !725
  %46 = icmp ne void (%struct.sock*)* %45, null, !dbg !1241, !verifier.code !725
  br i1 %46, label %47, label %55, !dbg !1245, !verifier.code !725

; <label>:47:                                     ; preds = %0
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1246, !verifier.code !725
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 3, !dbg !1247, !verifier.code !725
  %50 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %49, align 8, !dbg !1247, !verifier.code !725
  %51 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %50, i32 0, i32 2, !dbg !1248, !verifier.code !725
  %52 = load void (%struct.sock*)*, void (%struct.sock*)** %51, align 8, !dbg !1248, !verifier.code !725
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1249, !verifier.code !725
  %54 = bitcast %struct.tcp_sock* %53 to %struct.sock*, !dbg !1249, !verifier.code !725
  call void @devirtbounce(void (%struct.sock*)* %52, %struct.sock* %54)
  br label %55, !dbg !1246, !verifier.code !725

; <label>:55:                                     ; preds = %47, %0
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1250, !verifier.code !725
  %57 = bitcast %struct.tcp_sock* %56 to %struct.sock*, !dbg !1250, !verifier.code !725
  call void @tcp_ca_event(%struct.sock* %57, i32 0), !dbg !1251, !verifier.code !725
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1252, !verifier.code !725
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 52, !dbg !1253, !verifier.code !725
  %60 = load i32, i32* %59, align 4, !dbg !1253, !verifier.code !725
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1254, !verifier.code !725
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 51, !dbg !1255, !verifier.code !725
  %63 = load i32, i32* %62, align 8, !dbg !1255, !verifier.code !725
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %60, i32 %63), !dbg !1256, !verifier.code !725
  %65 = call i32 @__VERIFIER_nondet_uint(), !dbg !1257, !verifier.code !1258
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1259, !verifier.code !725
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 52, !dbg !1260, !verifier.code !725
  store i32 %65, i32* %67, align 4, !dbg !1261, !verifier.code !725
  %68 = call i32 @__VERIFIER_nondet_uint(), !dbg !1262, !verifier.code !1258
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1263, !verifier.code !725
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 51, !dbg !1264, !verifier.code !725
  store i32 %68, i32* %70, align 8, !dbg !1265, !verifier.code !725
  %71 = call i32 @__VERIFIER_nondet_uint(), !dbg !1266, !verifier.code !1258
  %72 = zext i32 %71 to i64, !dbg !1266, !verifier.code !725
  store volatile i64 %72, i64* @jiffies, align 8, !dbg !1267, !verifier.code !725
  store i8 0, i8* %6, align 1, !dbg !1268, !verifier.code !725
  %73 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1269, !verifier.code !725
  %74 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %73, i32 0, i32 3, !dbg !1271, !verifier.code !725
  %75 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %74, align 8, !dbg !1271, !verifier.code !725
  %76 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %75, i32 0, i32 6, !dbg !1272, !verifier.code !725
  %77 = load void (%struct.sock*, i8)*, void (%struct.sock*, i8)** %76, align 8, !dbg !1272, !verifier.code !725
  %78 = icmp ne void (%struct.sock*, i8)* %77, null, !dbg !1269, !verifier.code !725
  br i1 %78, label %79, label %88, !dbg !1273, !verifier.code !725

; <label>:79:                                     ; preds = %55
  %80 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1274, !verifier.code !725
  %81 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %80, i32 0, i32 3, !dbg !1275, !verifier.code !725
  %82 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %81, align 8, !dbg !1275, !verifier.code !725
  %83 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %82, i32 0, i32 6, !dbg !1276, !verifier.code !725
  %84 = load void (%struct.sock*, i8)*, void (%struct.sock*, i8)** %83, align 8, !dbg !1276, !verifier.code !725
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1277, !verifier.code !725
  %86 = bitcast %struct.tcp_sock* %85 to %struct.sock*, !dbg !1277, !verifier.code !725
  %87 = load i8, i8* %6, align 1, !dbg !1278, !verifier.code !725
  call void @devirtbounce.1(void (%struct.sock*, i8)* %84, %struct.sock* %86, i8 %87)
  br label %88, !dbg !1274, !verifier.code !725

; <label>:88:                                     ; preds = %79, %55
  %89 = load i8, i8* %6, align 1, !dbg !1279, !verifier.code !725
  %90 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1280, !verifier.code !725
  %91 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %90, i32 0, i32 5, !dbg !1281, !verifier.code !725
  %92 = load i8, i8* %91, align 8, !dbg !1282, !verifier.code !725
  %93 = and i8 %89, 63, !dbg !1282, !verifier.code !725
  %94 = and i8 %92, -64, !dbg !1282, !verifier.code !725
  %95 = or i8 %94, %93, !dbg !1282, !verifier.code !725
  store i8 %95, i8* %91, align 8, !dbg !1282, !verifier.code !725
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1283, !verifier.code !725
  %97 = bitcast %struct.tcp_sock* %96 to %struct.sock*, !dbg !1283, !verifier.code !725
  call void @tcp_set_ca_state(%struct.sock* %97, i8 zeroext 0), !dbg !1284, !verifier.code !725
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1285, !verifier.code !725
  %99 = bitcast %struct.tcp_sock* %98 to %struct.sock*, !dbg !1285, !verifier.code !725
  call void @tcp_ca_event(%struct.sock* %99, i32 2), !dbg !1286, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1287, metadata !DIExpression()), !dbg !1288, !verifier.code !725
  store i32 1, i32* %8, align 4, !dbg !1288, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1289, metadata !DIExpression()), !dbg !1290, !verifier.code !725
  store i32 1024, i32* %9, align 4, !dbg !1290, !verifier.code !725
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)), !dbg !1291, !verifier.code !725
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1292, !verifier.code !725
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 52, !dbg !1293, !verifier.code !725
  %103 = load i32, i32* %102, align 4, !dbg !1293, !verifier.code !725
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1294, !verifier.code !725
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 53, !dbg !1295, !verifier.code !725
  store i32 %103, i32* %105, align 8, !dbg !1296, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1297, metadata !DIExpression()), !dbg !1298, !verifier.code !725
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1299, !verifier.code !725
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 52, !dbg !1300, !verifier.code !725
  %108 = load i32, i32* %107, align 4, !dbg !1300, !verifier.code !725
  store i32 %108, i32* %10, align 4, !dbg !1298, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1301, metadata !DIExpression()), !dbg !1303, !verifier.code !725
  store i32 0, i32* %11, align 4, !dbg !1303, !verifier.code !725
  br label %109, !dbg !1304, !verifier.code !725

; <label>:109:                                    ; preds = %153, %88
  %110 = load i32, i32* %11, align 4, !dbg !1305, !verifier.code !725
  %111 = icmp slt i32 %110, 100, !dbg !1307, !verifier.code !725
  br i1 %111, label %112, label %156, !dbg !1308, !verifier.code !725

; <label>:112:                                    ; preds = %109
  %113 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1309, !verifier.code !725
  %114 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %113, i32 0, i32 3, !dbg !1312, !verifier.code !725
  %115 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %114, align 8, !dbg !1312, !verifier.code !725
  %116 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %115, i32 0, i32 10, !dbg !1313, !verifier.code !725
  %117 = load void (%struct.sock*, %struct.ack_sample*)*, void (%struct.sock*, %struct.ack_sample*)** %116, align 8, !dbg !1313, !verifier.code !725
  %118 = icmp ne void (%struct.sock*, %struct.ack_sample*)* %117, null, !dbg !1309, !verifier.code !725
  br i1 %118, label %119, label %132, !dbg !1314, !verifier.code !725

; <label>:119:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.ack_sample* %12, metadata !1315, metadata !DIExpression()), !dbg !1317, !verifier.code !725
  %120 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %12, i32 0, i32 0, !dbg !1318, !verifier.code !725
  %121 = load i32, i32* %8, align 4, !dbg !1319, !verifier.code !725
  store i32 %121, i32* %120, align 4, !dbg !1318, !verifier.code !725
  %122 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %12, i32 0, i32 1, !dbg !1318, !verifier.code !725
  store i32 100, i32* %122, align 4, !dbg !1318, !verifier.code !725
  %123 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %12, i32 0, i32 2, !dbg !1318, !verifier.code !725
  %124 = load i32, i32* %9, align 4, !dbg !1320, !verifier.code !725
  store i32 %124, i32* %123, align 4, !dbg !1318, !verifier.code !725
  %125 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1321, !verifier.code !725
  %126 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %125, i32 0, i32 3, !dbg !1322, !verifier.code !725
  %127 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %126, align 8, !dbg !1322, !verifier.code !725
  %128 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %127, i32 0, i32 10, !dbg !1323, !verifier.code !725
  %129 = load void (%struct.sock*, %struct.ack_sample*)*, void (%struct.sock*, %struct.ack_sample*)** %128, align 8, !dbg !1323, !verifier.code !725
  %130 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1324, !verifier.code !725
  %131 = bitcast %struct.tcp_sock* %130 to %struct.sock*, !dbg !1324, !verifier.code !725
  call void @devirtbounce.2(void (%struct.sock*, %struct.ack_sample*)* %129, %struct.sock* %131, %struct.ack_sample* %12)
  br label %132, !dbg !1325, !verifier.code !725

; <label>:132:                                    ; preds = %119, %112
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1326, !verifier.code !725
  %134 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %133, i32 0, i32 52, !dbg !1327, !verifier.code !725
  %135 = load i32, i32* %134, align 4, !dbg !1327, !verifier.code !725
  store i32 %135, i32* %10, align 4, !dbg !1328, !verifier.code !725
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1329, !verifier.code !725
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 52, !dbg !1330, !verifier.code !725
  %138 = load i32, i32* %137, align 4, !dbg !1330, !verifier.code !725
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1331, !verifier.code !725
  %140 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %139, i32 0, i32 43, !dbg !1332, !verifier.code !725
  store i32 %138, i32* %140, align 4, !dbg !1333, !verifier.code !725
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1334, !verifier.code !725
  %142 = bitcast %struct.tcp_sock* %141 to %struct.sock*, !dbg !1334, !verifier.code !725
  %143 = load i32, i32* %8, align 4, !dbg !1335, !verifier.code !725
  %144 = load i32, i32* %9, align 4, !dbg !1336, !verifier.code !725
  call void @tcp_cong_avoid(%struct.sock* %142, i32 %143, i32 %144), !dbg !1337, !verifier.code !725
  %145 = load i32, i32* %8, align 4, !dbg !1338, !verifier.code !725
  %146 = add i32 %145, 1, !dbg !1338, !verifier.code !725
  store i32 %146, i32* %8, align 4, !dbg !1338, !verifier.code !725
  %147 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1339, !verifier.code !1258
  %148 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %147, i32 0, i32 52, !dbg !1339, !verifier.code !1258
  %149 = load i32, i32* %148, align 4, !dbg !1339, !verifier.code !1258
  %150 = load i32, i32* %10, align 4, !dbg !1339, !verifier.code !1258
  %151 = icmp ugt i32 %149, %150, !dbg !1339, !verifier.code !1258
  %152 = zext i1 %151 to i32, !dbg !1339, !verifier.code !1258
  call void @__VERIFIER_assert(i32 %152), !dbg !1339, !verifier.code !1258
  br label %153, !dbg !1340, !verifier.code !725

; <label>:153:                                    ; preds = %132
  %154 = load i32, i32* %11, align 4, !dbg !1341, !verifier.code !725
  %155 = add nsw i32 %154, 1, !dbg !1341, !verifier.code !725
  store i32 %155, i32* %11, align 4, !dbg !1341, !verifier.code !725
  br label %109, !dbg !1342, !llvm.loop !1343, !verifier.code !725

; <label>:156:                                    ; preds = %109
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1345, !verifier.code !725
  %158 = bitcast %struct.tcp_sock* %157 to %struct.sock*, !dbg !1345, !verifier.code !725
  call void @tcp_set_ca_state(%struct.sock* %158, i8 zeroext 1), !dbg !1346, !verifier.code !725
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)), !dbg !1347, !verifier.code !725
  %160 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1348, !verifier.code !725
  %161 = bitcast %struct.tcp_sock* %160 to %struct.sock*, !dbg !1348, !verifier.code !725
  %162 = call i32 @tcp_current_ssthresh(%struct.sock* %161), !dbg !1349, !verifier.code !725
  %163 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1350, !verifier.code !725
  %164 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %163, i32 0, i32 83, !dbg !1351, !verifier.code !725
  store i32 %162, i32* %164, align 4, !dbg !1352, !verifier.code !725
  %165 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1353, !verifier.code !725
  %166 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %165, i32 0, i32 53, !dbg !1354, !verifier.code !725
  store i32 0, i32* %166, align 8, !dbg !1355, !verifier.code !725
  %167 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1356, !verifier.code !725
  %168 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %167, i32 0, i32 52, !dbg !1357, !verifier.code !725
  %169 = load i32, i32* %168, align 4, !dbg !1357, !verifier.code !725
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1358, !verifier.code !725
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 57, !dbg !1359, !verifier.code !725
  store i32 %169, i32* %171, align 8, !dbg !1360, !verifier.code !725
  %172 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1361, !verifier.code !725
  %173 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %172, i32 0, i32 52, !dbg !1362, !verifier.code !725
  %174 = load i32, i32* %173, align 4, !dbg !1362, !verifier.code !725
  store i32 %174, i32* %10, align 4, !dbg !1363, !verifier.code !725
  %175 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1364, !verifier.code !725
  %176 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %175, i32 0, i32 3, !dbg !1365, !verifier.code !725
  %177 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %176, align 8, !dbg !1365, !verifier.code !725
  %178 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %177, i32 0, i32 4, !dbg !1366, !verifier.code !725
  %179 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %178, align 8, !dbg !1366, !verifier.code !725
  %180 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1367, !verifier.code !725
  %181 = bitcast %struct.tcp_sock* %180 to %struct.sock*, !dbg !1367, !verifier.code !725
  %182 = call i32 @devirtbounce.3(i32 (%struct.sock*)* %179, %struct.sock* %181)
  %183 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1368, !verifier.code !725
  %184 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %183, i32 0, i32 51, !dbg !1369, !verifier.code !725
  store i32 %182, i32* %184, align 8, !dbg !1370, !verifier.code !725
  %185 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1371, !verifier.code !725
  %186 = bitcast %struct.tcp_sock* %185 to %struct.sock*, !dbg !1371, !verifier.code !725
  call void @tcp_set_ca_state(%struct.sock* %186, i8 zeroext 3), !dbg !1372, !verifier.code !725
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)), !dbg !1373, !verifier.code !725
  %188 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1374, !verifier.code !725
  %189 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %188, i32 0, i32 3, !dbg !1375, !verifier.code !725
  %190 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %189, align 8, !dbg !1375, !verifier.code !725
  %191 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %190, i32 0, i32 9, !dbg !1376, !verifier.code !725
  %192 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %191, align 8, !dbg !1376, !verifier.code !725
  %193 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8, !dbg !1377, !verifier.code !725
  %194 = bitcast %struct.tcp_sock* %193 to %struct.sock*, !dbg !1377, !verifier.code !725
  %195 = call i32 @devirtbounce.3(i32 (%struct.sock*)* %192, %struct.sock* %194)
  %196 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1378, !verifier.code !725
  %197 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %196, i32 0, i32 52, !dbg !1379, !verifier.code !725
  store i32 %195, i32* %197, align 4, !dbg !1380, !verifier.code !725
  %198 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1381, !verifier.code !725
  %199 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %198, i32 0, i32 83, !dbg !1383, !verifier.code !725
  %200 = load i32, i32* %199, align 4, !dbg !1383, !verifier.code !725
  %201 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1384, !verifier.code !725
  %202 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %201, i32 0, i32 51, !dbg !1385, !verifier.code !725
  %203 = load i32, i32* %202, align 8, !dbg !1385, !verifier.code !725
  %204 = icmp ugt i32 %200, %203, !dbg !1386, !verifier.code !725
  br i1 %204, label %205, label %211, !dbg !1387, !verifier.code !725

; <label>:205:                                    ; preds = %156
  %206 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1388, !verifier.code !725
  %207 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %206, i32 0, i32 83, !dbg !1390, !verifier.code !725
  %208 = load i32, i32* %207, align 4, !dbg !1390, !verifier.code !725
  %209 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1391, !verifier.code !725
  %210 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %209, i32 0, i32 51, !dbg !1392, !verifier.code !725
  store i32 %208, i32* %210, align 8, !dbg !1393, !verifier.code !725
  br label %211, !dbg !1394, !verifier.code !725

; <label>:211:                                    ; preds = %205, %156
  %212 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1395, !verifier.code !1258
  %213 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %212, i32 0, i32 52, !dbg !1395, !verifier.code !1258
  %214 = load i32, i32* %213, align 4, !dbg !1395, !verifier.code !1258
  %215 = load i32, i32* %10, align 4, !dbg !1395, !verifier.code !1258
  %216 = icmp eq i32 %214, %215, !dbg !1395, !verifier.code !1258
  %217 = zext i1 %216 to i32, !dbg !1395, !verifier.code !1258
  call void @__VERIFIER_assert(i32 %217), !dbg !1395, !verifier.code !1258
  %218 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8, !dbg !1396, !verifier.code !725
  %219 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %218, i32 0, i32 52, !dbg !1397, !verifier.code !725
  %220 = load i32, i32* %219, align 4, !dbg !1397, !verifier.code !725
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 %220), !dbg !1398, !verifier.code !725
  ret i32 0, !dbg !1399, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sk_init(%struct.net*) #0 !dbg !1400 {
  %2 = alloca i32, align 4, !verifier.code !725
  %3 = alloca %struct.net*, align 8, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  %6 = alloca i32, align 4, !verifier.code !725
  store %struct.net* %0, %struct.net** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.net** %3, metadata !1404, metadata !DIExpression()), !dbg !1405, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1406, metadata !DIExpression()), !dbg !1407, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1408, metadata !DIExpression()), !dbg !1409, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1410, metadata !DIExpression()), !dbg !1411, !verifier.code !725
  %7 = load %struct.net*, %struct.net** %3, align 8, !dbg !1412, !verifier.code !725
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0, !dbg !1413, !verifier.code !725
  %9 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0, i32 6
  store i32 2, i32* %9, align 4, !dbg !1414, !verifier.code !725
  %10 = load %struct.net*, %struct.net** %3, align 8, !dbg !1415, !verifier.code !725
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0, !dbg !1416, !verifier.code !725
  %12 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0, i32 7
  store i32 1, i32* %12, align 4, !dbg !1417, !verifier.code !725
  %13 = load %struct.net*, %struct.net** %3, align 8, !dbg !1418, !verifier.code !725
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0, !dbg !1419, !verifier.code !725
  %15 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0, i32 19
  store i32 1024, i32* %15, align 4, !dbg !1420, !verifier.code !725
  %16 = load %struct.net*, %struct.net** %3, align 8, !dbg !1421, !verifier.code !725
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0, !dbg !1422, !verifier.code !725
  %18 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0, i32 20
  store i32 8, i32* %18, align 4, !dbg !1423, !verifier.code !725
  %19 = load %struct.net*, %struct.net** %3, align 8, !dbg !1424, !verifier.code !725
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0, !dbg !1425, !verifier.code !725
  %21 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0, i32 21
  store i32 600, i32* %21, align 4, !dbg !1426, !verifier.code !725
  %22 = load %struct.net*, %struct.net** %3, align 8, !dbg !1427, !verifier.code !725
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0, !dbg !1428, !verifier.code !725
  %24 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0, i32 22
  store i32 7200000, i32* %24, align 4, !dbg !1429, !verifier.code !725
  %25 = load %struct.net*, %struct.net** %3, align 8, !dbg !1430, !verifier.code !725
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0, !dbg !1431, !verifier.code !725
  %27 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0, i32 23
  store i32 9, i32* %27, align 4, !dbg !1432, !verifier.code !725
  %28 = load %struct.net*, %struct.net** %3, align 8, !dbg !1433, !verifier.code !725
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0, !dbg !1434, !verifier.code !725
  %30 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0, i32 24
  store i32 75000, i32* %30, align 4, !dbg !1435, !verifier.code !725
  %31 = load %struct.net*, %struct.net** %3, align 8, !dbg !1436, !verifier.code !725
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0, !dbg !1437, !verifier.code !725
  %33 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0, i32 25
  store i32 6, i32* %33, align 4, !dbg !1438, !verifier.code !725
  %34 = load %struct.net*, %struct.net** %3, align 8, !dbg !1439, !verifier.code !725
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0, !dbg !1440, !verifier.code !725
  %36 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0, i32 26
  store i32 5, i32* %36, align 4, !dbg !1441, !verifier.code !725
  %37 = load %struct.net*, %struct.net** %3, align 8, !dbg !1442, !verifier.code !725
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0, !dbg !1443, !verifier.code !725
  %39 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0, i32 27
  store i32 1, i32* %39, align 4, !dbg !1444, !verifier.code !725
  %40 = load %struct.net*, %struct.net** %3, align 8, !dbg !1445, !verifier.code !725
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0, !dbg !1446, !verifier.code !725
  %42 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0, i32 28
  store i32 3, i32* %42, align 4, !dbg !1447, !verifier.code !725
  %43 = load %struct.net*, %struct.net** %3, align 8, !dbg !1448, !verifier.code !725
  %44 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0, !dbg !1449, !verifier.code !725
  %45 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0, i32 29
  store i32 3, i32* %45, align 4, !dbg !1450, !verifier.code !725
  %46 = load %struct.net*, %struct.net** %3, align 8, !dbg !1451, !verifier.code !725
  %47 = getelementptr inbounds %struct.net, %struct.net* %46, i32 0, i32 0, !dbg !1452, !verifier.code !725
  %48 = getelementptr inbounds %struct.net, %struct.net* %46, i32 0, i32 0, i32 30
  store i32 15, i32* %48, align 4, !dbg !1453, !verifier.code !725
  %49 = load %struct.net*, %struct.net** %3, align 8, !dbg !1454, !verifier.code !725
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0, !dbg !1455, !verifier.code !725
  %51 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0, i32 31
  store i32 0, i32* %51, align 4, !dbg !1456, !verifier.code !725
  %52 = load %struct.net*, %struct.net** %3, align 8, !dbg !1457, !verifier.code !725
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0, !dbg !1458, !verifier.code !725
  %54 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0, i32 32
  store i32 60000, i32* %54, align 4, !dbg !1459, !verifier.code !725
  %55 = load %struct.net*, %struct.net** %3, align 8, !dbg !1460, !verifier.code !725
  %56 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 0, !dbg !1461, !verifier.code !725
  %57 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 0, i32 33
  store i32 -1, i32* %57, align 4, !dbg !1462, !verifier.code !725
  %58 = load %struct.net*, %struct.net** %3, align 8, !dbg !1463, !verifier.code !725
  %59 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0, !dbg !1464, !verifier.code !725
  %60 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0, i32 34
  store i32 0, i32* %60, align 4, !dbg !1465, !verifier.code !725
  store i32 0, i32* %2, align 4, !dbg !1466, !verifier.code !725
  br label %64, !dbg !1466, !verifier.code !725
                                                  ; No predecessors!
  %62 = load %struct.net*, %struct.net** %3, align 8, !dbg !1467, !verifier.code !725
  call void @tcp_sk_exit(%struct.net* %62), !dbg !1468, !verifier.code !725
  %63 = load i32, i32* %4, align 4, !dbg !1469, !verifier.code !725
  store i32 %63, i32* %2, align 4, !dbg !1470, !verifier.code !725
  br label %64, !dbg !1470, !verifier.code !725

; <label>:64:                                     ; preds = %61, %1
  %65 = load i32, i32* %2, align 4, !dbg !1471, !verifier.code !725
  ret i32 %65, !dbg !1471, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ca_event(%struct.sock*, i32) #0 !dbg !1472 {
  %3 = alloca %struct.sock*, align 8, !verifier.code !725
  %4 = alloca i32, align 4, !verifier.code !725
  %5 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %3, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %3, metadata !1476, metadata !DIExpression()), !dbg !1477, !verifier.code !725
  store i32 %1, i32* %4, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1478, metadata !DIExpression()), !dbg !1479, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %5, metadata !1480, metadata !DIExpression()), !dbg !1481, !verifier.code !725
  %6 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1482, !verifier.code !725
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6), !dbg !1483, !verifier.code !725
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8, !dbg !1481, !verifier.code !725
  %8 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1484, !verifier.code !725
  %9 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %8, i32 0, i32 3, !dbg !1486, !verifier.code !725
  %10 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %9, align 8, !dbg !1486, !verifier.code !725
  %11 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %10, i32 0, i32 7, !dbg !1487, !verifier.code !725
  %12 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %11, align 8, !dbg !1487, !verifier.code !725
  %13 = icmp ne void (%struct.sock*, i32)* %12, null, !dbg !1484, !verifier.code !725
  br i1 %13, label %14, label %22, !dbg !1488, !verifier.code !725

; <label>:14:                                     ; preds = %2
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8, !dbg !1489, !verifier.code !725
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 3, !dbg !1490, !verifier.code !725
  %17 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %16, align 8, !dbg !1490, !verifier.code !725
  %18 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %17, i32 0, i32 7, !dbg !1491, !verifier.code !725
  %19 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %18, align 8, !dbg !1491, !verifier.code !725
  %20 = load %struct.sock*, %struct.sock** %3, align 8, !dbg !1492, !verifier.code !725
  %21 = load i32, i32* %4, align 4, !dbg !1493, !verifier.code !725
  call void @devirtbounce.4(void (%struct.sock*, i32)* %19, %struct.sock* %20, i32 %21)
  br label %22, !dbg !1489, !verifier.code !725

; <label>:22:                                     ; preds = %14, %2
  ret void, !dbg !1494, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cong_avoid(%struct.sock*, i32, i32) #0 !dbg !1495 {
  %4 = alloca %struct.sock*, align 8, !verifier.code !725
  %5 = alloca i32, align 4, !verifier.code !725
  %6 = alloca i32, align 4, !verifier.code !725
  %7 = alloca %struct.inet_connection_sock*, align 8, !verifier.code !725
  store %struct.sock* %0, %struct.sock** %4, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.sock** %4, metadata !1496, metadata !DIExpression()), !dbg !1497, !verifier.code !725
  store i32 %1, i32* %5, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1498, metadata !DIExpression()), !dbg !1499, !verifier.code !725
  store i32 %2, i32* %6, align 4, !verifier.code !725
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1500, metadata !DIExpression()), !dbg !1501, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.inet_connection_sock** %7, metadata !1502, metadata !DIExpression()), !dbg !1503, !verifier.code !725
  %8 = load %struct.sock*, %struct.sock** %4, align 8, !dbg !1504, !verifier.code !725
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8), !dbg !1505, !verifier.code !725
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %7, align 8, !dbg !1503, !verifier.code !725
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8, !dbg !1506, !verifier.code !725
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 3, !dbg !1507, !verifier.code !725
  %12 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %11, align 8, !dbg !1507, !verifier.code !725
  %13 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %12, i32 0, i32 5, !dbg !1508, !verifier.code !725
  %14 = load void (%struct.sock*, i32, i32)*, void (%struct.sock*, i32, i32)** %13, align 8, !dbg !1508, !verifier.code !725
  %15 = load %struct.sock*, %struct.sock** %4, align 8, !dbg !1509, !verifier.code !725
  %16 = load i32, i32* %5, align 4, !dbg !1510, !verifier.code !725
  %17 = load i32, i32* %6, align 4, !dbg !1511, !verifier.code !725
  call void @devirtbounce.5(void (%struct.sock*, i32, i32)* %14, %struct.sock* %15, i32 %16, i32 %17)
  %18 = load volatile i64, i64* @jiffies, align 8, !dbg !1512, !verifier.code !725
  %19 = trunc i64 %18 to i32, !dbg !1512, !verifier.code !725
  %20 = load %struct.sock*, %struct.sock** %4, align 8, !dbg !1513, !verifier.code !725
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20), !dbg !1514, !verifier.code !725
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 56, !dbg !1515, !verifier.code !725
  store i32 %19, i32* %22, align 4, !dbg !1516, !verifier.code !725
  ret void, !dbg !1517, !verifier.code !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sk_exit(%struct.net*) #0 !dbg !1518 {
  %2 = alloca %struct.net*, align 8, !verifier.code !725
  store %struct.net* %0, %struct.net** %2, align 8, !verifier.code !725
  call void @llvm.dbg.declare(metadata %struct.net** %2, metadata !1521, metadata !DIExpression()), !dbg !1522, !verifier.code !725
  ret void, !dbg !1523, !verifier.code !725
}

; Function Attrs: noinline nounwind uwtable
define internal void @__VERIFIER_assume(i32) #4 !dbg !1524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1529, !verifier.code !725
  call void @llvm.dbg.value(metadata i32 %0, metadata !1530, metadata !DIExpression()), !dbg !1532, !verifier.code !725
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.1, i32 0, i32 0)) #6, !dbg !1534, !verifier.code !1258
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 %0), !dbg !1535, !verifier.code !1258
  ret void, !dbg !1536, !verifier.code !725
}

declare dso_local void @__SMACK_code(i8*, ...) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @__SMACK_dummy(i32) #5 !dbg !1531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1530, metadata !DIExpression()), !dbg !1537, !verifier.code !725
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.1, i32 0, i32 0)), !dbg !1538, !verifier.code !1258
  ret void, !dbg !1539, !verifier.code !725
}

; Function Attrs: noinline nounwind uwtable
define internal void @__VERIFIER_assert(i32) #4 !dbg !1540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1541, metadata !DIExpression()), !dbg !1542, !verifier.code !725
  call void @llvm.dbg.value(metadata i32 %0, metadata !1530, metadata !DIExpression()), !dbg !1543, !verifier.code !725
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.1, i32 0, i32 0)) #6, !dbg !1545, !verifier.code !1258
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.15, i32 0, i32 0), i32 %0), !dbg !1546, !verifier.code !1258
  ret void, !dbg !1547, !verifier.code !725
}

; Function Attrs: noinline nounwind uwtable
define internal void @__SMACK_check_overflow(i32) #4 !dbg !1548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1549, metadata !DIExpression()), !dbg !1550, !verifier.code !725
  call void @llvm.dbg.value(metadata i32 %0, metadata !1530, metadata !DIExpression()), !dbg !1551, !verifier.code !725
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.1, i32 0, i32 0)) #6, !dbg !1553, !verifier.code !1258
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.17, i32 0, i32 0), i32 %0), !dbg !1554, !verifier.code !1258
  ret void, !dbg !1555, !verifier.code !725
}

declare dso_local signext i8 @__SMACK_nondet_char() #2

declare dso_local signext i8 @__SMACK_nondet_signed_char() #2

declare dso_local zeroext i8 @__SMACK_nondet_unsigned_char() #2

declare dso_local signext i16 @__SMACK_nondet_short() #2

declare dso_local signext i16 @__SMACK_nondet_signed_short() #2

declare dso_local signext i16 @__SMACK_nondet_signed_short_int() #2

declare dso_local zeroext i16 @__SMACK_nondet_unsigned_short() #2

declare dso_local zeroext i16 @__SMACK_nondet_unsigned_short_int() #2

declare dso_local i32 @__SMACK_nondet_int() #2

declare dso_local i32 @__SMACK_nondet_signed_int() #2

declare dso_local i32 @__SMACK_nondet_unsigned() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @__VERIFIER_nondet_unsigned_int() #4 !dbg !1556 {
  %1 = call i32 @__SMACK_nondet_unsigned_int(), !dbg !1559, !verifier.code !1258
  call void @llvm.dbg.value(metadata i32 %1, metadata !1560, metadata !DIExpression()), !dbg !1561, !verifier.code !725
  %2 = call i32 @__SMACK_nondet_unsigned_int(), !dbg !1562, !verifier.code !1258
  call void @llvm.dbg.value(metadata i32 %2, metadata !1563, metadata !DIExpression()), !dbg !1564, !verifier.code !725
  %3 = call i32 @__SMACK_nondet_unsigned_int(), !dbg !1565, !verifier.code !1258
  call void @llvm.dbg.value(metadata i32 %3, metadata !1566, metadata !DIExpression()), !dbg !1567, !verifier.code !725
  %4 = icmp eq i32 %2, 0, !dbg !1568, !verifier.code !725
  br i1 %4, label %5, label %9, !dbg !1569, !verifier.code !725

; <label>:5:                                      ; preds = %0
  %6 = icmp uge i32 %3, -1, !dbg !1570, !verifier.code !725
  br i1 %6, label %7, label %9, !dbg !1571, !verifier.code !725

; <label>:7:                                      ; preds = %5
  %8 = icmp ule i32 %3, -1, !dbg !1572, !verifier.code !1258
  br label %9, !verifier.code !725

; <label>:9:                                      ; preds = %7, %5, %0
  %10 = phi i1 [ false, %5 ], [ false, %0 ], [ %8, %7 ], !dbg !1573, !verifier.code !1258
  %11 = zext i1 %10 to i32, !dbg !1571, !verifier.code !1258
  call void @__VERIFIER_assume(i32 %11), !dbg !1574, !verifier.code !1258
  %12 = icmp uge i32 %1, %2, !dbg !1575, !verifier.code !725
  br i1 %12, label %13, label %15, !dbg !1576, !verifier.code !725

; <label>:13:                                     ; preds = %9
  %14 = icmp ule i32 %1, %3, !dbg !1577, !verifier.code !1258
  br label %15, !verifier.code !725

; <label>:15:                                     ; preds = %13, %9
  %16 = phi i1 [ false, %9 ], [ %14, %13 ], !dbg !1573, !verifier.code !1258
  %17 = zext i1 %16 to i32, !dbg !1576, !verifier.code !1258
  call void @__VERIFIER_assume(i32 %17), !dbg !1578, !verifier.code !1258
  ret i32 %1, !dbg !1579, !verifier.code !725
}

declare dso_local i32 @__SMACK_nondet_unsigned_int() #2

declare dso_local i64 @__SMACK_nondet_long() #2

declare dso_local i64 @__SMACK_nondet_long_int() #2

declare dso_local i64 @__SMACK_nondet_signed_long() #2

declare dso_local i64 @__SMACK_nondet_signed_long_int() #2

declare dso_local i64 @__SMACK_nondet_unsigned_long() #2

declare dso_local i64 @__SMACK_nondet_unsigned_long_int() #2

declare dso_local i64 @__SMACK_nondet_long_long() #2

declare dso_local i64 @__SMACK_nondet_long_long_int() #2

declare dso_local i64 @__SMACK_nondet_signed_long_long() #2

declare dso_local i64 @__SMACK_nondet_signed_long_long_int() #2

declare dso_local i64 @__SMACK_nondet_unsigned_long_long() #2

declare dso_local i64 @__SMACK_nondet_unsigned_long_long_int() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @__VERIFIER_nondet_uint() #4 !dbg !1580 {
  %1 = call i32 @__VERIFIER_nondet_unsigned_int(), !dbg !1581, !verifier.code !1258
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1583, !verifier.code !725
  ret i32 %1, !dbg !1584, !verifier.code !725
}

; Function Attrs: noinline nounwind uwtable
define internal void @__SMACK_decls() #4 !dbg !1585 {
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.20, i32 0, i32 0)), !dbg !1588, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6.21, i32 0, i32 0)), !dbg !1589, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.22, i32 0, i32 0)), !dbg !1590, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8.23, i32 0, i32 0)), !dbg !1591, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.24, i32 0, i32 0)), !dbg !1592, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10.25, i32 0, i32 0)), !dbg !1593, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11.26, i32 0, i32 0)), !dbg !1594, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12.27, i32 0, i32 0)), !dbg !1595, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([361 x i8], [361 x i8]* @.str.13, i32 0, i32 0)), !dbg !1596, !verifier.code !1258
  call void (i8*, ...) @__SMACK_top_decl(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)), !dbg !1597, !verifier.code !1258
  ret void, !dbg !1598, !verifier.code !725
}

declare dso_local void @__SMACK_top_decl(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @__SMACK_init_func_memory_model() #4 !dbg !1599 {
  call void (i8*, ...) @__SMACK_code(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)), !dbg !1600, !verifier.code !1258
  ret void, !dbg !1601, !verifier.code !725
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__SMACK_static_init() {
entry:
  store i64 100, i64* @jiffies
  store i32 0, i32* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 0)
  store i32 1, i32* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 1)
  store void (%struct.sock*)* null, void (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 2)
  store void (%struct.sock*)* null, void (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 3)
  store i32 (%struct.sock*)* @tcp_reno_ssthresh, i32 (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 4)
  store void (%struct.sock*, i32, i32)* @tcp_reno_cong_avoid, void (%struct.sock*, i32, i32)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 5)
  store void (%struct.sock*, i8)* null, void (%struct.sock*, i8)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 6)
  store void (%struct.sock*, i32)* null, void (%struct.sock*, i32)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 7)
  store void (%struct.sock*, i32)* null, void (%struct.sock*, i32)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 8)
  store i32 (%struct.sock*)* @tcp_reno_undo_cwnd, i32 (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 9)
  store void (%struct.sock*, %struct.ack_sample*)* null, void (%struct.sock*, %struct.ack_sample*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 10)
  store i32 (%struct.sock*)* null, i32 (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 11)
  store i32 (%struct.sock*)* null, i32 (%struct.sock*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 12)
  store void (%struct.sock*, %struct.rate_sample*)* null, void (%struct.sock*, %struct.rate_sample*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 13)
  store i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* null, i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 14)
  store i8 114, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 0)
  store i8 101, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 1)
  store i8 110, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 2)
  store i8 111, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 3)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 4)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 5)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 6)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 7)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 8)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 9)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 10)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 11)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 12)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 13)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 14)
  store i8 0, i8* getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 15, i64 15)
  store %struct.module* null, %struct.module** getelementptr inbounds (%struct.tcp_congestion_ops, %struct.tcp_congestion_ops* @tcp_reno, i32 0, i32 16)
  store i8 91, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 0)
  store i8 70, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 1)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 2)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 3)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 4)
  store i8 58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 5)
  store i8 32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 6)
  store i8 116, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 7)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 8)
  store i8 112, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 9)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 10)
  store i8 114, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 11)
  store i8 101, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 12)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 13)
  store i8 111, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 14)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 15)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 16)
  store i8 111, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 17)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 18)
  store i8 103, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 19)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 20)
  store i8 97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 21)
  store i8 118, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 22)
  store i8 111, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 23)
  store i8 105, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 24)
  store i8 100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 25)
  store i8 93, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 26)
  store i8 32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 27)
  store i8 97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 28)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 29)
  store i8 107, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 30)
  store i8 58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 31)
  store i8 37, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 32)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 33)
  store i8 44, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 34)
  store i8 32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 35)
  store i8 97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 36)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 37)
  store i8 107, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 38)
  store i8 101, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 39)
  store i8 100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 40)
  store i8 58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 41)
  store i8 37, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 42)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 43)
  store i8 44, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 44)
  store i8 32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 45)
  store i8 115, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 46)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 47)
  store i8 100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 48)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 49)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 50)
  store i8 119, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 51)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 52)
  store i8 100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 53)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 54)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 55)
  store i8 110, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 56)
  store i8 116, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 57)
  store i8 58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 58)
  store i8 37, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 59)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 60)
  store i8 44, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 61)
  store i8 32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 62)
  store i8 109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 63)
  store i8 97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 64)
  store i8 120, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 65)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 66)
  store i8 112, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 67)
  store i8 97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 68)
  store i8 99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 69)
  store i8 107, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 70)
  store i8 101, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 71)
  store i8 116, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 72)
  store i8 115, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 73)
  store i8 95, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 74)
  store i8 111, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 75)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 76)
  store i8 116, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 77)
  store i8 58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 78)
  store i8 37, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 79)
  store i8 117, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 80)
  store i8 10, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 81)
  store i8 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i32 0, i64 82)
  store i8 68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 0)
  store i8 97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 1)
  store i8 110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 2)
  store i8 103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 3)
  store i8 101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 4)
  store i8 114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 5)
  store i8 111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 6)
  store i8 117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 7)
  store i8 115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 8)
  store i8 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 9)
  store i8 97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 10)
  store i8 114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 11)
  store i8 101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 12)
  store i8 97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 13)
  store i8 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 14)
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i64 15)
  store i8 91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 0)
  store i8 70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 1)
  store i8 117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 2)
  store i8 110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 3)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 4)
  store i8 58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 5)
  store i8 32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 6)
  store i8 116, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 7)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 8)
  store i8 112, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 9)
  store i8 95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 10)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 11)
  store i8 111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 12)
  store i8 110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 13)
  store i8 103, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 14)
  store i8 95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 15)
  store i8 97, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 16)
  store i8 118, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 17)
  store i8 111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 18)
  store i8 105, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 19)
  store i8 100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 20)
  store i8 95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 21)
  store i8 97, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 22)
  store i8 105, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 23)
  store i8 93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 24)
  store i8 32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 25)
  store i8 119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 26)
  store i8 58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 27)
  store i8 37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 28)
  store i8 117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 29)
  store i8 44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 30)
  store i8 32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 31)
  store i8 97, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 32)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 33)
  store i8 107, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 34)
  store i8 101, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 35)
  store i8 100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 36)
  store i8 58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 37)
  store i8 37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 38)
  store i8 117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 39)
  store i8 44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 40)
  store i8 32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 41)
  store i8 115, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 42)
  store i8 110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 43)
  store i8 100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 44)
  store i8 95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 45)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 46)
  store i8 119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 47)
  store i8 110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 48)
  store i8 100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 49)
  store i8 95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 50)
  store i8 99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 51)
  store i8 110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 52)
  store i8 116, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 53)
  store i8 58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 54)
  store i8 37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 55)
  store i8 117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 56)
  store i8 10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 57)
  store i8 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i64 58)
  store i8 91, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 0)
  store i8 70, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 1)
  store i8 117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 2)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 3)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 4)
  store i8 58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 5)
  store i8 32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 6)
  store i8 116, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 7)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 8)
  store i8 112, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 9)
  store i8 95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 10)
  store i8 115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 11)
  store i8 108, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 12)
  store i8 111, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 13)
  store i8 119, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 14)
  store i8 95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 15)
  store i8 115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 16)
  store i8 116, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 17)
  store i8 97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 18)
  store i8 114, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 19)
  store i8 116, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 20)
  store i8 93, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 21)
  store i8 32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 22)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 23)
  store i8 119, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 24)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 25)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 26)
  store i8 58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 27)
  store i8 37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 28)
  store i8 117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 29)
  store i8 44, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 30)
  store i8 32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 31)
  store i8 97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 32)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 33)
  store i8 107, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 34)
  store i8 101, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 35)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 36)
  store i8 58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 37)
  store i8 37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 38)
  store i8 117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 39)
  store i8 44, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 40)
  store i8 32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 41)
  store i8 115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 42)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 43)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 44)
  store i8 95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 45)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 46)
  store i8 119, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 47)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 48)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 49)
  store i8 58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 50)
  store i8 37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 51)
  store i8 117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 52)
  store i8 44, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 53)
  store i8 32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 54)
  store i8 115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 55)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 56)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 57)
  store i8 95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 58)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 59)
  store i8 119, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 60)
  store i8 110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 61)
  store i8 100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 62)
  store i8 95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 63)
  store i8 99, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 64)
  store i8 108, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 65)
  store i8 97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 66)
  store i8 109, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 67)
  store i8 112, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 68)
  store i8 58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 69)
  store i8 37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 70)
  store i8 117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 71)
  store i8 10, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 72)
  store i8 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i32 0, i64 73)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_wmem, i32 0, i64 0)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_wmem, i32 0, i64 1)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_wmem, i32 0, i64 2)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_rmem, i32 0, i64 0)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_rmem, i32 0, i64 1)
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sysctl_tcp_rmem, i32 0, i64 2)
  store i32 1, i32* @sysctl_tcp_timestamps
  store i32 1, i32* @sysctl_tcp_window_scaling
  store i32 1, i32* @sysctl_tcp_sack
  store i32 300, i32* @sysctl_tcp_max_reordering
  store i32 1, i32* @sysctl_tcp_dsack
  store i32 31, i32* @sysctl_tcp_app_win
  store i32 1, i32* @sysctl_tcp_adv_win_scale
  store i32 1000, i32* @sysctl_tcp_challenge_ack_limit
  store i32 8192, i32* @sysctl_tcp_max_orphans
  store i32 2, i32* @sysctl_tcp_frto
  store i32 300, i32* @sysctl_tcp_min_rtt_wlen
  store i32 1, i32* @sysctl_tcp_moderate_rcvbuf
  store i32 3, i32* @sysctl_tcp_early_retrans
  store i32 500, i32* @sysctl_tcp_invalid_ratelimit
  store i32 200, i32* @sysctl_tcp_pacing_ss_ratio
  store i32 120, i32* @sysctl_tcp_pacing_ca_ratio
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @sysctl_tcp_mem, i32 0, i64 0)
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @sysctl_tcp_mem, i32 0, i64 1)
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @sysctl_tcp_mem, i32 0, i64 2)
  store i32 0, i32* @sysctl_tcp_fack
  store i32 0, i32* @sysctl_tcp_stdurg
  store i32 0, i32* @sysctl_tcp_rfc1337
  store i8 102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 0)
  store i8 105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 1)
  store i8 108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 2)
  store i8 101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 3)
  store i8 58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 4)
  store i8 37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 5)
  store i8 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 6)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 7)
  store i8 58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 8)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 9)
  store i8 102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 10)
  store i8 117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 11)
  store i8 110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 12)
  store i8 99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 13)
  store i8 58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 14)
  store i8 37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 15)
  store i8 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 16)
  store i8 44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 17)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 18)
  store i8 116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 19)
  store i8 104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 20)
  store i8 101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 21)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 22)
  store i8 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 23)
  store i8 116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 24)
  store i8 117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 25)
  store i8 98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 26)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 27)
  store i8 102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 28)
  store i8 117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 29)
  store i8 110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 30)
  store i8 99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 31)
  store i8 116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 32)
  store i8 105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 33)
  store i8 111, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 34)
  store i8 110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 35)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 36)
  store i8 105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 37)
  store i8 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 38)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 39)
  store i8 99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 40)
  store i8 97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 41)
  store i8 108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 42)
  store i8 108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 43)
  store i8 101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 44)
  store i8 100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 45)
  store i8 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 46)
  store i8 33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 47)
  store i8 10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 48)
  store i8 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i64 49)
  store i8 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 0)
  store i8 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 1)
  store i8 47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 2)
  store i8 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 3)
  store i8 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 4)
  store i8 47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 5)
  store i8 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 6)
  store i8 116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 7)
  store i8 117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 8)
  store i8 98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 9)
  store i8 95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 10)
  store i8 109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 11)
  store i8 111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 12)
  store i8 100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 13)
  store i8 101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 14)
  store i8 108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 15)
  store i8 47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 16)
  store i8 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 17)
  store i8 111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 18)
  store i8 117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 19)
  store i8 114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 20)
  store i8 99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 21)
  store i8 101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 22)
  store i8 47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 23)
  store i8 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 24)
  store i8 105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 25)
  store i8 109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 26)
  store i8 112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 27)
  store i8 108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 28)
  store i8 101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 29)
  store i8 95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 30)
  store i8 116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 31)
  store i8 99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 32)
  store i8 112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 33)
  store i8 95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 34)
  store i8 105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 35)
  store i8 110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 36)
  store i8 112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 37)
  store i8 117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 38)
  store i8 116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 39)
  store i8 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 40)
  store i8 99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 41)
  store i8 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i64 42)
  store i8 116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 0)
  store i8 99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 1)
  store i8 112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 2)
  store i8 95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 3)
  store i8 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 4)
  store i8 107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 5)
  store i8 98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 6)
  store i8 95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 7)
  store i8 109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 8)
  store i8 97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 9)
  store i8 114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 10)
  store i8 107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 11)
  store i8 95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 12)
  store i8 108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 13)
  store i8 111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 14)
  store i8 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 15)
  store i8 116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 16)
  store i8 95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 17)
  store i8 117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 18)
  store i8 110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 19)
  store i8 99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 20)
  store i8 111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 21)
  store i8 110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 22)
  store i8 100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 23)
  store i8 95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 24)
  store i8 118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 25)
  store i8 101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 26)
  store i8 114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 27)
  store i8 105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 28)
  store i8 102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 29)
  store i8 121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 30)
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tcp_skb_mark_lost_uncond_verify, i32 0, i64 31)
  store i8 116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 0)
  store i8 99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 1)
  store i8 112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 2)
  store i8 95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 3)
  store i8 101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 4)
  store i8 110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 5)
  store i8 116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 6)
  store i8 101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 7)
  store i8 114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 8)
  store i8 95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 9)
  store i8 108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 10)
  store i8 111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 11)
  store i8 115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 12)
  store i8 115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 13)
  store i8 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tcp_enter_loss, i32 0, i64 14)
  store i8 116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 0)
  store i8 99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 1)
  store i8 112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 2)
  store i8 95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 3)
  store i8 101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 4)
  store i8 99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 5)
  store i8 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 6)
  store i8 95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 7)
  store i8 113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 8)
  store i8 117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 9)
  store i8 101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 10)
  store i8 117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 11)
  store i8 101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 12)
  store i8 95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 13)
  store i8 99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 14)
  store i8 119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 15)
  store i8 114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 16)
  store i8 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tcp_ecn_queue_cwr, i32 0, i64 17)
  store i8 116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 0)
  store i8 99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 1)
  store i8 112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 2)
  store i8 95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 3)
  store i8 115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 4)
  store i8 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 5)
  store i8 109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 6)
  store i8 112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 7)
  store i8 108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 8)
  store i8 101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 9)
  store i8 95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 10)
  store i8 114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 11)
  store i8 101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 12)
  store i8 116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 13)
  store i8 114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 14)
  store i8 97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 15)
  store i8 110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 16)
  store i8 115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 17)
  store i8 109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 18)
  store i8 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 19)
  store i8 116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 20)
  store i8 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tcp_simple_retransmit, i32 0, i64 21)
  store i8 116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 0)
  store i8 99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 1)
  store i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 2)
  store i8 95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 3)
  store i8 114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 4)
  store i8 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 5)
  store i8 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 6)
  store i8 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 7)
  store i8 116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 8)
  store i8 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tcp_reset, i32 0, i64 9)
  store i8 91, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 0)
  store i8 66, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 1)
  store i8 101, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 2)
  store i8 102, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 3)
  store i8 111, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 4)
  store i8 114, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 5)
  store i8 101, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 6)
  store i8 32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 7)
  store i8 105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 8)
  store i8 110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 9)
  store i8 105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 10)
  store i8 116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 11)
  store i8 105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 12)
  store i8 97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 13)
  store i8 108, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 14)
  store i8 105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 15)
  store i8 122, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 16)
  store i8 97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 17)
  store i8 116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 18)
  store i8 105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 19)
  store i8 111, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 20)
  store i8 110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 21)
  store i8 93, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 22)
  store i8 32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 23)
  store i8 116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 24)
  store i8 112, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 25)
  store i8 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 26)
  store i8 62, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 27)
  store i8 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 28)
  store i8 110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 29)
  store i8 100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 30)
  store i8 95, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 31)
  store i8 99, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 32)
  store i8 119, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 33)
  store i8 110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 34)
  store i8 100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 35)
  store i8 58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 36)
  store i8 37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 37)
  store i8 117, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 38)
  store i8 44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 39)
  store i8 32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 40)
  store i8 116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 41)
  store i8 112, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 42)
  store i8 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 43)
  store i8 62, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 44)
  store i8 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 45)
  store i8 110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 46)
  store i8 100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 47)
  store i8 95, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 48)
  store i8 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 49)
  store i8 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 50)
  store i8 116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 51)
  store i8 104, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 52)
  store i8 114, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 53)
  store i8 101, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 54)
  store i8 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 55)
  store i8 104, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 56)
  store i8 58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 57)
  store i8 37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 58)
  store i8 117, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 59)
  store i8 10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 60)
  store i8 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i64 61)
  store i8 91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 0)
  store i8 65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 1)
  store i8 102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 2)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 3)
  store i8 101, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 4)
  store i8 114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 5)
  store i8 32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 6)
  store i8 105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 7)
  store i8 110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 8)
  store i8 105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 9)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 10)
  store i8 105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 11)
  store i8 97, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 12)
  store i8 108, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 13)
  store i8 105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 14)
  store i8 122, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 15)
  store i8 97, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 16)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 17)
  store i8 105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 18)
  store i8 111, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 19)
  store i8 110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 20)
  store i8 93, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 21)
  store i8 32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 22)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 23)
  store i8 112, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 24)
  store i8 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 25)
  store i8 62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 26)
  store i8 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 27)
  store i8 110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 28)
  store i8 100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 29)
  store i8 95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 30)
  store i8 99, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 31)
  store i8 119, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 32)
  store i8 110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 33)
  store i8 100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 34)
  store i8 58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 35)
  store i8 37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 36)
  store i8 117, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 37)
  store i8 44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 38)
  store i8 32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 39)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 40)
  store i8 112, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 41)
  store i8 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 42)
  store i8 62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 43)
  store i8 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 44)
  store i8 110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 45)
  store i8 100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 46)
  store i8 95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 47)
  store i8 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 48)
  store i8 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 49)
  store i8 116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 50)
  store i8 104, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 51)
  store i8 114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 52)
  store i8 101, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 53)
  store i8 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 54)
  store i8 104, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 55)
  store i8 58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 56)
  store i8 37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 57)
  store i8 117, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 58)
  store i8 10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 59)
  store i8 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i64 60)
  store i8 67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 0)
  store i8 111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 1)
  store i8 110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 2)
  store i8 103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 3)
  store i8 101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 4)
  store i8 115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 5)
  store i8 116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 6)
  store i8 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 7)
  store i8 111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 8)
  store i8 110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 9)
  store i8 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 10)
  store i8 97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 11)
  store i8 118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 12)
  store i8 111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 13)
  store i8 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 14)
  store i8 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 15)
  store i8 97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 16)
  store i8 110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 17)
  store i8 99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 18)
  store i8 101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 19)
  store i8 10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 20)
  store i8 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 21)
  store i8 67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 0)
  store i8 119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 1)
  store i8 110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 2)
  store i8 100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 3)
  store i8 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 4)
  store i8 114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 5)
  store i8 101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 6)
  store i8 100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 7)
  store i8 117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 8)
  store i8 99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 9)
  store i8 116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 10)
  store i8 105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 11)
  store i8 111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 12)
  store i8 110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 13)
  store i8 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 14)
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i64 15)
  store i8 85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 0)
  store i8 110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 1)
  store i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 2)
  store i8 111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 3)
  store i8 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 4)
  store i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i64 5)
  store i8 116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 0)
  store i8 112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 1)
  store i8 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 2)
  store i8 62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 3)
  store i8 115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 4)
  store i8 110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 5)
  store i8 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 6)
  store i8 95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 7)
  store i8 99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 8)
  store i8 119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 9)
  store i8 110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 10)
  store i8 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 11)
  store i8 58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 12)
  store i8 37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 13)
  store i8 117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 14)
  store i8 10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 15)
  store i8 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i64 16)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.28, i32 0, i32 0), i8** @env_value_str
  store i32 0, i32* @errno_global
  ret void
}

define internal void @devirtbounce(void (%struct.sock*)* %funcPtr, %struct.sock* %arg) {
entry:
  %0 = bitcast void (%struct.sock*)* %funcPtr to i8*
  br label %fail

fail:                                             ; preds = %entry
  ret void
}

define internal void @devirtbounce.1(void (%struct.sock*, i8)* %funcPtr, %struct.sock* %arg, i8 %arg1) {
entry:
  %0 = bitcast void (%struct.sock*, i8)* %funcPtr to i8*
  br label %fail

fail:                                             ; preds = %entry
  ret void
}

define internal void @devirtbounce.2(void (%struct.sock*, %struct.ack_sample*)* %funcPtr, %struct.sock* %arg, %struct.ack_sample* %arg1) {
entry:
  %0 = bitcast void (%struct.sock*, %struct.ack_sample*)* %funcPtr to i8*
  br label %fail

fail:                                             ; preds = %entry
  ret void
}

define internal i32 @devirtbounce.3(i32 (%struct.sock*)* %funcPtr, %struct.sock* %arg) {
entry:
  %0 = bitcast i32 (%struct.sock*)* %funcPtr to i8*
  br label %test.tcp_reno_undo_cwnd

tcp_reno_ssthresh:                                ; preds = %test.tcp_reno_ssthresh
  %1 = call i32 @tcp_reno_ssthresh(%struct.sock* %arg)
  ret i32 %1

tcp_reno_undo_cwnd:                               ; preds = %test.tcp_reno_undo_cwnd
  %2 = call i32 @tcp_reno_undo_cwnd(%struct.sock* %arg)
  ret i32 %2

fail:                                             ; preds = %test.tcp_reno_ssthresh
  unreachable

test.tcp_reno_ssthresh:                           ; preds = %test.tcp_reno_undo_cwnd
  %sc = icmp eq i8* bitcast (i32 (%struct.sock*)* @tcp_reno_ssthresh to i8*), %0
  br i1 %sc, label %tcp_reno_ssthresh, label %fail

test.tcp_reno_undo_cwnd:                          ; preds = %entry
  %sc1 = icmp eq i8* bitcast (i32 (%struct.sock*)* @tcp_reno_undo_cwnd to i8*), %0
  br i1 %sc1, label %tcp_reno_undo_cwnd, label %test.tcp_reno_ssthresh
}

define internal void @devirtbounce.4(void (%struct.sock*, i32)* %funcPtr, %struct.sock* %arg, i32 %arg1) {
entry:
  %0 = bitcast void (%struct.sock*, i32)* %funcPtr to i8*
  br label %fail

fail:                                             ; preds = %entry
  ret void
}

define internal void @devirtbounce.5(void (%struct.sock*, i32, i32)* %funcPtr, %struct.sock* %arg, i32 %arg1, i32 %arg2) {
entry:
  %0 = bitcast void (%struct.sock*, i32, i32)* %funcPtr to i8*
  br label %test.tcp_reno_cong_avoid

tcp_reno_cong_avoid:                              ; preds = %test.tcp_reno_cong_avoid
  call void @tcp_reno_cong_avoid(%struct.sock* %arg, i32 %arg1, i32 %arg2)
  ret void

fail:                                             ; preds = %test.tcp_reno_cong_avoid
  unreachable

test.tcp_reno_cong_avoid:                         ; preds = %entry
  %sc = icmp eq i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_reno_cong_avoid to i8*), %0
  br i1 %sc, label %tcp_reno_cong_avoid, label %fail
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2, !717, !705, !713}
!llvm.ident = !{!720, !720, !720, !720}
!llvm.module.flags = !{!721, !722, !723}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "jiffies", scope: !2, file: !196, line: 12, type: !702, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.1-svn369350-1~exp1~20190820122438.78 (branches/release_80)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !192, globals: !650, nameTableKind: None)
!3 = !DIFile(filename: "main_reno_undo.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!4 = !{!5, !17, !33, !61, !69}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_ca_event", file: !6, line: 326, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../stub_model/header/simple_tcp.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "CA_EVENT_TX_START", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CA_EVENT_CWND_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CA_EVENT_COMPLETE_CWR", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CA_EVENT_LOSS", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CA_EVENT_ECN_NO_CE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "CA_EVENT_ECN_IS_CE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "CA_EVENT_DELAYED_ACK", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CA_EVENT_NON_DELAYED_ACK", value: 7, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "../../stub_model/header/tcp_states.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!20 = !DIEnumerator(name: "TCP_ESTABLISHED", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "TCP_SYN_SENT", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "TCP_SYN_RECV", value: 3, isUnsigned: true)
!23 = !DIEnumerator(name: "TCP_FIN_WAIT1", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "TCP_FIN_WAIT2", value: 5, isUnsigned: true)
!25 = !DIEnumerator(name: "TCP_TIME_WAIT", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "TCP_CLOSE", value: 7, isUnsigned: true)
!27 = !DIEnumerator(name: "TCP_CLOSE_WAIT", value: 8, isUnsigned: true)
!28 = !DIEnumerator(name: "TCP_LAST_ACK", value: 9, isUnsigned: true)
!29 = !DIEnumerator(name: "TCP_LISTEN", value: 10, isUnsigned: true)
!30 = !DIEnumerator(name: "TCP_CLOSING", value: 11, isUnsigned: true)
!31 = !DIEnumerator(name: "TCP_NEW_SYN_RECV", value: 12, isUnsigned: true)
!32 = !DIEnumerator(name: "TCP_MAX_STATES", value: 13, isUnsigned: true)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sock_flags", file: !34, line: 13, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "../../stub_model/header/simple_sock.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!36 = !DIEnumerator(name: "SOCK_DEAD", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "SOCK_DONE", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "SOCK_URGINLINE", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "SOCK_KEEPOPEN", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "SOCK_LINGER", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "SOCK_DESTROY", value: 5, isUnsigned: true)
!42 = !DIEnumerator(name: "SOCK_BROADCAST", value: 6, isUnsigned: true)
!43 = !DIEnumerator(name: "SOCK_TIMESTAMP", value: 7, isUnsigned: true)
!44 = !DIEnumerator(name: "SOCK_ZAPPED", value: 8, isUnsigned: true)
!45 = !DIEnumerator(name: "SOCK_USE_WRITE_QUEUE", value: 9, isUnsigned: true)
!46 = !DIEnumerator(name: "SOCK_DBG", value: 10, isUnsigned: true)
!47 = !DIEnumerator(name: "SOCK_RCVTSTAMP", value: 11, isUnsigned: true)
!48 = !DIEnumerator(name: "SOCK_RCVTSTAMPNS", value: 12, isUnsigned: true)
!49 = !DIEnumerator(name: "SOCK_LOCALROUTE", value: 13, isUnsigned: true)
!50 = !DIEnumerator(name: "SOCK_QUEUE_SHRUNK", value: 14, isUnsigned: true)
!51 = !DIEnumerator(name: "SOCK_MEMALLOC", value: 15, isUnsigned: true)
!52 = !DIEnumerator(name: "SOCK_TIMESTAMPING_RX_SOFTWARE", value: 16, isUnsigned: true)
!53 = !DIEnumerator(name: "SOCK_FASYNC", value: 17, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_RXQ_OVFL", value: 18, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_ZEROCOPY", value: 19, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_WIFI_STATUS", value: 20, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_NOFCS", value: 21, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_FILTER_LOCKED", value: 22, isUnsigned: true)
!59 = !DIEnumerator(name: "SOCK_SELECT_ERR_QUEUE", value: 23, isUnsigned: true)
!60 = !DIEnumerator(name: "SOCK_RCU_FREE", value: 24, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_ca_state", file: !62, line: 138, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "../../stub_model/header/simple_tcp2.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "TCP_CA_Open", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "TCP_CA_Disorder", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "TCP_CA_CWR", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "TCP_CA_Recovery", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "TCP_CA_Loss", value: 4, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 164, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "../../stub_model/header/snmp.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!72 = !DIEnumerator(name: "LINUX_MIB_NUM", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "LINUX_MIB_SYNCOOKIESSENT", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "LINUX_MIB_SYNCOOKIESRECV", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "LINUX_MIB_SYNCOOKIESFAILED", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "LINUX_MIB_EMBRYONICRSTS", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "LINUX_MIB_PRUNECALLED", value: 5, isUnsigned: true)
!78 = !DIEnumerator(name: "LINUX_MIB_RCVPRUNED", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "LINUX_MIB_OFOPRUNED", value: 7, isUnsigned: true)
!80 = !DIEnumerator(name: "LINUX_MIB_OUTOFWINDOWICMPS", value: 8, isUnsigned: true)
!81 = !DIEnumerator(name: "LINUX_MIB_LOCKDROPPEDICMPS", value: 9, isUnsigned: true)
!82 = !DIEnumerator(name: "LINUX_MIB_ARPFILTER", value: 10, isUnsigned: true)
!83 = !DIEnumerator(name: "LINUX_MIB_TIMEWAITED", value: 11, isUnsigned: true)
!84 = !DIEnumerator(name: "LINUX_MIB_TIMEWAITRECYCLED", value: 12, isUnsigned: true)
!85 = !DIEnumerator(name: "LINUX_MIB_TIMEWAITKILLED", value: 13, isUnsigned: true)
!86 = !DIEnumerator(name: "LINUX_MIB_PAWSACTIVEREJECTED", value: 14, isUnsigned: true)
!87 = !DIEnumerator(name: "LINUX_MIB_PAWSESTABREJECTED", value: 15, isUnsigned: true)
!88 = !DIEnumerator(name: "LINUX_MIB_DELAYEDACKS", value: 16, isUnsigned: true)
!89 = !DIEnumerator(name: "LINUX_MIB_DELAYEDACKLOCKED", value: 17, isUnsigned: true)
!90 = !DIEnumerator(name: "LINUX_MIB_DELAYEDACKLOST", value: 18, isUnsigned: true)
!91 = !DIEnumerator(name: "LINUX_MIB_LISTENOVERFLOWS", value: 19, isUnsigned: true)
!92 = !DIEnumerator(name: "LINUX_MIB_LISTENDROPS", value: 20, isUnsigned: true)
!93 = !DIEnumerator(name: "LINUX_MIB_TCPPREQUEUED", value: 21, isUnsigned: true)
!94 = !DIEnumerator(name: "LINUX_MIB_TCPDIRECTCOPYFROMBACKLOG", value: 22, isUnsigned: true)
!95 = !DIEnumerator(name: "LINUX_MIB_TCPDIRECTCOPYFROMPREQUEUE", value: 23, isUnsigned: true)
!96 = !DIEnumerator(name: "LINUX_MIB_TCPPREQUEUEDROPPED", value: 24, isUnsigned: true)
!97 = !DIEnumerator(name: "LINUX_MIB_TCPHPHITS", value: 25, isUnsigned: true)
!98 = !DIEnumerator(name: "LINUX_MIB_TCPHPHITSTOUSER", value: 26, isUnsigned: true)
!99 = !DIEnumerator(name: "LINUX_MIB_TCPPUREACKS", value: 27, isUnsigned: true)
!100 = !DIEnumerator(name: "LINUX_MIB_TCPHPACKS", value: 28, isUnsigned: true)
!101 = !DIEnumerator(name: "LINUX_MIB_TCPRENORECOVERY", value: 29, isUnsigned: true)
!102 = !DIEnumerator(name: "LINUX_MIB_TCPSACKRECOVERY", value: 30, isUnsigned: true)
!103 = !DIEnumerator(name: "LINUX_MIB_TCPSACKRENEGING", value: 31, isUnsigned: true)
!104 = !DIEnumerator(name: "LINUX_MIB_TCPFACKREORDER", value: 32, isUnsigned: true)
!105 = !DIEnumerator(name: "LINUX_MIB_TCPSACKREORDER", value: 33, isUnsigned: true)
!106 = !DIEnumerator(name: "LINUX_MIB_TCPRENOREORDER", value: 34, isUnsigned: true)
!107 = !DIEnumerator(name: "LINUX_MIB_TCPTSREORDER", value: 35, isUnsigned: true)
!108 = !DIEnumerator(name: "LINUX_MIB_TCPFULLUNDO", value: 36, isUnsigned: true)
!109 = !DIEnumerator(name: "LINUX_MIB_TCPPARTIALUNDO", value: 37, isUnsigned: true)
!110 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKUNDO", value: 38, isUnsigned: true)
!111 = !DIEnumerator(name: "LINUX_MIB_TCPLOSSUNDO", value: 39, isUnsigned: true)
!112 = !DIEnumerator(name: "LINUX_MIB_TCPLOSTRETRANSMIT", value: 40, isUnsigned: true)
!113 = !DIEnumerator(name: "LINUX_MIB_TCPRENOFAILURES", value: 41, isUnsigned: true)
!114 = !DIEnumerator(name: "LINUX_MIB_TCPSACKFAILURES", value: 42, isUnsigned: true)
!115 = !DIEnumerator(name: "LINUX_MIB_TCPLOSSFAILURES", value: 43, isUnsigned: true)
!116 = !DIEnumerator(name: "LINUX_MIB_TCPFASTRETRANS", value: 44, isUnsigned: true)
!117 = !DIEnumerator(name: "LINUX_MIB_TCPFORWARDRETRANS", value: 45, isUnsigned: true)
!118 = !DIEnumerator(name: "LINUX_MIB_TCPSLOWSTARTRETRANS", value: 46, isUnsigned: true)
!119 = !DIEnumerator(name: "LINUX_MIB_TCPTIMEOUTS", value: 47, isUnsigned: true)
!120 = !DIEnumerator(name: "LINUX_MIB_TCPLOSSPROBES", value: 48, isUnsigned: true)
!121 = !DIEnumerator(name: "LINUX_MIB_TCPLOSSPROBERECOVERY", value: 49, isUnsigned: true)
!122 = !DIEnumerator(name: "LINUX_MIB_TCPRENORECOVERYFAIL", value: 50, isUnsigned: true)
!123 = !DIEnumerator(name: "LINUX_MIB_TCPSACKRECOVERYFAIL", value: 51, isUnsigned: true)
!124 = !DIEnumerator(name: "LINUX_MIB_TCPSCHEDULERFAILED", value: 52, isUnsigned: true)
!125 = !DIEnumerator(name: "LINUX_MIB_TCPRCVCOLLAPSED", value: 53, isUnsigned: true)
!126 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKOLDSENT", value: 54, isUnsigned: true)
!127 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKOFOSENT", value: 55, isUnsigned: true)
!128 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKRECV", value: 56, isUnsigned: true)
!129 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKOFORECV", value: 57, isUnsigned: true)
!130 = !DIEnumerator(name: "LINUX_MIB_TCPABORTONDATA", value: 58, isUnsigned: true)
!131 = !DIEnumerator(name: "LINUX_MIB_TCPABORTONCLOSE", value: 59, isUnsigned: true)
!132 = !DIEnumerator(name: "LINUX_MIB_TCPABORTONMEMORY", value: 60, isUnsigned: true)
!133 = !DIEnumerator(name: "LINUX_MIB_TCPABORTONTIMEOUT", value: 61, isUnsigned: true)
!134 = !DIEnumerator(name: "LINUX_MIB_TCPABORTONLINGER", value: 62, isUnsigned: true)
!135 = !DIEnumerator(name: "LINUX_MIB_TCPABORTFAILED", value: 63, isUnsigned: true)
!136 = !DIEnumerator(name: "LINUX_MIB_TCPMEMORYPRESSURES", value: 64, isUnsigned: true)
!137 = !DIEnumerator(name: "LINUX_MIB_TCPSACKDISCARD", value: 65, isUnsigned: true)
!138 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKIGNOREDOLD", value: 66, isUnsigned: true)
!139 = !DIEnumerator(name: "LINUX_MIB_TCPDSACKIGNOREDNOUNDO", value: 67, isUnsigned: true)
!140 = !DIEnumerator(name: "LINUX_MIB_TCPSPURIOUSRTOS", value: 68, isUnsigned: true)
!141 = !DIEnumerator(name: "LINUX_MIB_TCPMD5NOTFOUND", value: 69, isUnsigned: true)
!142 = !DIEnumerator(name: "LINUX_MIB_TCPMD5UNEXPECTED", value: 70, isUnsigned: true)
!143 = !DIEnumerator(name: "LINUX_MIB_TCPMD5FAILURE", value: 71, isUnsigned: true)
!144 = !DIEnumerator(name: "LINUX_MIB_SACKSHIFTED", value: 72, isUnsigned: true)
!145 = !DIEnumerator(name: "LINUX_MIB_SACKMERGED", value: 73, isUnsigned: true)
!146 = !DIEnumerator(name: "LINUX_MIB_SACKSHIFTFALLBACK", value: 74, isUnsigned: true)
!147 = !DIEnumerator(name: "LINUX_MIB_TCPBACKLOGDROP", value: 75, isUnsigned: true)
!148 = !DIEnumerator(name: "LINUX_MIB_PFMEMALLOCDROP", value: 76, isUnsigned: true)
!149 = !DIEnumerator(name: "LINUX_MIB_TCPMINTTLDROP", value: 77, isUnsigned: true)
!150 = !DIEnumerator(name: "LINUX_MIB_TCPDEFERACCEPTDROP", value: 78, isUnsigned: true)
!151 = !DIEnumerator(name: "LINUX_MIB_IPRPFILTER", value: 79, isUnsigned: true)
!152 = !DIEnumerator(name: "LINUX_MIB_TCPTIMEWAITOVERFLOW", value: 80, isUnsigned: true)
!153 = !DIEnumerator(name: "LINUX_MIB_TCPREQQFULLDOCOOKIES", value: 81, isUnsigned: true)
!154 = !DIEnumerator(name: "LINUX_MIB_TCPREQQFULLDROP", value: 82, isUnsigned: true)
!155 = !DIEnumerator(name: "LINUX_MIB_TCPRETRANSFAIL", value: 83, isUnsigned: true)
!156 = !DIEnumerator(name: "LINUX_MIB_TCPRCVCOALESCE", value: 84, isUnsigned: true)
!157 = !DIEnumerator(name: "LINUX_MIB_TCPOFOQUEUE", value: 85, isUnsigned: true)
!158 = !DIEnumerator(name: "LINUX_MIB_TCPOFODROP", value: 86, isUnsigned: true)
!159 = !DIEnumerator(name: "LINUX_MIB_TCPOFOMERGE", value: 87, isUnsigned: true)
!160 = !DIEnumerator(name: "LINUX_MIB_TCPCHALLENGEACK", value: 88, isUnsigned: true)
!161 = !DIEnumerator(name: "LINUX_MIB_TCPSYNCHALLENGE", value: 89, isUnsigned: true)
!162 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENACTIVE", value: 90, isUnsigned: true)
!163 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENACTIVEFAIL", value: 91, isUnsigned: true)
!164 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENPASSIVE", value: 92, isUnsigned: true)
!165 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENPASSIVEFAIL", value: 93, isUnsigned: true)
!166 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENLISTENOVERFLOW", value: 94, isUnsigned: true)
!167 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENCOOKIEREQD", value: 95, isUnsigned: true)
!168 = !DIEnumerator(name: "LINUX_MIB_TCPFASTOPENBLACKHOLE", value: 96, isUnsigned: true)
!169 = !DIEnumerator(name: "LINUX_MIB_TCPSPURIOUS_RTX_HOSTQUEUES", value: 97, isUnsigned: true)
!170 = !DIEnumerator(name: "LINUX_MIB_BUSYPOLLRXPACKETS", value: 98, isUnsigned: true)
!171 = !DIEnumerator(name: "LINUX_MIB_TCPAUTOCORKING", value: 99, isUnsigned: true)
!172 = !DIEnumerator(name: "LINUX_MIB_TCPFROMZEROWINDOWADV", value: 100, isUnsigned: true)
!173 = !DIEnumerator(name: "LINUX_MIB_TCPTOZEROWINDOWADV", value: 101, isUnsigned: true)
!174 = !DIEnumerator(name: "LINUX_MIB_TCPWANTZEROWINDOWADV", value: 102, isUnsigned: true)
!175 = !DIEnumerator(name: "LINUX_MIB_TCPSYNRETRANS", value: 103, isUnsigned: true)
!176 = !DIEnumerator(name: "LINUX_MIB_TCPORIGDATASENT", value: 104, isUnsigned: true)
!177 = !DIEnumerator(name: "LINUX_MIB_TCPHYSTARTTRAINDETECT", value: 105, isUnsigned: true)
!178 = !DIEnumerator(name: "LINUX_MIB_TCPHYSTARTTRAINCWND", value: 106, isUnsigned: true)
!179 = !DIEnumerator(name: "LINUX_MIB_TCPHYSTARTDELAYDETECT", value: 107, isUnsigned: true)
!180 = !DIEnumerator(name: "LINUX_MIB_TCPHYSTARTDELAYCWND", value: 108, isUnsigned: true)
!181 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDSYNRECV", value: 109, isUnsigned: true)
!182 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDPAWS", value: 110, isUnsigned: true)
!183 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDSEQ", value: 111, isUnsigned: true)
!184 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDFINWAIT2", value: 112, isUnsigned: true)
!185 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDTIMEWAIT", value: 113, isUnsigned: true)
!186 = !DIEnumerator(name: "LINUX_MIB_TCPACKSKIPPEDCHALLENGE", value: 114, isUnsigned: true)
!187 = !DIEnumerator(name: "LINUX_MIB_TCPWINPROBE", value: 115, isUnsigned: true)
!188 = !DIEnumerator(name: "LINUX_MIB_TCPKEEPALIVE", value: 116, isUnsigned: true)
!189 = !DIEnumerator(name: "LINUX_MIB_TCPMTUPFAIL", value: 117, isUnsigned: true)
!190 = !DIEnumerator(name: "LINUX_MIB_TCPMTUPSUCCESS", value: 118, isUnsigned: true)
!191 = !DIEnumerator(name: "__LINUX_MIB_MAX", value: 119, isUnsigned: true)
!192 = !{!193, !194, !195, !198, !440, !649, !274}
!193 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!194 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !196, line: 38, baseType: !197)
!196 = !DIFile(filename: "../../stub_model/header/share.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!197 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_connection_sock", file: !200, line: 12, size: 1600, elements: !201)
!200 = !DIFile(filename: "../../stub_model/header/simple_inet_connection_sock.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!201 = !{!202, !273, !276, !277, !401, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !427, !435, !436}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_inet", scope: !199, file: !200, line: 13, baseType: !203, size: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_sock", file: !204, line: 11, size: 256, elements: !205)
!204 = !DIFile(filename: "../../stub_model/header/simple_inet_sock.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !203, file: !204, line: 13, baseType: !207, size: 256)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !34, line: 51, size: 256, elements: !208)
!208 = !{!209, !271, !272}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__sk_common", scope: !207, file: !34, line: 52, baseType: !210, size: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sock_common", file: !34, line: 44, size: 192, elements: !211)
!211 = !{!212, !215, !269}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "skc_state", scope: !210, file: !34, line: 46, baseType: !213, size: 8)
!213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!214 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "skc_net", scope: !210, file: !34, line: 47, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "possible_net_t", file: !217, line: 22, baseType: !218)
!217 = !DIFile(filename: "../../stub_model/header/simple_net_namespace.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 18, size: 64, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !218, file: !217, line: 20, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !217, line: 14, size: 1280, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !222, file: !217, line: 15, baseType: !225, size: 1280)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv4", file: !226, line: 12, size: 1280, elements: !227)
!226 = !DIFile(filename: "../../stub_model/header/simple_netns_ipv4.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_all", scope: !225, file: !226, line: 52, baseType: !194, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_broadcasts", scope: !225, file: !226, line: 53, baseType: !194, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ignore_bogus_error_responses", scope: !225, file: !226, line: 54, baseType: !194, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratelimit", scope: !225, file: !226, line: 55, baseType: !194, size: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratemask", scope: !225, file: !226, line: 56, baseType: !194, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_errors_use_inbound_ifaddr", scope: !225, file: !226, line: 57, baseType: !194, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn", scope: !225, file: !226, line: 61, baseType: !194, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn_fallback", scope: !225, file: !226, line: 62, baseType: !194, size: 32, offset: 224)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_default_ttl", scope: !225, file: !226, line: 64, baseType: !194, size: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_no_pmtu_disc", scope: !225, file: !226, line: 65, baseType: !194, size: 32, offset: 288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_use_pmtu", scope: !225, file: !226, line: 66, baseType: !194, size: 32, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_nonlocal_bind", scope: !225, file: !226, line: 67, baseType: !194, size: 32, offset: 352)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_dynaddr", scope: !225, file: !226, line: 69, baseType: !194, size: 32, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_early_demux", scope: !225, file: !226, line: 70, baseType: !194, size: 32, offset: 416)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_demux", scope: !225, file: !226, line: 71, baseType: !194, size: 32, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_early_demux", scope: !225, file: !226, line: 72, baseType: !194, size: 32, offset: 480)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fwmark_reflect", scope: !225, file: !226, line: 74, baseType: !194, size: 32, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fwmark_accept", scope: !225, file: !226, line: 75, baseType: !194, size: 32, offset: 544)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probing", scope: !225, file: !226, line: 79, baseType: !194, size: 32, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_base_mss", scope: !225, file: !226, line: 80, baseType: !194, size: 32, offset: 608)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_threshold", scope: !225, file: !226, line: 81, baseType: !194, size: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_interval", scope: !225, file: !226, line: 82, baseType: !250, size: 32, offset: 672)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !196, line: 31, baseType: !7)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_time", scope: !225, file: !226, line: 84, baseType: !194, size: 32, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_probes", scope: !225, file: !226, line: 85, baseType: !194, size: 32, offset: 736)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_intvl", scope: !225, file: !226, line: 86, baseType: !194, size: 32, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_retries", scope: !225, file: !226, line: 88, baseType: !194, size: 32, offset: 800)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_synack_retries", scope: !225, file: !226, line: 89, baseType: !194, size: 32, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syncookies", scope: !225, file: !226, line: 90, baseType: !194, size: 32, offset: 864)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reordering", scope: !225, file: !226, line: 91, baseType: !194, size: 32, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries1", scope: !225, file: !226, line: 92, baseType: !194, size: 32, offset: 928)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries2", scope: !225, file: !226, line: 93, baseType: !194, size: 32, offset: 960)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_orphan_retries", scope: !225, file: !226, line: 94, baseType: !194, size: 32, offset: 992)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fin_timeout", scope: !225, file: !226, line: 95, baseType: !194, size: 32, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_notsent_lowat", scope: !225, file: !226, line: 96, baseType: !7, size: 32, offset: 1056)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tw_reuse", scope: !225, file: !226, line: 97, baseType: !194, size: 32, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_syn_backlog", scope: !225, file: !226, line: 99, baseType: !194, size: 32, offset: 1120)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_memberships", scope: !225, file: !226, line: 105, baseType: !194, size: 32, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_msf", scope: !225, file: !226, line: 106, baseType: !194, size: 32, offset: 1184)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_llm_reports", scope: !225, file: !226, line: 107, baseType: !194, size: 32, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_qrv", scope: !225, file: !226, line: 108, baseType: !194, size: 32, offset: 1248)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "skc_flags", scope: !210, file: !34, line: 48, baseType: !270, size: 64, offset: 128)
!270 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sk_rcvbuf", scope: !207, file: !34, line: 57, baseType: !194, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sk_sndbuf", scope: !207, file: !34, line: 58, baseType: !194, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_rto", scope: !199, file: !200, line: 14, baseType: !274, size: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !275, line: 26, baseType: !7)
!275 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_pmtu_cookie", scope: !199, file: !200, line: 15, baseType: !274, size: 32, offset: 288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ca_ops", scope: !199, file: !200, line: 16, baseType: !278, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_congestion_ops", file: !6, line: 379, size: 1088, elements: !281)
!281 = !{!282, !283, !284, !289, !290, !294, !298, !303, !307, !311, !312, !324, !325, !326, !357, !393, !398}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !280, file: !6, line: 380, baseType: !250, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !6, line: 381, baseType: !250, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !280, file: !6, line: 384, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !280, file: !6, line: 386, baseType: !285, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !280, file: !6, line: 389, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!250, !288}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "cong_avoid", scope: !280, file: !6, line: 391, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !288, !250, !250}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !280, file: !6, line: 393, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !288, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !196, line: 29, baseType: !214)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd_event", scope: !280, file: !6, line: 395, baseType: !304, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !288, !5}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "in_ack_event", scope: !280, file: !6, line: 397, baseType: !308, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !288, !250}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "undo_cwnd", scope: !280, file: !6, line: 399, baseType: !291, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pkts_acked", scope: !280, file: !6, line: 401, baseType: !313, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !288, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ack_sample", file: !6, line: 360, size: 96, elements: !319)
!319 = !{!320, !321, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkts_acked", scope: !318, file: !6, line: 361, baseType: !250, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_us", scope: !318, file: !6, line: 362, baseType: !322, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !196, line: 34, baseType: !194)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight", scope: !318, file: !6, line: 363, baseType: !250, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tso_segs_goal", scope: !280, file: !6, line: 403, baseType: !291, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf_expand", scope: !280, file: !6, line: 405, baseType: !291, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cong_control", scope: !280, file: !6, line: 409, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !288, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rate_sample", file: !6, line: 366, size: 384, elements: !333)
!333 = !{!334, !347, !348, !349, !350, !351, !352, !353, !354, !356}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "prior_mstamp", scope: !332, file: !6, line: 367, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_mstamp", file: !336, line: 46, size: 64, elements: !337)
!336 = !DIFile(filename: "../../stub_model/header/simple_skbuff.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 47, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 47, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "v64", scope: !339, file: !336, line: 48, baseType: !195, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !336, line: 49, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !336, line: 49, size: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "stamp_us", scope: !343, file: !336, line: 50, baseType: !250, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "stamp_jiffies", scope: !343, file: !336, line: 51, baseType: !250, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "prior_delivered", scope: !332, file: !6, line: 368, baseType: !250, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "delivered", scope: !332, file: !6, line: 369, baseType: !322, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "interval_us", scope: !332, file: !6, line: 370, baseType: !193, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_us", scope: !332, file: !6, line: 371, baseType: !193, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "losses", scope: !332, file: !6, line: 372, baseType: !194, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "acked_sacked", scope: !332, file: !6, line: 373, baseType: !250, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "prior_in_flight", scope: !332, file: !6, line: 374, baseType: !250, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_app_limited", scope: !332, file: !6, line: 375, baseType: !355, size: 8, offset: 352)
!355 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_retrans", scope: !332, file: !6, line: 376, baseType: !355, size: 8, offset: 360)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !280, file: !6, line: 411, baseType: !358, size: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !288, !250, !363, !364}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !362, line: 62, baseType: !270)
!362 = !DIFile(filename: "/usr/lib/llvm-8/lib/clang/8.0.1/include/stddef.h", directory: "")
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tcp_cc_info", file: !366, line: 62, size: 160, elements: !367)
!366 = !DIFile(filename: "../../stub_model/header/simple_inet_diag.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!367 = !{!368, !375, !385}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vegas", scope: !365, file: !366, line: 63, baseType: !369, size: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcpvegas_info", file: !366, line: 34, size: 128, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tcpv_enabled", scope: !369, file: !366, line: 35, baseType: !274, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tcpv_rttcnt", scope: !369, file: !366, line: 36, baseType: !274, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tcpv_rtt", scope: !369, file: !366, line: 37, baseType: !274, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tcpv_minrtt", scope: !369, file: !366, line: 38, baseType: !274, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp", scope: !365, file: !366, line: 64, baseType: !376, size: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_dctcp_info", file: !366, line: 43, size: 128, elements: !377)
!377 = !{!378, !381, !382, !383, !384}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp_enabled", scope: !376, file: !366, line: 44, baseType: !379, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !275, line: 23, baseType: !380)
!380 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp_ce_state", scope: !376, file: !366, line: 45, baseType: !379, size: 16, offset: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp_alpha", scope: !376, file: !366, line: 46, baseType: !274, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp_ab_ecn", scope: !376, file: !366, line: 47, baseType: !274, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dctcp_ab_tot", scope: !376, file: !366, line: 48, baseType: !274, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "bbr", scope: !365, file: !366, line: 65, baseType: !386, size: 160)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_bbr_info", file: !366, line: 53, size: 160, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bbr_bw_lo", scope: !386, file: !366, line: 55, baseType: !274, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bbr_bw_hi", scope: !386, file: !366, line: 56, baseType: !274, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "bbr_min_rtt", scope: !386, file: !366, line: 57, baseType: !274, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "bbr_pacing_gain", scope: !386, file: !366, line: 58, baseType: !274, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bbr_cwnd_gain", scope: !386, file: !366, line: 59, baseType: !274, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !6, line: 414, baseType: !394, size: 128, offset: 896)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 128, elements: !396)
!395 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!396 = !{!397}
!397 = !DISubrange(count: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !280, file: !6, line: 415, baseType: !399, size: 64, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 415, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_sync_mss", scope: !199, file: !200, line: 17, baseType: !402, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!7, !288, !250}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ca_state", scope: !199, file: !200, line: 18, baseType: !406, size: 6, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !275, line: 20, baseType: !214)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ca_setsockopt", scope: !199, file: !200, line: 19, baseType: !406, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ca_dst_locked", scope: !199, file: !200, line: 20, baseType: !406, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_retransmits", scope: !199, file: !200, line: 21, baseType: !406, size: 8, offset: 456)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_pending", scope: !199, file: !200, line: 22, baseType: !406, size: 8, offset: 464)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_backoff", scope: !199, file: !200, line: 23, baseType: !406, size: 8, offset: 472)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_syn_retries", scope: !199, file: !200, line: 24, baseType: !406, size: 8, offset: 480)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_probes_out", scope: !199, file: !200, line: 25, baseType: !406, size: 8, offset: 488)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ext_hdr_len", scope: !199, file: !200, line: 26, baseType: !379, size: 16, offset: 496)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ack", scope: !199, file: !200, line: 37, baseType: !416, size: 192, offset: 512)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !200, line: 27, size: 192, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !416, file: !200, line: 28, baseType: !406, size: 8)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !416, file: !200, line: 29, baseType: !406, size: 8, offset: 8)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pingpong", scope: !416, file: !200, line: 30, baseType: !406, size: 8, offset: 16)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !416, file: !200, line: 31, baseType: !406, size: 8, offset: 24)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ato", scope: !416, file: !200, line: 32, baseType: !274, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !416, file: !200, line: 33, baseType: !270, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lrcvtime", scope: !416, file: !200, line: 34, baseType: !274, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "last_seg_size", scope: !416, file: !200, line: 35, baseType: !379, size: 16, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_mss", scope: !416, file: !200, line: 36, baseType: !379, size: 16, offset: 176)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_mtup", scope: !199, file: !200, line: 49, baseType: !428, size: 160, offset: 704)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !200, line: 38, size: 160, elements: !429)
!429 = !{!430, !431, !432, !433, !434}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !428, file: !200, line: 39, baseType: !194, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "search_high", scope: !428, file: !200, line: 42, baseType: !194, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "search_low", scope: !428, file: !200, line: 43, baseType: !194, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "probe_size", scope: !428, file: !200, line: 46, baseType: !194, size: 32, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "probe_timestamp", scope: !428, file: !200, line: 48, baseType: !250, size: 32, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_user_timeout", scope: !199, file: !200, line: 50, baseType: !250, size: 32, offset: 864)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "icsk_ca_priv", scope: !199, file: !200, line: 52, baseType: !437, size: 704, offset: 896)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 704, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 11)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_sock", file: !442, line: 39, size: 6272, elements: !443)
!442 = !DIFile(filename: "../../stub_model/header/simple_tcp_sock.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!443 = !{!444, !445, !447, !448, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !481, !482, !483, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !585, !586, !597, !598, !606, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !629, !635, !640, !641, !644, !647}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "inet_conn", scope: !441, file: !442, line: 41, baseType: !199, size: 1600)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_header_len", scope: !441, file: !442, line: 42, baseType: !446, size: 16, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !196, line: 30, baseType: !380)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gso_segs", scope: !441, file: !442, line: 43, baseType: !446, size: 16, offset: 1616)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pred_flags", scope: !441, file: !442, line: 49, baseType: !449, size: 32, offset: 1632)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !450, line: 30, baseType: !274)
!450 = !DIFile(filename: "/usr/include/linux/types.h", directory: "")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !441, file: !442, line: 56, baseType: !195, size: 64, offset: 1664)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "segs_in", scope: !441, file: !442, line: 60, baseType: !250, size: 32, offset: 1728)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "data_segs_in", scope: !441, file: !442, line: 63, baseType: !250, size: 32, offset: 1760)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !441, file: !442, line: 66, baseType: !250, size: 32, offset: 1792)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "copied_seq", scope: !441, file: !442, line: 67, baseType: !250, size: 32, offset: 1824)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wup", scope: !441, file: !442, line: 68, baseType: !250, size: 32, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !441, file: !442, line: 69, baseType: !250, size: 32, offset: 1888)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "segs_out", scope: !441, file: !442, line: 70, baseType: !250, size: 32, offset: 1920)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "data_segs_out", scope: !441, file: !442, line: 73, baseType: !250, size: 32, offset: 1952)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !441, file: !442, line: 76, baseType: !195, size: 64, offset: 1984)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "snd_una", scope: !441, file: !442, line: 80, baseType: !250, size: 32, offset: 2048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "snd_sml", scope: !441, file: !442, line: 81, baseType: !250, size: 32, offset: 2080)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_tstamp", scope: !441, file: !442, line: 82, baseType: !250, size: 32, offset: 2112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lsndtime", scope: !441, file: !442, line: 83, baseType: !250, size: 32, offset: 2144)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "last_oow_ack_time", scope: !441, file: !442, line: 84, baseType: !250, size: 32, offset: 2176)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tsoffset", scope: !441, file: !442, line: 86, baseType: !250, size: 32, offset: 2208)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !441, file: !442, line: 90, baseType: !250, size: 32, offset: 2240)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !441, file: !442, line: 91, baseType: !250, size: 32, offset: 2272)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "max_window", scope: !441, file: !442, line: 92, baseType: !250, size: 32, offset: 2304)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mss_cache", scope: !441, file: !442, line: 93, baseType: !250, size: 32, offset: 2336)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "window_clamp", scope: !441, file: !442, line: 95, baseType: !250, size: 32, offset: 2368)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ssthresh", scope: !441, file: !442, line: 96, baseType: !250, size: 32, offset: 2400)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rack", scope: !441, file: !442, line: 105, baseType: !474, size: 192, offset: 2432)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_rack", file: !442, line: 99, size: 192, elements: !475)
!475 = !{!476, !477, !478, !479, !480}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mstamp", scope: !474, file: !442, line: 100, baseType: !335, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_us", scope: !474, file: !442, line: 101, baseType: !250, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "end_seq", scope: !474, file: !442, line: 102, baseType: !250, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "advanced", scope: !474, file: !442, line: 103, baseType: !302, size: 8, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reord", scope: !474, file: !442, line: 104, baseType: !302, size: 8, offset: 136)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "advmss", scope: !441, file: !442, line: 106, baseType: !446, size: 16, offset: 2624)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "chrono_start", scope: !441, file: !442, line: 107, baseType: !250, size: 32, offset: 2656)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chrono_stat", scope: !441, file: !442, line: 108, baseType: !484, size: 96, offset: 2688)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 96, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 3)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "chrono_type", scope: !441, file: !442, line: 109, baseType: !302, size: 2, offset: 2784, flags: DIFlagBitField, extraData: i64 2784)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rate_app_limited", scope: !441, file: !442, line: 110, baseType: !302, size: 1, offset: 2786, flags: DIFlagBitField, extraData: i64 2784)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen_connect", scope: !441, file: !442, line: 111, baseType: !302, size: 1, offset: 2787, flags: DIFlagBitField, extraData: i64 2784)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !441, file: !442, line: 112, baseType: !302, size: 4, offset: 2788, flags: DIFlagBitField, extraData: i64 2784)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nonagle", scope: !441, file: !442, line: 113, baseType: !302, size: 4, offset: 2792, flags: DIFlagBitField, extraData: i64 2784)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "thin_lto", scope: !441, file: !442, line: 114, baseType: !302, size: 1, offset: 2796, flags: DIFlagBitField, extraData: i64 2784)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !441, file: !442, line: 115, baseType: !302, size: 1, offset: 2797, flags: DIFlagBitField, extraData: i64 2784)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "repair", scope: !441, file: !442, line: 116, baseType: !302, size: 1, offset: 2798, flags: DIFlagBitField, extraData: i64 2784)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "frto", scope: !441, file: !442, line: 117, baseType: !302, size: 1, offset: 2799, flags: DIFlagBitField, extraData: i64 2784)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "repair_queue", scope: !441, file: !442, line: 118, baseType: !302, size: 8, offset: 2800)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "syn_data", scope: !441, file: !442, line: 119, baseType: !302, size: 1, offset: 2808, flags: DIFlagBitField, extraData: i64 2808)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "syn_fastopen", scope: !441, file: !442, line: 120, baseType: !302, size: 1, offset: 2809, flags: DIFlagBitField, extraData: i64 2808)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "syn_fastopen_exp", scope: !441, file: !442, line: 121, baseType: !302, size: 1, offset: 2810, flags: DIFlagBitField, extraData: i64 2808)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "syn_fastopen_ch", scope: !441, file: !442, line: 122, baseType: !302, size: 1, offset: 2811, flags: DIFlagBitField, extraData: i64 2808)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "syn_data_acked", scope: !441, file: !442, line: 123, baseType: !302, size: 1, offset: 2812, flags: DIFlagBitField, extraData: i64 2808)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "save_syn", scope: !441, file: !442, line: 124, baseType: !302, size: 1, offset: 2813, flags: DIFlagBitField, extraData: i64 2808)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "is_cwnd_limited", scope: !441, file: !442, line: 125, baseType: !302, size: 1, offset: 2814, flags: DIFlagBitField, extraData: i64 2808)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tlp_high_seq", scope: !441, file: !442, line: 126, baseType: !250, size: 32, offset: 2816)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_mstamp", scope: !441, file: !442, line: 129, baseType: !335, size: 64, offset: 2880)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "srtt_us", scope: !441, file: !442, line: 130, baseType: !250, size: 32, offset: 2944)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mdev_us", scope: !441, file: !442, line: 131, baseType: !250, size: 32, offset: 2976)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mdev_max_us", scope: !441, file: !442, line: 132, baseType: !250, size: 32, offset: 3008)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rttvar_us", scope: !441, file: !442, line: 133, baseType: !250, size: 32, offset: 3040)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_seq", scope: !441, file: !442, line: 134, baseType: !250, size: 32, offset: 3072)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_min", scope: !441, file: !442, line: 135, baseType: !512, offset: 3104)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "minmax", file: !513, line: 11, elements: !514)
!513 = !DIFile(filename: "../../stub_model/header/simple_minmax.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!514 = !{}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "packets_out", scope: !441, file: !442, line: 137, baseType: !250, size: 32, offset: 3104)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "retrans_out", scope: !441, file: !442, line: 138, baseType: !250, size: 32, offset: 3136)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "max_packets_out", scope: !441, file: !442, line: 139, baseType: !250, size: 32, offset: 3168)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "max_packets_seq", scope: !441, file: !442, line: 140, baseType: !250, size: 32, offset: 3200)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "urg_data", scope: !441, file: !442, line: 142, baseType: !446, size: 16, offset: 3232)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ecn_flags", scope: !441, file: !442, line: 143, baseType: !302, size: 8, offset: 3248)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_probes", scope: !441, file: !442, line: 144, baseType: !302, size: 8, offset: 3256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reordering", scope: !441, file: !442, line: 145, baseType: !250, size: 32, offset: 3264)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "snd_up", scope: !441, file: !442, line: 146, baseType: !250, size: 32, offset: 3296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rx_opt", scope: !441, file: !442, line: 151, baseType: !525, size: 256, offset: 3328)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_options_received", file: !442, line: 21, size: 256, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ts_recent_stamp", scope: !525, file: !442, line: 23, baseType: !193, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ts_recent", scope: !525, file: !442, line: 24, baseType: !250, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_tsval", scope: !525, file: !442, line: 25, baseType: !250, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_tsecr", scope: !525, file: !442, line: 26, baseType: !250, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "saw_tstamp", scope: !525, file: !442, line: 27, baseType: !446, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_ok", scope: !525, file: !442, line: 28, baseType: !446, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dsack", scope: !525, file: !442, line: 29, baseType: !446, size: 1, offset: 162, flags: DIFlagBitField, extraData: i64 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wscale_ok", scope: !525, file: !442, line: 30, baseType: !446, size: 1, offset: 163, flags: DIFlagBitField, extraData: i64 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sack_ok", scope: !525, file: !442, line: 31, baseType: !446, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wscale", scope: !525, file: !442, line: 32, baseType: !446, size: 4, offset: 168, flags: DIFlagBitField, extraData: i64 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wscale", scope: !525, file: !442, line: 33, baseType: !446, size: 4, offset: 172, flags: DIFlagBitField, extraData: i64 160)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "num_sacks", scope: !525, file: !442, line: 34, baseType: !302, size: 8, offset: 176)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user_mss", scope: !525, file: !442, line: 35, baseType: !446, size: 16, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mss_clamp", scope: !525, file: !442, line: 36, baseType: !446, size: 16, offset: 208)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "snd_ssthresh", scope: !441, file: !442, line: 156, baseType: !250, size: 32, offset: 3584)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "snd_cwnd", scope: !441, file: !442, line: 157, baseType: !250, size: 32, offset: 3616)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "snd_cwnd_cnt", scope: !441, file: !442, line: 158, baseType: !250, size: 32, offset: 3648)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "snd_cwnd_clamp", scope: !441, file: !442, line: 159, baseType: !250, size: 32, offset: 3680)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "snd_cwnd_used", scope: !441, file: !442, line: 160, baseType: !250, size: 32, offset: 3712)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "snd_cwnd_stamp", scope: !441, file: !442, line: 161, baseType: !250, size: 32, offset: 3744)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prior_cwnd", scope: !441, file: !442, line: 162, baseType: !250, size: 32, offset: 3776)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prr_delivered", scope: !441, file: !442, line: 163, baseType: !250, size: 32, offset: 3808)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prr_out", scope: !441, file: !442, line: 165, baseType: !250, size: 32, offset: 3840)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "delivered", scope: !441, file: !442, line: 166, baseType: !250, size: 32, offset: 3872)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lost", scope: !441, file: !442, line: 167, baseType: !250, size: 32, offset: 3904)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "app_limited", scope: !441, file: !442, line: 168, baseType: !250, size: 32, offset: 3936)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "first_tx_mstamp", scope: !441, file: !442, line: 169, baseType: !335, size: 64, offset: 3968)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "delivered_mstamp", scope: !441, file: !442, line: 170, baseType: !335, size: 64, offset: 4032)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rate_delivered", scope: !441, file: !442, line: 171, baseType: !250, size: 32, offset: 4096)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rate_interval_us", scope: !441, file: !442, line: 172, baseType: !250, size: 32, offset: 4128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !441, file: !442, line: 174, baseType: !250, size: 32, offset: 4160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "write_seq", scope: !441, file: !442, line: 175, baseType: !250, size: 32, offset: 4192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notsent_lowat", scope: !441, file: !442, line: 176, baseType: !250, size: 32, offset: 4224)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_seq", scope: !441, file: !442, line: 177, baseType: !250, size: 32, offset: 4256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lost_out", scope: !441, file: !442, line: 178, baseType: !250, size: 32, offset: 4288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sacked_out", scope: !441, file: !442, line: 179, baseType: !250, size: 32, offset: 4320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fackets_out", scope: !441, file: !442, line: 180, baseType: !250, size: 32, offset: 4352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lost_skb_hint", scope: !441, file: !442, line: 183, baseType: !565, size: 64, offset: 4416)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !336, line: 12, size: 640, elements: !567)
!567 = !{!568, !576, !577, !581}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !336, line: 14, baseType: !569, size: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !336, line: 14, size: 128, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !336, line: 15, baseType: !572, size: 128)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !336, line: 15, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !336, line: 17, baseType: !565, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !572, file: !336, line: 18, baseType: !565, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !566, file: !336, line: 27, baseType: !288, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !336, line: 29, baseType: !578, size: 64, offset: 192)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !336, line: 29, size: 64, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !578, file: !336, line: 35, baseType: !270, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !566, file: !336, line: 43, baseType: !582, size: 384, align: 64, offset: 256)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 384, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 48)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "retransmit_skb_hint", scope: !441, file: !442, line: 184, baseType: !565, size: 64, offset: 4480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_order_queue", scope: !441, file: !442, line: 187, baseType: !587, size: 64, offset: 4544)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !588, line: 19, size: 64, elements: !589)
!588 = !DIFile(filename: "../../stub_model/header/simple_rbtree.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !587, file: !588, line: 20, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !588, line: 12, size: 192, align: 64, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !592, file: !588, line: 13, baseType: !270, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !592, file: !588, line: 14, baseType: !591, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !592, file: !588, line: 15, baseType: !591, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_last_skb", scope: !441, file: !442, line: 188, baseType: !565, size: 64, offset: 4608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "duplicate_sack", scope: !441, file: !442, line: 191, baseType: !599, size: 64, offset: 4672)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 64, elements: !604)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_sack_block", file: !442, line: 16, size: 64, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "start_seq", scope: !600, file: !442, line: 17, baseType: !250, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "end_seq", scope: !600, file: !442, line: 18, baseType: !250, size: 32, offset: 32)
!604 = !{!605}
!605 = !DISubrange(count: 1)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "selective_acks", scope: !441, file: !442, line: 192, baseType: !607, size: 256, offset: 4736)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 4)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "recv_sack_cache", scope: !441, file: !442, line: 194, baseType: !607, size: 256, offset: 4992)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "highest_sack", scope: !441, file: !442, line: 196, baseType: !565, size: 64, offset: 5248)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lost_cnt_hint", scope: !441, file: !442, line: 202, baseType: !194, size: 32, offset: 5312)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "prior_ssthresh", scope: !441, file: !442, line: 204, baseType: !250, size: 32, offset: 5344)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "high_seq", scope: !441, file: !442, line: 205, baseType: !250, size: 32, offset: 5376)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "retrans_stamp", scope: !441, file: !442, line: 207, baseType: !250, size: 32, offset: 5408)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "undo_marker", scope: !441, file: !442, line: 210, baseType: !250, size: 32, offset: 5440)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "undo_retrans", scope: !441, file: !442, line: 211, baseType: !194, size: 32, offset: 5472)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "total_retrans", scope: !441, file: !442, line: 212, baseType: !250, size: 32, offset: 5504)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "urg_seq", scope: !441, file: !442, line: 214, baseType: !250, size: 32, offset: 5536)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_time", scope: !441, file: !442, line: 215, baseType: !7, size: 32, offset: 5568)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_intvl", scope: !441, file: !442, line: 216, baseType: !7, size: 32, offset: 5600)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "linger2", scope: !441, file: !442, line: 218, baseType: !194, size: 32, offset: 5632)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_rtt_est", scope: !441, file: !442, line: 225, baseType: !624, size: 128, offset: 5696)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !442, line: 221, size: 128, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_us", scope: !624, file: !442, line: 222, baseType: !250, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !624, file: !442, line: 223, baseType: !250, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !624, file: !442, line: 224, baseType: !335, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rcvq_space", scope: !441, file: !442, line: 232, baseType: !630, size: 128, offset: 5824)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !442, line: 228, size: 128, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !630, file: !442, line: 229, baseType: !194, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !630, file: !442, line: 230, baseType: !250, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !630, file: !442, line: 231, baseType: !335, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_probe", scope: !441, file: !442, line: 238, baseType: !636, size: 64, offset: 5952)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !442, line: 235, size: 64, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "probe_seq_start", scope: !636, file: !442, line: 236, baseType: !250, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "probe_seq_end", scope: !636, file: !442, line: 237, baseType: !250, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_info", scope: !441, file: !442, line: 239, baseType: !250, size: 32, offset: 6016)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen_req", scope: !441, file: !442, line: 245, baseType: !642, size: 64, offset: 6080)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_fastopen_request", file: !442, line: 245, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen_rsk", scope: !441, file: !442, line: 249, baseType: !645, size: 64, offset: 6144)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_sock", file: !442, line: 249, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "saved_syn", scope: !441, file: !442, line: 250, baseType: !648, size: 64, offset: 6208)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!650 = !{!0, !651, !654, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !691, !694, !696, !698, !700}
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "tcp_reno", scope: !2, file: !653, line: 249, type: !280, isLocal: false, isDefinition: true)
!653 = !DIFile(filename: "../../stub_model/source/simple_tcp_cong.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "sysctl_tcp_timestamps", scope: !2, file: !656, line: 11, type: !194, isLocal: false, isDefinition: true)
!656 = !DIFile(filename: "../../stub_model/source/simple_tcp_input.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "sysctl_tcp_window_scaling", scope: !2, file: !656, line: 12, type: !194, isLocal: false, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "sysctl_tcp_sack", scope: !2, file: !656, line: 13, type: !194, isLocal: false, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "sysctl_tcp_max_reordering", scope: !2, file: !656, line: 15, type: !194, isLocal: false, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "sysctl_tcp_dsack", scope: !2, file: !656, line: 16, type: !194, isLocal: false, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "sysctl_tcp_app_win", scope: !2, file: !656, line: 17, type: !194, isLocal: false, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "sysctl_tcp_adv_win_scale", scope: !2, file: !656, line: 18, type: !194, isLocal: false, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "sysctl_tcp_challenge_ack_limit", scope: !2, file: !656, line: 22, type: !194, isLocal: false, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "sysctl_tcp_max_orphans", scope: !2, file: !656, line: 26, type: !194, isLocal: false, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "sysctl_tcp_frto", scope: !2, file: !656, line: 27, type: !194, isLocal: false, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "sysctl_tcp_min_rtt_wlen", scope: !2, file: !656, line: 28, type: !194, isLocal: false, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(name: "sysctl_tcp_moderate_rcvbuf", scope: !2, file: !656, line: 29, type: !194, isLocal: false, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "sysctl_tcp_early_retrans", scope: !2, file: !656, line: 30, type: !194, isLocal: false, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "sysctl_tcp_invalid_ratelimit", scope: !2, file: !656, line: 31, type: !194, isLocal: false, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "sysctl_tcp_pacing_ss_ratio", scope: !2, file: !656, line: 146, type: !194, isLocal: false, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "sysctl_tcp_pacing_ca_ratio", scope: !2, file: !656, line: 147, type: !194, isLocal: false, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "sysctl_tcp_mem", scope: !2, file: !689, line: 10, type: !690, isLocal: false, isDefinition: true)
!689 = !DIFile(filename: "../../stub_model/source/simple_tcp.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !485)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "sysctl_tcp_wmem", scope: !2, file: !689, line: 11, type: !693, isLocal: false, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 96, elements: !485)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "sysctl_tcp_rmem", scope: !2, file: !689, line: 12, type: !693, isLocal: false, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "sysctl_tcp_fack", scope: !2, file: !656, line: 14, type: !194, isLocal: false, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "sysctl_tcp_stdurg", scope: !2, file: !656, line: 24, type: !194, isLocal: false, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "sysctl_tcp_rfc1337", scope: !2, file: !656, line: 25, type: !194, isLocal: false, isDefinition: true)
!702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "env_value_str", scope: !705, file: !710, line: 73, type: !708, isLocal: false, isDefinition: true)
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 8.0.1-svn369350-1~exp1~20190820122438.78 (branches/release_80)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, retainedTypes: !707, globals: !709, nameTableKind: None)
!706 = !DIFile(filename: "/usr/local/share/smack/lib/stdlib.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!709 = !{!703}
!710 = !DIFile(filename: "/usr/local/share/smack/lib/stdlib.c", directory: "")
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "errno_global", scope: !713, file: !716, line: 6, type: !194, isLocal: true, isDefinition: true)
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 8.0.1-svn369350-1~exp1~20190820122438.78 (branches/release_80)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, globals: !715, nameTableKind: None)
!714 = !DIFile(filename: "/usr/local/share/smack/lib/errno.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!715 = !{!711}
!716 = !DIFile(filename: "/usr/local/share/smack/lib/errno.c", directory: "")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 8.0.1-svn369350-1~exp1~20190820122438.78 (branches/release_80)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, retainedTypes: !719, nameTableKind: None)
!718 = !DIFile(filename: "/usr/local/share/smack/lib/smack.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!719 = !{!355}
!720 = !{!"clang version 8.0.1-svn369350-1~exp1~20190820122438.78 (branches/release_80)"}
!721 = !{i32 2, !"Dwarf Version", i32 4}
!722 = !{i32 2, !"Debug Info Version", i32 3}
!723 = !{i32 1, !"wchar_size", i32 4}
!724 = distinct !DISubprogram(name: "tcp_reno_ssthresh", scope: !653, file: !653, line: 233, type: !292, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!725 = !{i1 false}
!726 = !DILocalVariable(name: "sk", arg: 1, scope: !724, file: !653, line: 233, type: !288)
!727 = !DILocation(line: 233, column: 36, scope: !724)
!728 = !DILocalVariable(name: "tp", scope: !724, file: !653, line: 235, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!731 = !DILocation(line: 235, column: 25, scope: !724)
!732 = !DILocation(line: 235, column: 37, scope: !724)
!733 = !DILocation(line: 235, column: 30, scope: !724)
!734 = !DILocation(line: 237, column: 9, scope: !724)
!735 = !DILocation(line: 237, column: 2, scope: !724)
!736 = distinct !DISubprogram(name: "tcp_reno_cong_avoid", scope: !653, file: !653, line: 209, type: !296, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!737 = !DILocalVariable(name: "sk", arg: 1, scope: !736, file: !653, line: 209, type: !288)
!738 = !DILocation(line: 209, column: 39, scope: !736)
!739 = !DILocalVariable(name: "ack", arg: 2, scope: !736, file: !653, line: 209, type: !250)
!740 = !DILocation(line: 209, column: 47, scope: !736)
!741 = !DILocalVariable(name: "acked", arg: 3, scope: !736, file: !653, line: 209, type: !250)
!742 = !DILocation(line: 209, column: 56, scope: !736)
!743 = !DILocalVariable(name: "tp", scope: !736, file: !653, line: 211, type: !440)
!744 = !DILocation(line: 211, column: 19, scope: !736)
!745 = !DILocation(line: 211, column: 31, scope: !736)
!746 = !DILocation(line: 211, column: 24, scope: !736)
!747 = !DILocation(line: 214, column: 96, scope: !736)
!748 = !DILocation(line: 214, column: 101, scope: !736)
!749 = !DILocation(line: 214, column: 108, scope: !736)
!750 = !DILocation(line: 214, column: 112, scope: !736)
!751 = !DILocation(line: 214, column: 126, scope: !736)
!752 = !DILocation(line: 214, column: 130, scope: !736)
!753 = !DILocation(line: 214, column: 2, scope: !736)
!754 = !DILocation(line: 217, column: 27, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !653, line: 217, column: 6)
!756 = !DILocation(line: 217, column: 7, scope: !755)
!757 = !DILocation(line: 217, column: 6, scope: !736)
!758 = !DILocation(line: 218, column: 3, scope: !755)
!759 = !DILocation(line: 221, column: 24, scope: !760)
!760 = distinct !DILexicalBlock(scope: !736, file: !653, line: 221, column: 6)
!761 = !DILocation(line: 221, column: 6, scope: !760)
!762 = !DILocation(line: 221, column: 6, scope: !736)
!763 = !DILocation(line: 222, column: 26, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !653, line: 221, column: 29)
!765 = !DILocation(line: 222, column: 30, scope: !764)
!766 = !DILocation(line: 222, column: 11, scope: !764)
!767 = !DILocation(line: 222, column: 9, scope: !764)
!768 = !DILocation(line: 223, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !653, line: 223, column: 7)
!770 = !DILocation(line: 223, column: 7, scope: !764)
!771 = !DILocation(line: 224, column: 4, scope: !769)
!772 = !DILocation(line: 225, column: 2, scope: !764)
!773 = !DILocation(line: 226, column: 2, scope: !736)
!774 = !DILocation(line: 228, column: 20, scope: !736)
!775 = !DILocation(line: 228, column: 24, scope: !736)
!776 = !DILocation(line: 228, column: 28, scope: !736)
!777 = !DILocation(line: 228, column: 38, scope: !736)
!778 = !DILocation(line: 228, column: 2, scope: !736)
!779 = !DILocation(line: 229, column: 1, scope: !736)
!780 = distinct !DISubprogram(name: "tcp_reno_undo_cwnd", scope: !653, file: !653, line: 241, type: !292, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!781 = !DILocalVariable(name: "sk", arg: 1, scope: !780, file: !653, line: 241, type: !288)
!782 = !DILocation(line: 241, column: 37, scope: !780)
!783 = !DILocalVariable(name: "tp", scope: !780, file: !653, line: 243, type: !729)
!784 = !DILocation(line: 243, column: 25, scope: !780)
!785 = !DILocation(line: 243, column: 37, scope: !780)
!786 = !DILocation(line: 243, column: 30, scope: !780)
!787 = !DILocation(line: 245, column: 9, scope: !780)
!788 = !DILocation(line: 245, column: 2, scope: !780)
!789 = distinct !DISubprogram(name: "tcp_sk", scope: !442, file: !442, line: 260, type: !790, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!790 = !DISubroutineType(types: !791)
!791 = !{!440, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!794 = !DILocalVariable(name: "sk", arg: 1, scope: !789, file: !442, line: 260, type: !792)
!795 = !DILocation(line: 260, column: 58, scope: !789)
!796 = !DILocation(line: 262, column: 28, scope: !789)
!797 = !DILocation(line: 262, column: 9, scope: !789)
!798 = !DILocation(line: 262, column: 2, scope: !789)
!799 = distinct !DISubprogram(name: "max_func", scope: !800, file: !800, line: 32, type: !801, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!800 = !DIFile(filename: "../../stub_model/header/simple_kernel.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!801 = !DISubroutineType(types: !802)
!802 = !{!250, !250, !250}
!803 = !DILocalVariable(name: "x", arg: 1, scope: !799, file: !800, line: 32, type: !250)
!804 = !DILocation(line: 32, column: 18, scope: !799)
!805 = !DILocalVariable(name: "y", arg: 2, scope: !799, file: !800, line: 32, type: !250)
!806 = !DILocation(line: 32, column: 25, scope: !799)
!807 = !DILocation(line: 34, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !799, file: !800, line: 34, column: 6)
!809 = !DILocation(line: 34, column: 10, scope: !808)
!810 = !DILocation(line: 34, column: 8, scope: !808)
!811 = !DILocation(line: 34, column: 6, scope: !799)
!812 = !DILocation(line: 35, column: 10, scope: !808)
!813 = !DILocation(line: 35, column: 3, scope: !808)
!814 = !DILocation(line: 37, column: 10, scope: !808)
!815 = !DILocation(line: 37, column: 3, scope: !808)
!816 = !DILocation(line: 38, column: 1, scope: !799)
!817 = distinct !DISubprogram(name: "tcp_is_cwnd_limited", scope: !6, file: !6, line: 515, type: !818, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!818 = !DISubroutineType(types: !819)
!819 = !{!355, !792}
!820 = !DILocalVariable(name: "sk", arg: 1, scope: !817, file: !6, line: 515, type: !792)
!821 = !DILocation(line: 515, column: 59, scope: !817)
!822 = !DILocalVariable(name: "tp", scope: !817, file: !6, line: 517, type: !729)
!823 = !DILocation(line: 517, column: 25, scope: !817)
!824 = !DILocation(line: 517, column: 37, scope: !817)
!825 = !DILocation(line: 517, column: 30, scope: !817)
!826 = !DILocation(line: 520, column: 24, scope: !827)
!827 = distinct !DILexicalBlock(scope: !817, file: !6, line: 520, column: 6)
!828 = !DILocation(line: 520, column: 6, scope: !827)
!829 = !DILocation(line: 520, column: 6, scope: !817)
!830 = !DILocation(line: 521, column: 10, scope: !827)
!831 = !DILocation(line: 521, column: 14, scope: !827)
!832 = !DILocation(line: 521, column: 29, scope: !827)
!833 = !DILocation(line: 521, column: 33, scope: !827)
!834 = !DILocation(line: 521, column: 27, scope: !827)
!835 = !DILocation(line: 521, column: 23, scope: !827)
!836 = !DILocation(line: 521, column: 3, scope: !827)
!837 = !DILocation(line: 523, column: 9, scope: !817)
!838 = !DILocation(line: 523, column: 13, scope: !817)
!839 = !DILocation(line: 523, column: 2, scope: !817)
!840 = !DILocation(line: 524, column: 1, scope: !817)
!841 = distinct !DISubprogram(name: "tcp_in_slow_start", scope: !6, file: !6, line: 454, type: !842, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!842 = !DISubroutineType(types: !843)
!843 = !{!355, !729}
!844 = !DILocalVariable(name: "tp", arg: 1, scope: !841, file: !6, line: 454, type: !729)
!845 = !DILocation(line: 454, column: 61, scope: !841)
!846 = !DILocation(line: 456, column: 9, scope: !841)
!847 = !DILocation(line: 456, column: 13, scope: !841)
!848 = !DILocation(line: 456, column: 24, scope: !841)
!849 = !DILocation(line: 456, column: 28, scope: !841)
!850 = !DILocation(line: 456, column: 22, scope: !841)
!851 = !DILocation(line: 456, column: 2, scope: !841)
!852 = distinct !DISubprogram(name: "tcp_slow_start", scope: !653, file: !653, line: 161, type: !853, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!853 = !DISubroutineType(types: !854)
!854 = !{!250, !440, !250}
!855 = !DILocalVariable(name: "tp", arg: 1, scope: !852, file: !653, line: 161, type: !440)
!856 = !DILocation(line: 161, column: 37, scope: !852)
!857 = !DILocalVariable(name: "acked", arg: 2, scope: !852, file: !653, line: 161, type: !250)
!858 = !DILocation(line: 161, column: 45, scope: !852)
!859 = !DILocalVariable(name: "cwnd", scope: !852, file: !653, line: 163, type: !250)
!860 = !DILocation(line: 163, column: 6, scope: !852)
!861 = !DILocation(line: 163, column: 13, scope: !852)
!862 = !DILocation(line: 165, column: 11, scope: !852)
!863 = !DILocation(line: 165, column: 18, scope: !852)
!864 = !DILocation(line: 165, column: 22, scope: !852)
!865 = !DILocation(line: 165, column: 16, scope: !852)
!866 = !DILocation(line: 165, column: 8, scope: !852)
!867 = !DILocation(line: 166, column: 17, scope: !852)
!868 = !DILocation(line: 166, column: 2, scope: !852)
!869 = !DILocation(line: 166, column: 6, scope: !852)
!870 = !DILocation(line: 166, column: 15, scope: !852)
!871 = !DILocation(line: 169, column: 87, scope: !852)
!872 = !DILocation(line: 169, column: 93, scope: !852)
!873 = !DILocation(line: 169, column: 100, scope: !852)
!874 = !DILocation(line: 169, column: 104, scope: !852)
!875 = !DILocation(line: 169, column: 114, scope: !852)
!876 = !DILocation(line: 169, column: 118, scope: !852)
!877 = !DILocation(line: 169, column: 2, scope: !852)
!878 = !DILocation(line: 172, column: 9, scope: !852)
!879 = !DILocation(line: 172, column: 2, scope: !852)
!880 = distinct !DISubprogram(name: "tcp_cong_avoid_ai", scope: !653, file: !653, line: 179, type: !881, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !440, !250, !250}
!883 = !DILocalVariable(name: "tp", arg: 1, scope: !880, file: !653, line: 179, type: !440)
!884 = !DILocation(line: 179, column: 41, scope: !880)
!885 = !DILocalVariable(name: "w", arg: 2, scope: !880, file: !653, line: 179, type: !250)
!886 = !DILocation(line: 179, column: 49, scope: !880)
!887 = !DILocalVariable(name: "acked", arg: 3, scope: !880, file: !653, line: 179, type: !250)
!888 = !DILocation(line: 179, column: 56, scope: !880)
!889 = !DILocation(line: 182, column: 72, scope: !880)
!890 = !DILocation(line: 182, column: 75, scope: !880)
!891 = !DILocation(line: 182, column: 82, scope: !880)
!892 = !DILocation(line: 182, column: 86, scope: !880)
!893 = !DILocation(line: 182, column: 2, scope: !880)
!894 = !DILocation(line: 186, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !880, file: !653, line: 186, column: 6)
!896 = !DILocation(line: 186, column: 10, scope: !895)
!897 = !DILocation(line: 186, column: 26, scope: !895)
!898 = !DILocation(line: 186, column: 23, scope: !895)
!899 = !DILocation(line: 186, column: 6, scope: !880)
!900 = !DILocation(line: 187, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !653, line: 186, column: 29)
!902 = !DILocation(line: 187, column: 7, scope: !901)
!903 = !DILocation(line: 187, column: 20, scope: !901)
!904 = !DILocation(line: 188, column: 3, scope: !901)
!905 = !DILocation(line: 188, column: 7, scope: !901)
!906 = !DILocation(line: 188, column: 15, scope: !901)
!907 = !DILocation(line: 189, column: 2, scope: !901)
!908 = !DILocation(line: 191, column: 22, scope: !880)
!909 = !DILocation(line: 191, column: 2, scope: !880)
!910 = !DILocation(line: 191, column: 6, scope: !880)
!911 = !DILocation(line: 191, column: 19, scope: !880)
!912 = !DILocation(line: 192, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !880, file: !653, line: 192, column: 6)
!914 = !DILocation(line: 192, column: 10, scope: !913)
!915 = !DILocation(line: 192, column: 26, scope: !913)
!916 = !DILocation(line: 192, column: 23, scope: !913)
!917 = !DILocation(line: 192, column: 6, scope: !880)
!918 = !DILocalVariable(name: "delta", scope: !919, file: !653, line: 193, type: !250)
!919 = distinct !DILexicalBlock(scope: !913, file: !653, line: 192, column: 29)
!920 = !DILocation(line: 193, column: 7, scope: !919)
!921 = !DILocation(line: 193, column: 15, scope: !919)
!922 = !DILocation(line: 193, column: 19, scope: !919)
!923 = !DILocation(line: 193, column: 34, scope: !919)
!924 = !DILocation(line: 193, column: 32, scope: !919)
!925 = !DILocation(line: 195, column: 23, scope: !919)
!926 = !DILocation(line: 195, column: 31, scope: !919)
!927 = !DILocation(line: 195, column: 29, scope: !919)
!928 = !DILocation(line: 195, column: 3, scope: !919)
!929 = !DILocation(line: 195, column: 7, scope: !919)
!930 = !DILocation(line: 195, column: 20, scope: !919)
!931 = !DILocation(line: 196, column: 19, scope: !919)
!932 = !DILocation(line: 196, column: 3, scope: !919)
!933 = !DILocation(line: 196, column: 7, scope: !919)
!934 = !DILocation(line: 196, column: 16, scope: !919)
!935 = !DILocation(line: 197, column: 2, scope: !919)
!936 = !DILocation(line: 198, column: 17, scope: !880)
!937 = !DILocation(line: 198, column: 2, scope: !880)
!938 = !DILocation(line: 198, column: 6, scope: !880)
!939 = !DILocation(line: 198, column: 15, scope: !880)
!940 = !DILocation(line: 199, column: 1, scope: !880)
!941 = distinct !DISubprogram(name: "min_func", scope: !800, file: !800, line: 24, type: !801, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!942 = !DILocalVariable(name: "x", arg: 1, scope: !941, file: !800, line: 24, type: !250)
!943 = !DILocation(line: 24, column: 18, scope: !941)
!944 = !DILocalVariable(name: "y", arg: 2, scope: !941, file: !800, line: 24, type: !250)
!945 = !DILocation(line: 24, column: 25, scope: !941)
!946 = !DILocation(line: 26, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !800, line: 26, column: 6)
!948 = !DILocation(line: 26, column: 10, scope: !947)
!949 = !DILocation(line: 26, column: 8, scope: !947)
!950 = !DILocation(line: 26, column: 6, scope: !941)
!951 = !DILocation(line: 27, column: 10, scope: !947)
!952 = !DILocation(line: 27, column: 3, scope: !947)
!953 = !DILocation(line: 29, column: 10, scope: !947)
!954 = !DILocation(line: 29, column: 3, scope: !947)
!955 = !DILocation(line: 30, column: 1, scope: !941)
!956 = distinct !DISubprogram(name: "tcp_assign_congestion_control", scope: !653, file: !653, line: 66, type: !286, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!957 = !DILocalVariable(name: "sk", arg: 1, scope: !956, file: !653, line: 66, type: !288)
!958 = !DILocation(line: 66, column: 49, scope: !956)
!959 = !DILocation(line: 68, column: 2, scope: !956)
!960 = distinct !DISubprogram(name: "tcp_init_congestion_control", scope: !653, file: !653, line: 71, type: !286, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!961 = !DILocalVariable(name: "sk", arg: 1, scope: !960, file: !653, line: 71, type: !288)
!962 = !DILocation(line: 71, column: 47, scope: !960)
!963 = !DILocalVariable(name: "icsk", scope: !960, file: !653, line: 73, type: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!966 = !DILocation(line: 73, column: 37, scope: !960)
!967 = !DILocation(line: 73, column: 53, scope: !960)
!968 = !DILocation(line: 73, column: 44, scope: !960)
!969 = !DILocation(line: 75, column: 9, scope: !960)
!970 = !DILocation(line: 75, column: 2, scope: !960)
!971 = !DILocation(line: 75, column: 14, scope: !960)
!972 = !DILocation(line: 75, column: 29, scope: !960)
!973 = !DILocation(line: 76, column: 6, scope: !974)
!974 = distinct !DILexicalBlock(scope: !960, file: !653, line: 76, column: 6)
!975 = !DILocation(line: 76, column: 12, scope: !974)
!976 = !DILocation(line: 76, column: 25, scope: !974)
!977 = !DILocation(line: 76, column: 6, scope: !960)
!978 = !DILocation(line: 77, column: 3, scope: !974)
!979 = !DILocation(line: 77, column: 9, scope: !974)
!980 = !DILocation(line: 77, column: 22, scope: !974)
!981 = !DILocation(line: 77, column: 27, scope: !974)
!982 = !DILocation(line: 83, column: 1, scope: !960)
!983 = distinct !DISubprogram(name: "inet_csk", scope: !200, file: !200, line: 63, type: !984, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!984 = !DISubroutineType(types: !985)
!985 = !{!198, !792}
!986 = !DILocalVariable(name: "sk", arg: 1, scope: !983, file: !200, line: 63, type: !792)
!987 = !DILocation(line: 63, column: 72, scope: !983)
!988 = !DILocation(line: 65, column: 40, scope: !983)
!989 = !DILocation(line: 65, column: 9, scope: !983)
!990 = !DILocation(line: 65, column: 2, scope: !983)
!991 = distinct !DISubprogram(name: "tcp_cleanup_congestion_control", scope: !653, file: !653, line: 86, type: !286, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!992 = !DILocalVariable(name: "sk", arg: 1, scope: !991, file: !653, line: 86, type: !288)
!993 = !DILocation(line: 86, column: 50, scope: !991)
!994 = !DILocation(line: 88, column: 2, scope: !991)
!995 = distinct !DISubprogram(name: "tcp_set_congestion_control", scope: !653, file: !653, line: 146, type: !996, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!996 = !DISubroutineType(types: !997)
!997 = !{!194, !288, !278}
!998 = !DILocalVariable(name: "sk", arg: 1, scope: !995, file: !653, line: 146, type: !288)
!999 = !DILocation(line: 146, column: 45, scope: !995)
!1000 = !DILocalVariable(name: "ca", arg: 2, scope: !995, file: !653, line: 146, type: !278)
!1001 = !DILocation(line: 146, column: 82, scope: !995)
!1002 = !DILocation(line: 148, column: 32, scope: !995)
!1003 = !DILocation(line: 148, column: 36, scope: !995)
!1004 = !DILocation(line: 148, column: 2, scope: !995)
!1005 = !DILocation(line: 149, column: 2, scope: !995)
!1006 = distinct !DISubprogram(name: "tcp_reinit_congestion_control", scope: !653, file: !653, line: 91, type: !1007, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !288, !278}
!1009 = !DILocalVariable(name: "sk", arg: 1, scope: !1006, file: !653, line: 91, type: !288)
!1010 = !DILocation(line: 91, column: 56, scope: !1006)
!1011 = !DILocalVariable(name: "ca", arg: 2, scope: !1006, file: !653, line: 92, type: !278)
!1012 = !DILocation(line: 92, column: 41, scope: !1006)
!1013 = !DILocalVariable(name: "icsk", scope: !1006, file: !653, line: 94, type: !198)
!1014 = !DILocation(line: 94, column: 31, scope: !1006)
!1015 = !DILocation(line: 94, column: 47, scope: !1006)
!1016 = !DILocation(line: 94, column: 38, scope: !1006)
!1017 = !DILocation(line: 96, column: 33, scope: !1006)
!1018 = !DILocation(line: 96, column: 2, scope: !1006)
!1019 = !DILocation(line: 97, column: 22, scope: !1006)
!1020 = !DILocation(line: 97, column: 2, scope: !1006)
!1021 = !DILocation(line: 97, column: 8, scope: !1006)
!1022 = !DILocation(line: 97, column: 20, scope: !1006)
!1023 = !DILocation(line: 98, column: 2, scope: !1006)
!1024 = !DILocation(line: 98, column: 8, scope: !1006)
!1025 = !DILocation(line: 98, column: 27, scope: !1006)
!1026 = !DILocation(line: 99, column: 9, scope: !1006)
!1027 = !DILocation(line: 99, column: 15, scope: !1006)
!1028 = !DILocation(line: 99, column: 2, scope: !1006)
!1029 = !DILocation(line: 101, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1006, file: !653, line: 101, column: 6)
!1031 = !DILocation(line: 101, column: 10, scope: !1030)
!1032 = !DILocation(line: 101, column: 19, scope: !1030)
!1033 = !DILocation(line: 101, column: 6, scope: !1006)
!1034 = !DILocation(line: 102, column: 31, scope: !1030)
!1035 = !DILocation(line: 102, column: 3, scope: !1030)
!1036 = !DILocation(line: 104, column: 2, scope: !1006)
!1037 = distinct !DISubprogram(name: "tcp_sync_mss", scope: !1038, file: !1038, line: 33, type: !403, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1038 = !DIFile(filename: "../../stub_model/source/simple_tcp_output.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!1039 = !DILocalVariable(name: "sk", arg: 1, scope: !1037, file: !1038, line: 33, type: !288)
!1040 = !DILocation(line: 33, column: 40, scope: !1037)
!1041 = !DILocalVariable(name: "pmtu", arg: 2, scope: !1037, file: !1038, line: 33, type: !250)
!1042 = !DILocation(line: 33, column: 48, scope: !1037)
!1043 = !DILocation(line: 35, column: 2, scope: !1037)
!1044 = distinct !DISubprogram(name: "tcp_init_sock", scope: !689, file: !689, line: 25, type: !286, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1045 = !DILocalVariable(name: "sk", arg: 1, scope: !1044, file: !689, line: 25, type: !288)
!1046 = !DILocation(line: 25, column: 33, scope: !1044)
!1047 = !DILocalVariable(name: "icsk", scope: !1044, file: !689, line: 27, type: !198)
!1048 = !DILocation(line: 27, column: 31, scope: !1044)
!1049 = !DILocation(line: 27, column: 47, scope: !1044)
!1050 = !DILocation(line: 27, column: 38, scope: !1044)
!1051 = !DILocalVariable(name: "tp", scope: !1044, file: !689, line: 28, type: !440)
!1052 = !DILocation(line: 28, column: 19, scope: !1044)
!1053 = !DILocation(line: 28, column: 31, scope: !1044)
!1054 = !DILocation(line: 28, column: 24, scope: !1044)
!1055 = !DILocation(line: 44, column: 2, scope: !1044)
!1056 = !DILocation(line: 44, column: 6, scope: !1044)
!1057 = !DILocation(line: 44, column: 15, scope: !1044)
!1058 = !DILocation(line: 47, column: 2, scope: !1044)
!1059 = !DILocation(line: 47, column: 6, scope: !1044)
!1060 = !DILocation(line: 47, column: 18, scope: !1044)
!1061 = !DILocation(line: 52, column: 2, scope: !1044)
!1062 = !DILocation(line: 52, column: 6, scope: !1044)
!1063 = !DILocation(line: 52, column: 19, scope: !1044)
!1064 = !DILocation(line: 53, column: 2, scope: !1044)
!1065 = !DILocation(line: 53, column: 6, scope: !1044)
!1066 = !DILocation(line: 53, column: 21, scope: !1044)
!1067 = !DILocation(line: 54, column: 2, scope: !1044)
!1068 = !DILocation(line: 54, column: 6, scope: !1044)
!1069 = !DILocation(line: 54, column: 16, scope: !1044)
!1070 = !DILocation(line: 56, column: 28, scope: !1044)
!1071 = !DILocation(line: 56, column: 19, scope: !1044)
!1072 = !DILocation(line: 56, column: 33, scope: !1044)
!1073 = !DILocation(line: 56, column: 38, scope: !1044)
!1074 = !DILocation(line: 56, column: 2, scope: !1044)
!1075 = !DILocation(line: 56, column: 6, scope: !1044)
!1076 = !DILocation(line: 56, column: 17, scope: !1044)
!1077 = !DILocation(line: 57, column: 32, scope: !1044)
!1078 = !DILocation(line: 57, column: 2, scope: !1044)
!1079 = !DILocation(line: 59, column: 2, scope: !1044)
!1080 = !DILocation(line: 59, column: 6, scope: !1044)
!1081 = !DILocation(line: 59, column: 15, scope: !1044)
!1082 = !DILocation(line: 61, column: 2, scope: !1044)
!1083 = !DILocation(line: 61, column: 6, scope: !1044)
!1084 = !DILocation(line: 61, column: 15, scope: !1044)
!1085 = !DILocation(line: 64, column: 16, scope: !1044)
!1086 = !DILocation(line: 64, column: 2, scope: !1044)
!1087 = !DILocation(line: 66, column: 2, scope: !1044)
!1088 = !DILocation(line: 66, column: 8, scope: !1044)
!1089 = !DILocation(line: 66, column: 22, scope: !1044)
!1090 = !DILocation(line: 68, column: 18, scope: !1044)
!1091 = !DILocation(line: 68, column: 2, scope: !1044)
!1092 = !DILocation(line: 68, column: 6, scope: !1044)
!1093 = !DILocation(line: 68, column: 16, scope: !1044)
!1094 = !DILocation(line: 69, column: 18, scope: !1044)
!1095 = !DILocation(line: 69, column: 2, scope: !1044)
!1096 = !DILocation(line: 69, column: 6, scope: !1044)
!1097 = !DILocation(line: 69, column: 16, scope: !1044)
!1098 = !DILocation(line: 72, column: 1, scope: !1044)
!1099 = distinct !DISubprogram(name: "sock_net", scope: !34, file: !34, line: 66, type: !1100, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!221, !792}
!1102 = !DILocalVariable(name: "sk", arg: 1, scope: !1099, file: !34, line: 66, type: !792)
!1103 = !DILocation(line: 66, column: 41, scope: !1099)
!1104 = !DILocation(line: 68, column: 20, scope: !1099)
!1105 = !DILocation(line: 68, column: 24, scope: !1099)
!1106 = !DILocation(line: 68, column: 9, scope: !1099)
!1107 = !DILocation(line: 68, column: 2, scope: !1099)
!1108 = distinct !DISubprogram(name: "sock_set_flag", scope: !34, file: !34, line: 71, type: !1109, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !288, !33}
!1111 = !DILocalVariable(name: "sk", arg: 1, scope: !1108, file: !34, line: 71, type: !288)
!1112 = !DILocation(line: 71, column: 47, scope: !1108)
!1113 = !DILocalVariable(name: "flag", arg: 2, scope: !1108, file: !34, line: 71, type: !33)
!1114 = !DILocation(line: 71, column: 67, scope: !1108)
!1115 = !DILocation(line: 73, column: 12, scope: !1108)
!1116 = !DILocation(line: 73, column: 19, scope: !1108)
!1117 = !DILocation(line: 73, column: 23, scope: !1108)
!1118 = !DILocation(line: 73, column: 18, scope: !1108)
!1119 = !DILocation(line: 73, column: 2, scope: !1108)
!1120 = !DILocation(line: 74, column: 1, scope: !1108)
!1121 = distinct !DISubprogram(name: "__set_bit", scope: !1122, file: !1122, line: 24, type: !1123, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1122 = !DIFile(filename: "../../stub_model/header/simple_bitops.h", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !194, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1127 = !DILocalVariable(name: "nr", arg: 1, scope: !1121, file: !1122, line: 24, type: !194)
!1128 = !DILocation(line: 24, column: 16, scope: !1121)
!1129 = !DILocalVariable(name: "addr", arg: 2, scope: !1121, file: !1122, line: 24, type: !1125)
!1130 = !DILocation(line: 24, column: 35, scope: !1121)
!1131 = !DILocation(line: 26, column: 42, scope: !1121)
!1132 = !DILocation(line: 26, column: 45, scope: !1121)
!1133 = !DILocation(line: 26, column: 38, scope: !1121)
!1134 = !DILocation(line: 26, column: 14, scope: !1121)
!1135 = !DILocation(line: 26, column: 4, scope: !1121)
!1136 = !DILocation(line: 26, column: 22, scope: !1121)
!1137 = !DILocation(line: 26, column: 25, scope: !1121)
!1138 = !DILocation(line: 26, column: 19, scope: !1121)
!1139 = !DILocation(line: 26, column: 32, scope: !1121)
!1140 = !DILocation(line: 27, column: 1, scope: !1121)
!1141 = distinct !DISubprogram(name: "read_pnet", scope: !217, file: !217, line: 24, type: !1142, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!221, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!1146 = !DILocalVariable(name: "pnet", arg: 1, scope: !1141, file: !217, line: 24, type: !1144)
!1147 = !DILocation(line: 24, column: 59, scope: !1141)
!1148 = !DILocation(line: 27, column: 9, scope: !1141)
!1149 = !DILocation(line: 27, column: 15, scope: !1141)
!1150 = !DILocation(line: 27, column: 2, scope: !1141)
!1151 = distinct !DISubprogram(name: "tcp_set_ca_state", scope: !6, file: !6, line: 425, type: !1152, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !288, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1155 = !DILocalVariable(name: "sk", arg: 1, scope: !1151, file: !6, line: 425, type: !288)
!1156 = !DILocation(line: 425, column: 50, scope: !1151)
!1157 = !DILocalVariable(name: "ca_state", arg: 2, scope: !1151, file: !6, line: 425, type: !1154)
!1158 = !DILocation(line: 425, column: 63, scope: !1151)
!1159 = !DILocalVariable(name: "icsk", scope: !1151, file: !6, line: 427, type: !198)
!1160 = !DILocation(line: 427, column: 31, scope: !1151)
!1161 = !DILocation(line: 427, column: 47, scope: !1151)
!1162 = !DILocation(line: 427, column: 38, scope: !1151)
!1163 = !DILocation(line: 429, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1151, file: !6, line: 429, column: 6)
!1165 = !DILocation(line: 429, column: 12, scope: !1164)
!1166 = !DILocation(line: 429, column: 25, scope: !1164)
!1167 = !DILocation(line: 429, column: 6, scope: !1151)
!1168 = !DILocation(line: 430, column: 3, scope: !1164)
!1169 = !DILocation(line: 430, column: 9, scope: !1164)
!1170 = !DILocation(line: 430, column: 22, scope: !1164)
!1171 = !DILocation(line: 430, column: 32, scope: !1164)
!1172 = !DILocation(line: 430, column: 36, scope: !1164)
!1173 = !DILocation(line: 431, column: 24, scope: !1151)
!1174 = !DILocation(line: 431, column: 2, scope: !1151)
!1175 = !DILocation(line: 431, column: 8, scope: !1151)
!1176 = !DILocation(line: 431, column: 22, scope: !1151)
!1177 = !DILocation(line: 432, column: 1, scope: !1151)
!1178 = distinct !DISubprogram(name: "tcp_in_cwnd_reduction", scope: !6, file: !6, line: 464, type: !818, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1179 = !DILocalVariable(name: "sk", arg: 1, scope: !1178, file: !6, line: 464, type: !792)
!1180 = !DILocation(line: 464, column: 61, scope: !1178)
!1181 = !DILocation(line: 467, column: 18, scope: !1178)
!1182 = !DILocation(line: 467, column: 9, scope: !1178)
!1183 = !DILocation(line: 467, column: 23, scope: !1178)
!1184 = !DILocation(line: 467, column: 6, scope: !1178)
!1185 = !DILocation(line: 466, column: 42, scope: !1178)
!1186 = !DILocation(line: 466, column: 9, scope: !1178)
!1187 = !DILocation(line: 466, column: 2, scope: !1178)
!1188 = distinct !DISubprogram(name: "tcp_current_ssthresh", scope: !6, file: !6, line: 474, type: !1189, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!274, !792}
!1191 = !DILocalVariable(name: "sk", arg: 1, scope: !1188, file: !6, line: 474, type: !792)
!1192 = !DILocation(line: 474, column: 61, scope: !1188)
!1193 = !DILocalVariable(name: "tp", scope: !1188, file: !6, line: 476, type: !729)
!1194 = !DILocation(line: 476, column: 25, scope: !1188)
!1195 = !DILocation(line: 476, column: 37, scope: !1188)
!1196 = !DILocation(line: 476, column: 30, scope: !1188)
!1197 = !DILocation(line: 478, column: 28, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 478, column: 6)
!1199 = !DILocation(line: 478, column: 6, scope: !1198)
!1200 = !DILocation(line: 478, column: 6, scope: !1188)
!1201 = !DILocation(line: 479, column: 10, scope: !1198)
!1202 = !DILocation(line: 479, column: 14, scope: !1198)
!1203 = !DILocation(line: 479, column: 3, scope: !1198)
!1204 = !DILocation(line: 481, column: 10, scope: !1198)
!1205 = !DILocation(line: 481, column: 3, scope: !1198)
!1206 = !DILocation(line: 484, column: 1, scope: !1188)
!1207 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 6, type: !1208, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!194}
!1210 = !DILocalVariable(name: "tcp_sock_struct", scope: !1207, file: !3, line: 8, type: !441)
!1211 = !DILocation(line: 8, column: 18, scope: !1207)
!1212 = !DILocalVariable(name: "sk", scope: !1207, file: !3, line: 9, type: !440)
!1213 = !DILocation(line: 9, column: 19, scope: !1207)
!1214 = !DILocalVariable(name: "tp", scope: !1207, file: !3, line: 10, type: !440)
!1215 = !DILocation(line: 10, column: 19, scope: !1207)
!1216 = !DILocation(line: 10, column: 31, scope: !1207)
!1217 = !DILocation(line: 10, column: 24, scope: !1207)
!1218 = !DILocalVariable(name: "icsk", scope: !1207, file: !3, line: 11, type: !198)
!1219 = !DILocation(line: 11, column: 31, scope: !1207)
!1220 = !DILocation(line: 11, column: 47, scope: !1207)
!1221 = !DILocation(line: 11, column: 38, scope: !1207)
!1222 = !DILocalVariable(name: "ca_state", scope: !1207, file: !3, line: 13, type: !302)
!1223 = !DILocation(line: 13, column: 5, scope: !1207)
!1224 = !DILocation(line: 15, column: 2, scope: !1207)
!1225 = !DILocation(line: 16, column: 29, scope: !1207)
!1226 = !DILocation(line: 16, column: 2, scope: !1207)
!1227 = !DILocalVariable(name: "net_namespace", scope: !1207, file: !3, line: 17, type: !222)
!1228 = !DILocation(line: 17, column: 13, scope: !1207)
!1229 = !DILocation(line: 18, column: 2, scope: !1207)
!1230 = !DILocation(line: 19, column: 2, scope: !1207)
!1231 = !DILocation(line: 19, column: 6, scope: !1207)
!1232 = !DILocation(line: 19, column: 40, scope: !1207)
!1233 = !DILocation(line: 20, column: 2, scope: !1207)
!1234 = !DILocation(line: 22, column: 75, scope: !1207)
!1235 = !DILocation(line: 22, column: 79, scope: !1207)
!1236 = !DILocation(line: 22, column: 89, scope: !1207)
!1237 = !DILocation(line: 22, column: 93, scope: !1207)
!1238 = !DILocation(line: 22, column: 2, scope: !1207)
!1239 = !DILocation(line: 24, column: 16, scope: !1207)
!1240 = !DILocation(line: 24, column: 2, scope: !1207)
!1241 = !DILocation(line: 26, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 26, column: 6)
!1243 = !DILocation(line: 26, column: 12, scope: !1242)
!1244 = !DILocation(line: 26, column: 25, scope: !1242)
!1245 = !DILocation(line: 26, column: 6, scope: !1207)
!1246 = !DILocation(line: 27, column: 3, scope: !1242)
!1247 = !DILocation(line: 27, column: 9, scope: !1242)
!1248 = !DILocation(line: 27, column: 22, scope: !1242)
!1249 = !DILocation(line: 27, column: 27, scope: !1242)
!1250 = !DILocation(line: 28, column: 15, scope: !1207)
!1251 = !DILocation(line: 28, column: 2, scope: !1207)
!1252 = !DILocation(line: 31, column: 74, scope: !1207)
!1253 = !DILocation(line: 31, column: 78, scope: !1207)
!1254 = !DILocation(line: 31, column: 88, scope: !1207)
!1255 = !DILocation(line: 31, column: 92, scope: !1207)
!1256 = !DILocation(line: 31, column: 2, scope: !1207)
!1257 = !DILocation(line: 33, column: 17, scope: !1207)
!1258 = !{i1 true}
!1259 = !DILocation(line: 33, column: 2, scope: !1207)
!1260 = !DILocation(line: 33, column: 6, scope: !1207)
!1261 = !DILocation(line: 33, column: 15, scope: !1207)
!1262 = !DILocation(line: 35, column: 21, scope: !1207)
!1263 = !DILocation(line: 35, column: 2, scope: !1207)
!1264 = !DILocation(line: 35, column: 6, scope: !1207)
!1265 = !DILocation(line: 35, column: 19, scope: !1207)
!1266 = !DILocation(line: 36, column: 12, scope: !1207)
!1267 = !DILocation(line: 36, column: 10, scope: !1207)
!1268 = !DILocation(line: 39, column: 11, scope: !1207)
!1269 = !DILocation(line: 40, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 40, column: 6)
!1271 = !DILocation(line: 40, column: 12, scope: !1270)
!1272 = !DILocation(line: 40, column: 25, scope: !1270)
!1273 = !DILocation(line: 40, column: 6, scope: !1207)
!1274 = !DILocation(line: 41, column: 3, scope: !1270)
!1275 = !DILocation(line: 41, column: 9, scope: !1270)
!1276 = !DILocation(line: 41, column: 22, scope: !1270)
!1277 = !DILocation(line: 41, column: 32, scope: !1270)
!1278 = !DILocation(line: 41, column: 36, scope: !1270)
!1279 = !DILocation(line: 42, column: 24, scope: !1207)
!1280 = !DILocation(line: 42, column: 2, scope: !1207)
!1281 = !DILocation(line: 42, column: 8, scope: !1207)
!1282 = !DILocation(line: 42, column: 22, scope: !1207)
!1283 = !DILocation(line: 44, column: 19, scope: !1207)
!1284 = !DILocation(line: 44, column: 2, scope: !1207)
!1285 = !DILocation(line: 45, column: 15, scope: !1207)
!1286 = !DILocation(line: 45, column: 2, scope: !1207)
!1287 = !DILocalVariable(name: "ack", scope: !1207, file: !3, line: 47, type: !250)
!1288 = !DILocation(line: 47, column: 6, scope: !1207)
!1289 = !DILocalVariable(name: "acked", scope: !1207, file: !3, line: 48, type: !250)
!1290 = !DILocation(line: 48, column: 6, scope: !1207)
!1291 = !DILocation(line: 50, column: 2, scope: !1207)
!1292 = !DILocation(line: 51, column: 21, scope: !1207)
!1293 = !DILocation(line: 51, column: 25, scope: !1207)
!1294 = !DILocation(line: 51, column: 2, scope: !1207)
!1295 = !DILocation(line: 51, column: 6, scope: !1207)
!1296 = !DILocation(line: 51, column: 19, scope: !1207)
!1297 = !DILocalVariable(name: "prior_cwnd", scope: !1207, file: !3, line: 52, type: !250)
!1298 = !DILocation(line: 52, column: 6, scope: !1207)
!1299 = !DILocation(line: 52, column: 19, scope: !1207)
!1300 = !DILocation(line: 52, column: 23, scope: !1207)
!1301 = !DILocalVariable(name: "i", scope: !1302, file: !3, line: 54, type: !194)
!1302 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 54, column: 2)
!1303 = !DILocation(line: 54, column: 11, scope: !1302)
!1304 = !DILocation(line: 54, column: 7, scope: !1302)
!1305 = !DILocation(line: 54, column: 18, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 54, column: 2)
!1307 = !DILocation(line: 54, column: 20, scope: !1306)
!1308 = !DILocation(line: 54, column: 2, scope: !1302)
!1309 = !DILocation(line: 56, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 56, column: 7)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 54, column: 32)
!1312 = !DILocation(line: 56, column: 13, scope: !1310)
!1313 = !DILocation(line: 56, column: 26, scope: !1310)
!1314 = !DILocation(line: 56, column: 7, scope: !1311)
!1315 = !DILocalVariable(name: "sample", scope: !1316, file: !3, line: 58, type: !318)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 57, column: 3)
!1317 = !DILocation(line: 58, column: 22, scope: !1316)
!1318 = !DILocation(line: 58, column: 31, scope: !1316)
!1319 = !DILocation(line: 58, column: 47, scope: !1316)
!1320 = !DILocation(line: 60, column: 25, scope: !1316)
!1321 = !DILocation(line: 62, column: 4, scope: !1316)
!1322 = !DILocation(line: 62, column: 10, scope: !1316)
!1323 = !DILocation(line: 62, column: 23, scope: !1316)
!1324 = !DILocation(line: 62, column: 34, scope: !1316)
!1325 = !DILocation(line: 63, column: 3, scope: !1316)
!1326 = !DILocation(line: 65, column: 16, scope: !1311)
!1327 = !DILocation(line: 65, column: 20, scope: !1311)
!1328 = !DILocation(line: 65, column: 14, scope: !1311)
!1329 = !DILocation(line: 66, column: 25, scope: !1311)
!1330 = !DILocation(line: 66, column: 29, scope: !1311)
!1331 = !DILocation(line: 66, column: 3, scope: !1311)
!1332 = !DILocation(line: 66, column: 7, scope: !1311)
!1333 = !DILocation(line: 66, column: 23, scope: !1311)
!1334 = !DILocation(line: 67, column: 18, scope: !1311)
!1335 = !DILocation(line: 67, column: 22, scope: !1311)
!1336 = !DILocation(line: 67, column: 27, scope: !1311)
!1337 = !DILocation(line: 67, column: 3, scope: !1311)
!1338 = !DILocation(line: 68, column: 6, scope: !1311)
!1339 = !DILocation(line: 70, column: 3, scope: !1311)
!1340 = !DILocation(line: 71, column: 2, scope: !1311)
!1341 = !DILocation(line: 54, column: 28, scope: !1306)
!1342 = !DILocation(line: 54, column: 2, scope: !1306)
!1343 = distinct !{!1343, !1308, !1344}
!1344 = !DILocation(line: 71, column: 2, scope: !1302)
!1345 = !DILocation(line: 74, column: 19, scope: !1207)
!1346 = !DILocation(line: 74, column: 2, scope: !1207)
!1347 = !DILocation(line: 76, column: 2, scope: !1207)
!1348 = !DILocation(line: 77, column: 44, scope: !1207)
!1349 = !DILocation(line: 77, column: 23, scope: !1207)
!1350 = !DILocation(line: 77, column: 2, scope: !1207)
!1351 = !DILocation(line: 77, column: 6, scope: !1207)
!1352 = !DILocation(line: 77, column: 21, scope: !1207)
!1353 = !DILocation(line: 78, column: 2, scope: !1207)
!1354 = !DILocation(line: 78, column: 6, scope: !1207)
!1355 = !DILocation(line: 78, column: 19, scope: !1207)
!1356 = !DILocation(line: 79, column: 19, scope: !1207)
!1357 = !DILocation(line: 79, column: 23, scope: !1207)
!1358 = !DILocation(line: 79, column: 2, scope: !1207)
!1359 = !DILocation(line: 79, column: 6, scope: !1207)
!1360 = !DILocation(line: 79, column: 17, scope: !1207)
!1361 = !DILocation(line: 80, column: 15, scope: !1207)
!1362 = !DILocation(line: 80, column: 19, scope: !1207)
!1363 = !DILocation(line: 80, column: 13, scope: !1207)
!1364 = !DILocation(line: 81, column: 21, scope: !1207)
!1365 = !DILocation(line: 81, column: 27, scope: !1207)
!1366 = !DILocation(line: 81, column: 40, scope: !1207)
!1367 = !DILocation(line: 81, column: 49, scope: !1207)
!1368 = !DILocation(line: 81, column: 2, scope: !1207)
!1369 = !DILocation(line: 81, column: 6, scope: !1207)
!1370 = !DILocation(line: 81, column: 19, scope: !1207)
!1371 = !DILocation(line: 83, column: 19, scope: !1207)
!1372 = !DILocation(line: 83, column: 2, scope: !1207)
!1373 = !DILocation(line: 85, column: 2, scope: !1207)
!1374 = !DILocation(line: 86, column: 17, scope: !1207)
!1375 = !DILocation(line: 86, column: 23, scope: !1207)
!1376 = !DILocation(line: 86, column: 36, scope: !1207)
!1377 = !DILocation(line: 86, column: 46, scope: !1207)
!1378 = !DILocation(line: 86, column: 2, scope: !1207)
!1379 = !DILocation(line: 86, column: 6, scope: !1207)
!1380 = !DILocation(line: 86, column: 15, scope: !1207)
!1381 = !DILocation(line: 87, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 87, column: 6)
!1383 = !DILocation(line: 87, column: 10, scope: !1382)
!1384 = !DILocation(line: 87, column: 27, scope: !1382)
!1385 = !DILocation(line: 87, column: 31, scope: !1382)
!1386 = !DILocation(line: 87, column: 25, scope: !1382)
!1387 = !DILocation(line: 87, column: 6, scope: !1207)
!1388 = !DILocation(line: 88, column: 22, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 87, column: 45)
!1390 = !DILocation(line: 88, column: 26, scope: !1389)
!1391 = !DILocation(line: 88, column: 3, scope: !1389)
!1392 = !DILocation(line: 88, column: 7, scope: !1389)
!1393 = !DILocation(line: 88, column: 20, scope: !1389)
!1394 = !DILocation(line: 89, column: 2, scope: !1389)
!1395 = !DILocation(line: 91, column: 2, scope: !1207)
!1396 = !DILocation(line: 93, column: 30, scope: !1207)
!1397 = !DILocation(line: 93, column: 34, scope: !1207)
!1398 = !DILocation(line: 93, column: 2, scope: !1207)
!1399 = !DILocation(line: 94, column: 2, scope: !1207)
!1400 = distinct !DISubprogram(name: "tcp_sk_init", scope: !1401, file: !1401, line: 21, type: !1402, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1401 = !DIFile(filename: "../../stub_model/source/simple_tcp_ipv4.c", directory: "/mnt/d/wsl/smack/examples/linux-4.12/test_main_files/reno")
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!194, !221}
!1404 = !DILocalVariable(name: "net", arg: 1, scope: !1400, file: !1401, line: 21, type: !221)
!1405 = !DILocation(line: 21, column: 47, scope: !1400)
!1406 = !DILocalVariable(name: "res", scope: !1400, file: !1401, line: 23, type: !194)
!1407 = !DILocation(line: 23, column: 6, scope: !1400)
!1408 = !DILocalVariable(name: "cpu", scope: !1400, file: !1401, line: 23, type: !194)
!1409 = !DILocation(line: 23, column: 11, scope: !1400)
!1410 = !DILocalVariable(name: "cnt", scope: !1400, file: !1401, line: 23, type: !194)
!1411 = !DILocation(line: 23, column: 16, scope: !1400)
!1412 = !DILocation(line: 40, column: 2, scope: !1400)
!1413 = !DILocation(line: 40, column: 7, scope: !1400)
!1414 = !DILocation(line: 40, column: 27, scope: !1400)
!1415 = !DILocation(line: 41, column: 2, scope: !1400)
!1416 = !DILocation(line: 41, column: 7, scope: !1400)
!1417 = !DILocation(line: 41, column: 36, scope: !1400)
!1418 = !DILocation(line: 43, column: 2, scope: !1400)
!1419 = !DILocation(line: 43, column: 7, scope: !1400)
!1420 = !DILocation(line: 43, column: 32, scope: !1400)
!1421 = !DILocation(line: 44, column: 2, scope: !1400)
!1422 = !DILocation(line: 44, column: 7, scope: !1400)
!1423 = !DILocation(line: 44, column: 39, scope: !1400)
!1424 = !DILocation(line: 45, column: 2, scope: !1400)
!1425 = !DILocation(line: 45, column: 7, scope: !1400)
!1426 = !DILocation(line: 45, column: 38, scope: !1400)
!1427 = !DILocation(line: 47, column: 2, scope: !1400)
!1428 = !DILocation(line: 47, column: 7, scope: !1400)
!1429 = !DILocation(line: 47, column: 38, scope: !1400)
!1430 = !DILocation(line: 48, column: 2, scope: !1400)
!1431 = !DILocation(line: 48, column: 7, scope: !1400)
!1432 = !DILocation(line: 48, column: 40, scope: !1400)
!1433 = !DILocation(line: 49, column: 2, scope: !1400)
!1434 = !DILocation(line: 49, column: 7, scope: !1400)
!1435 = !DILocation(line: 49, column: 39, scope: !1400)
!1436 = !DILocation(line: 51, column: 2, scope: !1400)
!1437 = !DILocation(line: 51, column: 7, scope: !1400)
!1438 = !DILocation(line: 51, column: 35, scope: !1400)
!1439 = !DILocation(line: 52, column: 2, scope: !1400)
!1440 = !DILocation(line: 52, column: 7, scope: !1400)
!1441 = !DILocation(line: 52, column: 38, scope: !1400)
!1442 = !DILocation(line: 53, column: 2, scope: !1400)
!1443 = !DILocation(line: 53, column: 7, scope: !1400)
!1444 = !DILocation(line: 53, column: 34, scope: !1400)
!1445 = !DILocation(line: 54, column: 2, scope: !1400)
!1446 = !DILocation(line: 54, column: 7, scope: !1400)
!1447 = !DILocation(line: 54, column: 34, scope: !1400)
!1448 = !DILocation(line: 55, column: 2, scope: !1400)
!1449 = !DILocation(line: 55, column: 7, scope: !1400)
!1450 = !DILocation(line: 55, column: 32, scope: !1400)
!1451 = !DILocation(line: 56, column: 2, scope: !1400)
!1452 = !DILocation(line: 56, column: 7, scope: !1400)
!1453 = !DILocation(line: 56, column: 32, scope: !1400)
!1454 = !DILocation(line: 57, column: 2, scope: !1400)
!1455 = !DILocation(line: 57, column: 7, scope: !1400)
!1456 = !DILocation(line: 57, column: 38, scope: !1400)
!1457 = !DILocation(line: 58, column: 2, scope: !1400)
!1458 = !DILocation(line: 58, column: 7, scope: !1400)
!1459 = !DILocation(line: 58, column: 35, scope: !1400)
!1460 = !DILocation(line: 59, column: 2, scope: !1400)
!1461 = !DILocation(line: 59, column: 7, scope: !1400)
!1462 = !DILocation(line: 59, column: 37, scope: !1400)
!1463 = !DILocation(line: 60, column: 2, scope: !1400)
!1464 = !DILocation(line: 60, column: 7, scope: !1400)
!1465 = !DILocation(line: 60, column: 32, scope: !1400)
!1466 = !DILocation(line: 68, column: 2, scope: !1400)
!1467 = !DILocation(line: 70, column: 14, scope: !1400)
!1468 = !DILocation(line: 70, column: 2, scope: !1400)
!1469 = !DILocation(line: 72, column: 9, scope: !1400)
!1470 = !DILocation(line: 72, column: 2, scope: !1400)
!1471 = !DILocation(line: 73, column: 1, scope: !1400)
!1472 = distinct !DISubprogram(name: "tcp_ca_event", scope: !6, file: !6, line: 434, type: !1473, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !288, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1476 = !DILocalVariable(name: "sk", arg: 1, scope: !1472, file: !6, line: 434, type: !288)
!1477 = !DILocation(line: 434, column: 46, scope: !1472)
!1478 = !DILocalVariable(name: "event", arg: 2, scope: !1472, file: !6, line: 434, type: !1475)
!1479 = !DILocation(line: 434, column: 74, scope: !1472)
!1480 = !DILocalVariable(name: "icsk", scope: !1472, file: !6, line: 436, type: !964)
!1481 = !DILocation(line: 436, column: 37, scope: !1472)
!1482 = !DILocation(line: 436, column: 53, scope: !1472)
!1483 = !DILocation(line: 436, column: 44, scope: !1472)
!1484 = !DILocation(line: 438, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1472, file: !6, line: 438, column: 6)
!1486 = !DILocation(line: 438, column: 12, scope: !1485)
!1487 = !DILocation(line: 438, column: 25, scope: !1485)
!1488 = !DILocation(line: 438, column: 6, scope: !1472)
!1489 = !DILocation(line: 439, column: 3, scope: !1485)
!1490 = !DILocation(line: 439, column: 9, scope: !1485)
!1491 = !DILocation(line: 439, column: 22, scope: !1485)
!1492 = !DILocation(line: 439, column: 33, scope: !1485)
!1493 = !DILocation(line: 439, column: 37, scope: !1485)
!1494 = !DILocation(line: 440, column: 1, scope: !1472)
!1495 = distinct !DISubprogram(name: "tcp_cong_avoid", scope: !656, file: !656, line: 1021, type: !296, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1496 = !DILocalVariable(name: "sk", arg: 1, scope: !1495, file: !656, line: 1021, type: !288)
!1497 = !DILocation(line: 1021, column: 41, scope: !1495)
!1498 = !DILocalVariable(name: "ack", arg: 2, scope: !1495, file: !656, line: 1021, type: !250)
!1499 = !DILocation(line: 1021, column: 49, scope: !1495)
!1500 = !DILocalVariable(name: "acked", arg: 3, scope: !1495, file: !656, line: 1021, type: !250)
!1501 = !DILocation(line: 1021, column: 58, scope: !1495)
!1502 = !DILocalVariable(name: "icsk", scope: !1495, file: !656, line: 1023, type: !964)
!1503 = !DILocation(line: 1023, column: 37, scope: !1495)
!1504 = !DILocation(line: 1023, column: 53, scope: !1495)
!1505 = !DILocation(line: 1023, column: 44, scope: !1495)
!1506 = !DILocation(line: 1025, column: 2, scope: !1495)
!1507 = !DILocation(line: 1025, column: 8, scope: !1495)
!1508 = !DILocation(line: 1025, column: 21, scope: !1495)
!1509 = !DILocation(line: 1025, column: 32, scope: !1495)
!1510 = !DILocation(line: 1025, column: 36, scope: !1495)
!1511 = !DILocation(line: 1025, column: 41, scope: !1495)
!1512 = !DILocation(line: 1026, column: 31, scope: !1495)
!1513 = !DILocation(line: 1026, column: 9, scope: !1495)
!1514 = !DILocation(line: 1026, column: 2, scope: !1495)
!1515 = !DILocation(line: 1026, column: 14, scope: !1495)
!1516 = !DILocation(line: 1026, column: 29, scope: !1495)
!1517 = !DILocation(line: 1027, column: 1, scope: !1495)
!1518 = distinct !DISubprogram(name: "tcp_sk_exit", scope: !1401, file: !1401, line: 11, type: !1519, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !514)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !221}
!1521 = !DILocalVariable(name: "net", arg: 1, scope: !1518, file: !1401, line: 11, type: !221)
!1522 = !DILocation(line: 11, column: 48, scope: !1518)
!1523 = !DILocation(line: 18, column: 2, scope: !1518)
!1524 = distinct !DISubprogram(name: "__VERIFIER_assume", scope: !1525, file: !1525, line: 36, type: !1526, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1525 = !DIFile(filename: "/usr/local/share/smack/lib/smack.c", directory: "")
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !194}
!1528 = !DILocalVariable(name: "x", arg: 1, scope: !1524, file: !1525, line: 36, type: !194)
!1529 = !DILocation(line: 36, column: 28, scope: !1524)
!1530 = !DILocalVariable(name: "v", arg: 1, scope: !1531, file: !1525, line: 258, type: !194)
!1531 = distinct !DISubprogram(name: "__SMACK_dummy", scope: !1525, file: !1525, line: 258, type: !1526, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1532 = !DILocation(line: 258, column: 24, scope: !1531, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 37, column: 3, scope: !1524)
!1534 = !DILocation(line: 258, column: 29, scope: !1531, inlinedAt: !1533)
!1535 = !DILocation(line: 38, column: 3, scope: !1524)
!1536 = !DILocation(line: 39, column: 1, scope: !1524)
!1537 = !DILocation(line: 258, column: 24, scope: !1531)
!1538 = !DILocation(line: 258, column: 29, scope: !1531)
!1539 = !DILocation(line: 258, column: 59, scope: !1531)
!1540 = distinct !DISubprogram(name: "__VERIFIER_assert", scope: !1525, file: !1525, line: 42, type: !1526, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1541 = !DILocalVariable(name: "x", arg: 1, scope: !1540, file: !1525, line: 42, type: !194)
!1542 = !DILocation(line: 42, column: 28, scope: !1540)
!1543 = !DILocation(line: 258, column: 24, scope: !1531, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 44, column: 3, scope: !1540)
!1545 = !DILocation(line: 258, column: 29, scope: !1531, inlinedAt: !1544)
!1546 = !DILocation(line: 45, column: 3, scope: !1540)
!1547 = !DILocation(line: 47, column: 1, scope: !1540)
!1548 = distinct !DISubprogram(name: "__SMACK_check_overflow", scope: !1525, file: !1525, line: 61, type: !1526, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1549 = !DILocalVariable(name: "flag", arg: 1, scope: !1548, file: !1525, line: 61, type: !194)
!1550 = !DILocation(line: 61, column: 33, scope: !1548)
!1551 = !DILocation(line: 258, column: 24, scope: !1531, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 62, column: 3, scope: !1548)
!1553 = !DILocation(line: 258, column: 29, scope: !1531, inlinedAt: !1552)
!1554 = !DILocation(line: 63, column: 3, scope: !1548)
!1555 = !DILocation(line: 64, column: 1, scope: !1548)
!1556 = distinct !DISubprogram(name: "__VERIFIER_nondet_unsigned_int", scope: !1525, file: !1525, line: 135, type: !1557, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!7}
!1559 = !DILocation(line: 136, column: 20, scope: !1556)
!1560 = !DILocalVariable(name: "x", scope: !1556, file: !1525, line: 136, type: !7)
!1561 = !DILocation(line: 136, column: 16, scope: !1556)
!1562 = !DILocation(line: 137, column: 22, scope: !1556)
!1563 = !DILocalVariable(name: "min", scope: !1556, file: !1525, line: 137, type: !7)
!1564 = !DILocation(line: 137, column: 16, scope: !1556)
!1565 = !DILocation(line: 138, column: 22, scope: !1556)
!1566 = !DILocalVariable(name: "max", scope: !1556, file: !1525, line: 138, type: !7)
!1567 = !DILocation(line: 138, column: 16, scope: !1556)
!1568 = !DILocation(line: 139, column: 25, scope: !1556)
!1569 = !DILocation(line: 139, column: 30, scope: !1556)
!1570 = !DILocation(line: 139, column: 37, scope: !1556)
!1571 = !DILocation(line: 139, column: 49, scope: !1556)
!1572 = !DILocation(line: 139, column: 56, scope: !1556)
!1573 = !DILocation(line: 0, scope: !1556)
!1574 = !DILocation(line: 139, column: 3, scope: !1556)
!1575 = !DILocation(line: 140, column: 23, scope: !1556)
!1576 = !DILocation(line: 140, column: 30, scope: !1556)
!1577 = !DILocation(line: 140, column: 35, scope: !1556)
!1578 = !DILocation(line: 140, column: 3, scope: !1556)
!1579 = !DILocation(line: 141, column: 3, scope: !1556)
!1580 = distinct !DISubprogram(name: "__VERIFIER_nondet_uint", scope: !1525, file: !1525, line: 246, type: !1557, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1581 = !DILocation(line: 247, column: 20, scope: !1580)
!1582 = !DILocalVariable(name: "x", scope: !1580, file: !1525, line: 247, type: !7)
!1583 = !DILocation(line: 247, column: 16, scope: !1580)
!1584 = !DILocation(line: 248, column: 3, scope: !1580)
!1585 = distinct !DISubprogram(name: "__SMACK_decls", scope: !1525, file: !1525, line: 262, type: !1586, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null}
!1588 = !DILocation(line: 264, column: 3, scope: !1585)
!1589 = !DILocation(line: 265, column: 3, scope: !1585)
!1590 = !DILocation(line: 266, column: 3, scope: !1585)
!1591 = !DILocation(line: 268, column: 3, scope: !1585)
!1592 = !DILocation(line: 269, column: 3, scope: !1585)
!1593 = !DILocation(line: 271, column: 3, scope: !1585)
!1594 = !DILocation(line: 442, column: 3, scope: !1585)
!1595 = !DILocation(line: 448, column: 3, scope: !1585)
!1596 = !DILocation(line: 450, column: 3, scope: !1585)
!1597 = !DILocation(line: 465, column: 3, scope: !1585)
!1598 = !DILocation(line: 511, column: 1, scope: !1585)
!1599 = distinct !DISubprogram(name: "__SMACK_init_func_memory_model", scope: !1525, file: !1525, line: 519, type: !1586, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !717, retainedNodes: !514)
!1600 = !DILocation(line: 521, column: 3, scope: !1599)
!1601 = !DILocation(line: 526, column: 1, scope: !1599)
