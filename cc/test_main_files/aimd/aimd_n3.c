#include "share.h"
#include "smack.h"
#include <stdio.h>

extern struct tcp_congestion_ops tcp_reno;

int main()
{
	struct tcp_sock tcp_sock_struct;
	struct tcp_sock* sk = &tcp_sock_struct;
	struct tcp_sock* tp = tcp_sk(sk);
	struct inet_connection_sock* icsk = inet_csk(sk);
	
	u8 ca_state;
	
	memset(&tcp_sock_struct, 0, sizeof(struct tcp_sock));
	tcp_set_congestion_control(sk, &tcp_reno);
	struct net net_namespace;
	memset(&net_namespace, 0, sizeof(struct net));
	sk->inet_conn.icsk_inet.sk.sk_net.net = &net_namespace;
	tcp_sk_init(&net_namespace); //namespace config: net for the socket

	printf("[Before initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);

	tcp_init_sock(sk);

	if (icsk->icsk_ca_ops->init)
		icsk->icsk_ca_ops->init(sk);
	tcp_ca_event(sk, CA_EVENT_TX_START); //adding a new event to the kernel


	printf("[After initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
	
	tp->snd_cwnd = __VERIFIER_nondet_uint();
	//tp->snd_cwnd = 1000000;
	//tp->snd_ssthresh = __VERIFIER_nondet_uint();
	//jiffies = __VERIFIER_nondet_uint();
	assume(tp->snd_cwnd >= 8 && tp->snd_cwnd <= 10);

	//
	ca_state = TCP_CA_Open;
	if (icsk->icsk_ca_ops->set_state)
		icsk->icsk_ca_ops->set_state(sk, ca_state);
	icsk->icsk_ca_state = ca_state;
	//
	tcp_set_ca_state(sk, TCP_CA_Open);
	tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);
	
	u32 prior_cwnd = tp->snd_cwnd;
	u32 ack = 1; //acked number
	u32 acked = 1000; //acked data
	tp->packet_aggregation = 1;
	tp->debug_info = 0;
	tp->one_acked = acked;
	tp->is_cwnd_limited = 1;
	
	//New acked packet 1
	if (icsk->icsk_ca_ops->pkts_acked)
	{
		struct ack_sample sample = { .pkts_acked = ack,
									 .rtt_us = 100,
									 .in_flight = acked };

		icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	}
	tp->num_packets = 2;
	prior_cwnd = tp->snd_cwnd;
	tp->max_packets_out = tp->snd_cwnd;
	tcp_cong_avoid(sk, ack, acked);
	ack++; 
	assert(tp->snd_cwnd >= prior_cwnd);
	
	//New acked packet 2
	//if (icsk->icsk_ca_ops->pkts_acked)
	//{
		//struct ack_sample sample = { .pkts_acked = ack,
									 //.rtt_us = 100,
									 //.in_flight = acked };

		//icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	//}
	//tp->num_packets = 100;
	//prior_cwnd = tp->snd_cwnd;
	//tp->max_packets_out = tp->snd_cwnd;
	//tcp_cong_avoid(sk, ack, acked);
	//ack++; 
	//assert(tp->snd_cwnd >= prior_cwnd);
	
	//New acked packet 3
	//if (icsk->icsk_ca_ops->pkts_acked)
	//{
		//struct ack_sample sample = { .pkts_acked = ack,
									 //.rtt_us = 100,
									 //.in_flight = acked };

		//icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	//}
	//tp->num_packets = 100;
	//prior_cwnd = tp->snd_cwnd;
	//tp->max_packets_out = tp->snd_cwnd;
	//tcp_cong_avoid(sk, ack, acked);
	//ack++; 
	//assert(tp->snd_cwnd >= prior_cwnd);
	
	//New acked packet 4
	//if (icsk->icsk_ca_ops->pkts_acked)
	//{
		//struct ack_sample sample = { .pkts_acked = ack,
									 //.rtt_us = 100,
									 //.in_flight = acked };

		//icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	//}
	//tp->num_packets = 100;
	//prior_cwnd = tp->snd_cwnd;
	//tp->max_packets_out = tp->snd_cwnd;
	//tcp_cong_avoid(sk, ack, acked);
	//ack++; 
	//assert(tp->snd_cwnd >= prior_cwnd);
	
	//New acked packet 5
	//if (icsk->icsk_ca_ops->pkts_acked)
	//{
		//struct ack_sample sample = { .pkts_acked = ack,
									 //.rtt_us = 100,
									 //.in_flight = acked };

		//icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	//}
	//tp->num_packets = 100;
	//prior_cwnd = tp->snd_cwnd;
	//tp->max_packets_out = tp->snd_cwnd;
	//tcp_cong_avoid(sk, ack, acked);
	//ack++; 
	//assert(tp->snd_cwnd >= prior_cwnd);
	
	//New acked packet 6
	//if (icsk->icsk_ca_ops->pkts_acked)
	//{
		//struct ack_sample sample = { .pkts_acked = ack,
									 //.rtt_us = 100,
									 //.in_flight = acked };

		//icsk->icsk_ca_ops->pkts_acked(sk, &sample);
	//}
	//tp->num_packets = 100;
	//prior_cwnd = tp->snd_cwnd;
	//tp->max_packets_out = tp->snd_cwnd;
	//tcp_cong_avoid(sk, ack, acked);
	//ack++; 
	//assert(tp->snd_cwnd >= prior_cwnd);
}
