#include "share.h"

extern struct tcp_congestion_ops tcp_reno;

int main(){

	printf("hello_world\n");
	struct tcp_sock tcp_sock_struct ;
 	struct tcp_sock* sk = &tcp_sock_struct;
	memset(&tcp_sock_struct, 0, sizeof(struct tcp_sock));
 	tcp_set_congestion_control(sk, &tcp_reno);
	struct net net_namespace;
	memset(&net_namespace, 0, sizeof(struct net));
	sk->inet_conn.icsk_inet.sk.sk_net.net=&net_namespace;
	tcp_sk_init(&net_namespace);//namespace config: net for the sk

	tcp_init_sock(sk);
	/*printf("reordering:%d\n", sk->reordering);*/

	printf("reordering:%d\n", sk->reordering);
	/*struct bictcp *ca = inet_csk_ca(sk);*/
	struct tcp_sock *tp = tcp_sk(sk);
	/*bictcp_init(sk);*/

	int flag = 0;
	int ack = 0;//the number of ack number
	int acked = 0; /* Number of packets newly acked */
	/*int delivered = 0;*/
	/*struct rate_sample rs = { .prior_delivered = 0 };*/
	/*tcp_cong_control(sk, ack, delivered, flag, &rs);*/

	printf("[Before:tcp_cong_avoid] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
	tp->snd_ssthresh = 5;
	tp->is_cwnd_limited = true;
	/*tcp_cong_avoid(sk, ack, acked);*/
	printf("[After:tcp_cong_avoid] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n", tp->snd_cwnd, tp->snd_ssthresh);
	return 0;
}
