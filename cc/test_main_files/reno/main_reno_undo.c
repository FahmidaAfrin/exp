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
	//
	u8 ca_state;
	
	FILE *input = fopen ("losspackets.txt", "r");
	int n;
	if (input) {
		if (fscanf (input, "%d", &n) == EOF) {
			printf ("Error: Empty file!!!");
		}
	}
	else {
		printf ("Error opening file losspackets.txt!!!");
	}
	
	int losspackets[n];
	
	if (input) {
		int tmp;
		int i = 0;
		printf ("Loss packets: ");
		while (fscanf (input, "%d", &tmp) != EOF && i < n) {
			losspackets[i] = tmp;
			printf ("%d, ", losspackets[i]);
			i++;
		}
		printf ("\n");
		if (i < n) {
			printf ("Error: require %d loss packet but only have %d\n", n, i);
		}
	}
	else {
		printf ("Error opening file losspackets.txt!!!");
	}
	
	fclose (input);

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
	tp->snd_ssthresh = __VERIFIER_nondet_uint();
	jiffies = __VERIFIER_nondet_uint();

	//
	ca_state = TCP_CA_Open;
	if (icsk->icsk_ca_ops->set_state)
		icsk->icsk_ca_ops->set_state(sk, ca_state);
	icsk->icsk_ca_state = ca_state;
	//
	tcp_set_ca_state(sk, TCP_CA_Open);
	tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);

	u32 ack = 1; //acked number
	u32 acked = 1024; //acked data
	int j = 0;
	int can_undo = 0;

	//printf("Congestion avoidance\n");
	tp->snd_cwnd_cnt = tp->snd_cwnd;
	u32 prior_cwnd = tp->snd_cwnd;

	for (int i = 0; i < 100; i++) {
		//New acked packet
		if (icsk->icsk_ca_ops->pkts_acked)
		{
			struct ack_sample sample = { .pkts_acked = ack,
										 .rtt_us = 100,
										 .in_flight = acked };

			icsk->icsk_ca_ops->pkts_acked(sk, &sample);
		}
		//u32 initial_cwnd = tp->snd_cwnd;
		prior_cwnd = tp->snd_cwnd;
		tp->max_packets_out = tp->snd_cwnd;
		tcp_cong_avoid(sk, ack, acked);
		ack++;

		//assert(tp->snd_cwnd > prior_cwnd);
		if (i == losspackets[j] && j < n) {
			if (can_undo == 0) { //loss
				can_undo = 1;
				tcp_set_ca_state(sk, TCP_CA_Disorder);
				printf ("[Packet loss]: tp->srtt_us:%u\n", tp->srtt_us);
				tp->prior_ssthresh = tcp_current_ssthresh(sk);
				tp->snd_cwnd_cnt = 0;
				tp->prior_cwnd = tp->snd_cwnd;
				tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
				tp->snd_cwnd = tp->snd_ssthresh;
				printf("[Packet loss] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
			}
			else { //undo
				can_undo = 0;
				printf("[Undo]\n");
				tp->snd_cwnd = icsk->icsk_ca_ops->undo_cwnd(sk);
				if (tp->prior_ssthresh > tp->snd_ssthresh) {
					tp->snd_ssthresh = tp->prior_ssthresh;
				}
				//assert(tp->snd_cwnd == prior_cwnd);
				printf("[After undo] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
			}
			j++;
		}
	}

	//cwnd reduction then undo
	tcp_set_ca_state(sk, TCP_CA_Disorder);
	//Step 1: cwnd_reduction
	printf("Cwnd reduction\n");
	tp->prior_ssthresh = tcp_current_ssthresh(sk);
	tp->snd_cwnd_cnt = 0;
	tp->prior_cwnd = tp->snd_cwnd;
	prior_cwnd = tp->snd_cwnd;
	tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
	
	tcp_set_ca_state(sk, TCP_CA_Recovery);

	printf("Undo\n");
	tp->snd_cwnd = icsk->icsk_ca_ops->undo_cwnd(sk);
	if (tp->prior_ssthresh > tp->snd_ssthresh) {
		tp->snd_ssthresh = tp->prior_ssthresh;
	}

	assert(tp->snd_cwnd == prior_cwnd);
	
	printf("tp->snd_cwnd:%u\n", tp->snd_cwnd);
	return 0;
}
