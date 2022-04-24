/*************************************************************************
    > File Name:main_cubic_one_ack.c
  > Author: wsun
  > Mail:sunweiflyus@gmail.com
  > Created Time: Wed 28 Jun 2017 05:04:52 PM CDT
  > Comments: for type2, cubic one ack
 ************************************************************************/
#include "share.h"
extern struct tcp_congestion_ops tcp_reno;

int main()
{

	struct tcp_sock tcp_sock_struct ;
	struct tcp_sock* sk = &tcp_sock_struct;
	/*struct bictcp *ca = inet_csk_ca(sk);*/
	struct tcp_sock *tp = tcp_sk(sk);
	struct inet_connection_sock *icsk = inet_csk(sk);

	memset(&tcp_sock_struct, 0, sizeof(struct tcp_sock));
	tcp_set_congestion_control(sk, &tcp_reno);
	struct net net_namespace;
	memset(&net_namespace, 0, sizeof(struct net));
	sk->inet_conn.icsk_inet.sk.sk_net.net = &net_namespace;
	tcp_sk_init(&net_namespace);//namespace config: net for the sk

	printf("[Before initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);

	tcp_init_sock(sk);
	/*icsk->icsk_ca_ops->init(sk);*/ // No init for reno
	tcp_ca_event(sk, CA_EVENT_TX_START);// a new event added in new kernel

	printf("[After initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);

	tcp_set_ca_state(sk, TCP_CA_Disorder);
	//Initial Symbolic state:
	//sym_cwnd_0: symbolic range (1, 0xffffffff)
	//sym_ssth_0: symbolic range (1, 0xffffffff)
	u32 sym_cwnd_0 = 0;
	klee_make_symbolic(&sym_cwnd_0, sizeof(u32), "sym_cwnd_0");
	tp->snd_cwnd = sym_cwnd_0;

	u32 sym_ssth_0 = 0;
	klee_make_symbolic(&sym_ssth_0, sizeof(u32), "sym_ssth_0");
	tp->snd_ssthresh = sym_ssth_0;

	//Initial feasbile constraints
	klee_assume(sym_cwnd_0 != 0);
	klee_assume(sym_ssth_0 != 0);

	//Begin a simulation of receving an ACK after cwnd_reduction
	//step 1: cwnd_reduction
	klee_warning("step1: cwnd_reduction");
	u32 sym_jiffies_0 = 0;//sym_jiffies_0: to simulate the time when cwnd_reduction
	klee_make_symbolic(&sym_jiffies_0, sizeof(u32), "sym_jiffies_0");
	klee_assume(sym_jiffies_0 != 0);
	jiffies = sym_jiffies_0;

	tp->prior_ssthresh = tcp_current_ssthresh(sk);
	tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
	u32 sym_cwnd_1 = 0;// cwnd_1: to simulate the cwnd reduced by "fast recover"

	tcp_set_ca_state(sk, TCP_CA_Recovery);
	klee_make_symbolic(&sym_cwnd_1, sizeof(u32), "sym_cwnd_1");
	tp->snd_cwnd = sym_cwnd_1;
	klee_assume(sym_cwnd_1 != 0);
	klee_assume(sym_cwnd_1 < sym_cwnd_0);// the new cwnd cannot be larger than the previous cwnd after a correct cwnd_reduction phase
	//exit recovery state
	tcp_set_ca_state(sk, TCP_CA_Open);
	tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);// a new event added in new kernel

	//step 2: On an ACK0 in CA stage
	klee_warning("step2: On an ACK in CA stage");
	klee_assume(tp->snd_cwnd >= tp->snd_ssthresh); //To limit in CA stage
	tp->is_cwnd_limited = 1; // Only consider unlimited case

	u32 sym_jiffies_1 = 0;//sym_jiffies_0: to simulate the arriving time of the ACK0
	klee_make_symbolic(&sym_jiffies_1, sizeof(u32), "sym_jiffies_1");
	klee_assume(sym_jiffies_1 > sym_jiffies_0);
	jiffies = sym_jiffies_1;

	u32 sym_pkts_acked_0 = 0;//sym_pkts_acked_0: to simulate the arriving time of the ACK0
	klee_make_symbolic(&sym_pkts_acked_0, sizeof(u32), "sym_pkts_acked_0");
	klee_assume(sym_pkts_acked_0 > 0);

	u32 sym_rtt_us_0 = 0;//sym_rtt_us_0: to simulate the rtt_us of the ACK0
	klee_make_symbolic(&sym_rtt_us_0, sizeof(u32), "sym_rtt_us_0");
	klee_assume(sym_rtt_us_0 > 0);

	u32 sym_in_flight_0 = 0;//sym_in_flight_0: to simulate the in_flight of the ACK0
	klee_make_symbolic(&sym_in_flight_0, sizeof(u32), "sym_in_flight_0");//could be 0

	u32 sym_snd_cnt_0 = 0;//sym_snd_cnt_0: to simulate the current cnt
	klee_make_symbolic(&sym_snd_cnt_0, sizeof(u32), "sym_snd_cnt_0");//could be 0
	tp->snd_cwnd_cnt = sym_snd_cnt_0;


	if (icsk->icsk_ca_ops->pkts_acked)
	{
		klee_warning("step2: To call pkts_acked()");
		struct ack_sample sample = { .pkts_acked = sym_pkts_acked_0,
			       .rtt_us = sym_rtt_us_0,
			        .in_flight = sym_in_flight_0
		};

		icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	}

	u32 sym_ack_0 = 0;//sym_ack_0: to simulate the ack number of the ACK0
	klee_make_symbolic(&sym_ack_0, sizeof(u32), "sym_ack_0");
	klee_assume(sym_ack_0 > 0);

	u32 sym_acked_sacked_0 = 0;//sym_acked_sacked_0: to simulate the acked_sacked of the ACK0
	klee_make_symbolic(&sym_acked_sacked_0, sizeof(u32), "sym_acked_sacked_0");
	klee_assume(sym_acked_sacked_0 > 0);

	klee_warning("step2: To call cong_avoid()");
	tcp_cong_avoid(sk, sym_ack_0, sym_acked_sacked_0);// To call cong_avoid() API

	klee_warning("Finish to print range !");
	klee_print_range("sym_cwnd_0", sym_cwnd_0);
	klee_print_range("sym_ssth_0", sym_ssth_0);
	klee_print_range("sym_jiffies_0", sym_ssth_0);
	klee_print_range("sym_cwnd_1", sym_cwnd_1);
	klee_print_range("sym_jiffies_1", sym_jiffies_1);
	klee_print_range("sym_pkts_acked_0", sym_pkts_acked_0);

	klee_print_range("sym_rtt_us_0", sym_rtt_us_0);
	klee_print_range("sym_in_flight_0", sym_in_flight_0);
	klee_print_range("sym_snd_cnt_0", sym_snd_cnt_0);

	return 0;
}
