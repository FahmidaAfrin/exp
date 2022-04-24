#include "share.h"
#include "smack.h"
#include <stdio.h>

int main()
{
	struct tcp_sock tcp_sock_struct;
	struct tcp_sock *sk = &tcp_sock_struct;
	struct tcp_sock *tp = tcp_sk(sk);
	struct inet_connection_sock *icsk = inet_csk(sk);
	u8 ca_state;

	memset(&tcp_sock_struct, 0, sizeof(struct tcp_sock));
	tcp_set_congestion_control(sk, &tcp_reno);
	struct net net_namespace;
	memset(&net_namespace, 0, sizeof(struct net));
	sk->inet_conn.icsk_inet.sk.sk_net.net = &net_namespace;
	tcp_sk_init(&net_namespace);

	//printf("[Before initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);

	tcp_init_sock(sk);

	if (icsk->icsk_ca_ops->init)
		icsk->icsk_ca_ops->init(sk);
	tcp_ca_event(sk, CA_EVENT_TX_START);

	//printf("[After initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);

	tp->snd_cwnd = __VERIFIER_nondet_uint();
	tp->snd_ssthresh = __VERIFIER_nondet_uint();
	jiffies = __VERIFIER_nondet_uint();

	tcp_set_ca_state(sk, TCP_CA_Open);
	tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);
	tp->is_cwnd_limited = 1;
	u32 init_num_packets = 2000;
	u32 init_acked = 1;

	if (icsk->icsk_ca_ops->pkts_acked)
	{
		struct ack_sample sample = { .pkts_acked = 1, .rtt_us = 100, .in_flight = 1 };
		icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	}

	u32 ack = 1; //acked number
	u32 acked = init_acked; //acked sacked
	tp->packet_aggregation = 0; // 0: original, 1: aggregation
	tp->num_packets = init_num_packets;
	tp->snd_cwnd_cnt = 0;
	u32 prior_cwnd = tp->snd_cwnd;

	for (int i = 0; i < tp->num_packets; i++) {
		prior_cwnd = tp->snd_cwnd;
		//If snd_cwnd > 2*max_packets_out, snd_cwnd will not increase 
		tp->max_packets_out = tp->snd_cwnd; //To not limit snd_cwnd increasement
		tcp_cong_avoid(sk, ack, acked);
		//assert(tp->snd_cwnd >= prior_cwnd);
	}
	//printf("[After cong avoid] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
	assert(tp->snd_cwnd >= prior_cwnd);

	return 0;
}
