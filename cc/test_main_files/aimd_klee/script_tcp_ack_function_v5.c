#ifndef script_tcp_ack_function
#define script_tcp_ack_function
#include "share.h"
#include "klee.h"

extern struct tcp_congestion_ops tcp_reno;
extern unsigned int __VERIFIER_nondet_uint(char *name);
extern u32 __VERIFIER_nondet_u32(char *name);
extern void __VERIFIER_error();

void __VERIFIER_error() 
{
	klee_assert(0);
}

unsigned int __VERIFIER_nondet_uint(char *name) 
{
	unsigned int __sym__VERIFIER_nondet_uint;
	klee_make_symbolic (&__sym__VERIFIER_nondet_uint, sizeof(__sym__VERIFIER_nondet_uint),
	name);
	return __sym__VERIFIER_nondet_uint;
}

u32 __VERIFIER_nondet_u32(char *name) 
{
	u32 __sym__VERIFIER_nondet_u32;
	klee_make_symbolic (&__sym__VERIFIER_nondet_u32, sizeof(__sym__VERIFIER_nondet_u32),
	name);
	return __sym__VERIFIER_nondet_u32;
}

void __VERIFIER_assert(int cond)
{
	if (!(cond))
	{
		__VERIFIER_error();
	}
	return;
}

static int tcp_ack_new(struct sock *sk, const struct sk_buff *skb, int flag)
{
	//STUB(1, "-----.\n");
	struct inet_connection_sock *icsk = inet_csk(sk);
	struct tcp_sock *tp = tcp_sk(sk);
	struct tcp_sacktag_state sack_state;
	struct rate_sample rs = { .prior_delivered = 0 };
	u32 prior_snd_una = tp->snd_una;
	bool is_sack_reneg = tp->is_sack_reneg;
	u32 ack_seq = TCP_SKB_CB(skb)->seq;
	u32 ack = TCP_SKB_CB(skb)->ack_seq;
	int num_dupack = 0;
	int prior_packets = tp->packets_out;
	u32 delivered = tp->delivered;
	u32 lost = tp->lost;
	int rexmit = REXMIT_NONE; /* Flag to (re)transmit to recover losses */
	u32 prior_fack;

	sack_state.first_sackt = 0;
	sack_state.rate = &rs;
	
//	printf("tcp_ack: first.\n");

//	/* We very likely will need to access rtx queue. */
//	prefetch(sk->tcp_rtx_queue.rb_node);
//
	/* If the ack is older than previous acks
	 * then we can probably ignore it.
	 */
	if (before(ack, prior_snd_una)) {
		/* RFC 5961 5.2 [Blind Data Injection Attack].[Mitigation] */
		if (before(ack, prior_snd_una - tp->max_window)) {
			//if (!(flag & FLAG_NO_CHALLENGE_ACK))
				//tcp_send_challenge_ack(sk, skb);
//			printf("First if, prior_snd_una:%u.\n", prior_snd_una);
			printf ("First if tcp_ack, old ack.\n");
			return -1;
		}
		goto old_ack;
	}

	/* If the ack includes data we haven't sent yet, discard
	 * this segment (RFC793 Section 3.9).
	 */
	if (after(ack, tp->snd_nxt)) {
//		printf("Second if, tp->snd_nxt: %u.\n", tp->snd_nxt);
		printf("Second if tcp_ack, invalid ack.\n");
		return -1;
	}

	if (after(ack, prior_snd_una)) {
		flag |= FLAG_SND_UNA_ADVANCED;
		icsk->icsk_retransmits = 0;

//#if IS_ENABLED(CONFIG_TLS_DEVICE)
//		if (static_branch_unlikely(&clean_acked_data_enabled.key))
//			if (icsk->icsk_clean_acked)
//				icsk->icsk_clean_acked(sk, ack);
//#endif
	}

	prior_fack = tcp_is_sack(tp) ? tcp_highest_sack_seq(tp) : tp->snd_una;
	rs.prior_in_flight = tcp_packets_in_flight(tp);

//	/* ts_recent update must be made after we are sure that the packet
//	 * is in window.
//	 */
//	if (flag & FLAG_UPDATE_TS_RECENT)
//		tcp_replace_ts_recent(tp, TCP_SKB_CB(skb)->seq);

	/*
	 * This if-else block calls the function tcp_in_ack_event(),
	 * which in turn calls the optional tcp cc function in_ack_event().
	 * AIMD, BIC, CUBIC, Highspeed, BBR, HTCP, Hybla, Illinois don't use in_ack_event().
	 * DCTCP uses in_ack_event().
	 */
	if ((flag & (FLAG_SLOWPATH | FLAG_SND_UNA_ADVANCED)) ==
	    FLAG_SND_UNA_ADVANCED) {
		/* Window is constant, pure forward advance.
		 * No more checks are required.
		 * Note, we use the fact that SND.UNA>=SND.WL2.
		 */
		tcp_update_wl(tp, ack_seq);
		tcp_snd_una_update(tp, ack);
		flag |= FLAG_WIN_UPDATE;

		tcp_in_ack_event(sk, CA_ACK_WIN_UPDATE);

//		NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPHPACKS);
	} else {
		u32 ack_ev_flags = CA_ACK_SLOWPATH;

		if (ack_seq != TCP_SKB_CB(skb)->end_seq)
			flag |= FLAG_DATA;
//		else
//			NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPPUREACKS);

		//flag |= tcp_ack_update_window(sk, skb, ack, ack_seq);

		//if (TCP_SKB_CB(skb)->sacked)
			//flag |= tcp_sacktag_write_queue(sk, skb, prior_snd_una,
							//&sack_state);

		//if (tcp_ecn_rcv_ecn_echo(tp, tcp_hdr(skb))) {
		if (tp->ecn_flags & TCP_ECN_OK) {
			flag |= FLAG_ECE;
			ack_ev_flags |= CA_ACK_ECE;
		}

		if (flag & FLAG_WIN_UPDATE)
			ack_ev_flags |= CA_ACK_WIN_UPDATE;

		tcp_in_ack_event(sk, ack_ev_flags);
	}

	/* We passed data and got it acked, remove any soft error
	 * log. Something worked...
	 */
	sk->sk_err_soft = 0;
	icsk->icsk_probes_out = 0;
	tp->rcv_tstamp = tcp_jiffies32;
	if (!prior_packets)
		goto no_queue;

	/* Instead of calling tcp_clean_rtx_queue function, we can
	 * test all possible return value for flag.
	 */
//	/* See if we can take anything off of the retransmit queue. */
//	flag |= tcp_clean_rtx_queue(sk, prior_fack, prior_snd_una, &sack_state);
//
//	tcp_rack_update_reo_wnd(sk, &rs);
//
	if (tp->tlp_high_seq)
		tcp_process_tlp_ack(sk, ack, flag);
	/* If needed, reset TLP/RTO timer; RACK may later override this. */
//	if (flag & FLAG_SET_XMIT_TIMER)
//		tcp_set_xmit_timer(sk);
//
	if (tcp_ack_is_dubious(sk, flag)) {
		if (!(flag & (FLAG_SND_UNA_ADVANCED | FLAG_NOT_DUP))) {
			num_dupack = 1;
			/* Consider if pure acks were aggregated in tcp_add_backlog() */
			if (!(flag & FLAG_DATA))
				num_dupack = max_t(u16, 1, skb_shinfo(skb)->gso_segs);
		}
		tcp_fastretrans_alert(sk, prior_snd_una, num_dupack, &flag,
				      &rexmit);
	}

	if ((flag & FLAG_FORWARD_PROGRESS) || !(flag & FLAG_NOT_DUP))
		sk_dst_confirm(sk);

// <M>
	// Update total packets deliverd which is used to adjust cwnd
	tp->delivered += ack - ack_seq;
// <M>


	delivered = tcp_newly_delivered(sk, delivered, flag);
	lost = tp->lost - lost;			/* freshly marked lost */
	rs.is_ack_delayed = !!(flag & FLAG_ACK_MAYBE_DELAYED);
	tcp_rate_gen(sk, delivered, lost, is_sack_reneg, sack_state.rate);
	tcp_cong_control(sk, ack, delivered, flag, sack_state.rate);
//	tcp_xmit_recovery(sk, rexmit);
	printf ("After returning from tcp_cong_control.\n");
	return 1;

no_queue:
	/* If data was DSACKed, see if we can undo a cwnd reduction. */
	if (flag & FLAG_DSACKING_ACK) {
		tcp_fastretrans_alert(sk, prior_snd_una, num_dupack, &flag,
				      &rexmit);
		tcp_newly_delivered(sk, delivered, flag);
	}
//	/* If this ack opens up a zero window, clear backoff.  It was
//	 * being used to time the probes, and is probably far higher than
//	 * it needs to be for normal retransmission.
//	 */
//	tcp_ack_probe(sk);

	if (tp->tlp_high_seq)
		tcp_process_tlp_ack(sk, ack, flag);
		
	printf ("no_queue branch.\n");	
	return 1;

old_ack:
	/* If data was SACKed, tag it and see if we should send more data.
	 * If data was DSACKed, see if we can undo a cwnd reduction.
	 */
	if (TCP_SKB_CB(skb)->sacked) {
		//flag |= tcp_sacktag_write_queue(sk, skb, prior_snd_una,
						//&sack_state);
		tcp_fastretrans_alert(sk, prior_snd_una, num_dupack, &flag,
				      &rexmit);
		tcp_newly_delivered(sk, delivered, flag);
//		tcp_xmit_recovery(sk, rexmit);
	}

	printf ("old_ack branch.\n");
	return 0;
}

static void update_newly_received_packet_variables (struct sock *sk, struct sk_buff *skb, u32 acked)
{
	struct tcp_sock *tp = tcp_sk(sk);
	
	tp->rcv_nxt = TCP_SKB_CB(skb)->seq + 1;
	tp->rcv_wup = TCP_SKB_CB(skb)->seq + 1;
	TCP_SKB_CB(skb)->ack_seq += acked;
	tp->snd_nxt	= TCP_SKB_CB(skb)->ack_seq;
	tp->packets_out = acked;
}

static int aggregate_normal_events (struct sock *sk, struct sk_buff *skb) {
	struct tcp_sock *tp = tcp_sk(sk);
	
	tcp_set_ca_state(sk, TCP_CA_Open);
	// Update max_packets_out to not limit snd_cwnd
	tp->max_packets_out = tp->snd_cwnd * 2;
	int flag = FLAG_DATA;
	flag |= FLAG_DATA_ACKED;
//	printf("Aggregating normal packets.\n");
	//prior_cwnd = tp->snd_cwnd;
	int return_status = tcp_ack_new(sk, skb, flag);
	//TCP_SKB_CB(skb)->seq += cum_len;
	//__VERIFIER_assert(tp->snd_cwnd >= prior_cwnd);
	return return_status;
}

int main() 
{
	struct sk_buff *skb;
	skb = malloc (sizeof (*skb));
	if (skb == NULL) {
		fprintf(stderr, "skb allocation failed.\n");
		return -1;
	}
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

	tp->debug_info = 0;
	if (tp->debug_info) {
		printf("[Before initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n",
						tp->snd_cwnd, tp->snd_ssthresh);
	}

	tcp_init_sock(sk);

	if (icsk->icsk_ca_ops->init)
		icsk->icsk_ca_ops->init(sk);
	tcp_ca_event(sk, CA_EVENT_TX_START);

	if (tp->debug_info) {
		printf("[After initialization] tp->snd_cwnd:%u, tp->snd_ssthresh:%u\n",
						tp->snd_cwnd, tp->snd_ssthresh);
	}
	
	//u32 num_total_events = 10;
	u32 num_special_events = 2;
	u32 num_rtt = 2;
	u32 special_indexes [num_special_events]; // indexes of special events
	u32 undoing [num_special_events]; // for each loss, explore both undoing and not undoing
	u32 timeout [num_special_events];
	// undeterministic variables
	tp->snd_cwnd = __VERIFIER_nondet_u32("snd_cwnd");
	tp->snd_ssthresh = __VERIFIER_nondet_u32("snd_ssthresh");
	//jiffies = __VERIFIER_nondet_u32("jiffies");
	//u32 which_flag = __VERIFIER_nondet_u32("which_flag");
	//u32 which_flag[num_events];
	//u32 len[num_events];
	//u32 cum_len = 0;
	u32 cum_normal_events = 0;
	u32 len = 1;
	u32 num_total_events = 100; // limit the number of RTT's
	//u32 cum_events_before_undo = 0;
	//u32 cum_events_after_undo = 0;
	
	tp->packet_aggregation = 1; // 0: original, 1: aggregation
	tp->num_packets = 1;
	tp->is_cwnd_limited = 1; // cwnd will not be limited
	int return_status = 0;
	u32 prior_cwnd = 0; // cwnd before an event
	u32 prior_loss_cwnd = 0; // cwnd before loss
	u32 prior_ssthresh = 0; // ssthresh before timeout
	int flag = 0;
	TCP_SKB_CB(skb)->seq = 0;
	TCP_SKB_CB(skb)->ack_seq = 0;
	//tp->snd_nxt	= TCP_SKB_CB(skb)->seq;
	//tp->rcv_nxt = TCP_SKB_CB(skb)->seq + 1;
	//tp->rcv_wup = TCP_SKB_CB(skb)->seq + 1;
	tcp_set_ca_state(sk, TCP_CA_Open);
	
	for (u32 i=0; i<num_special_events; i++) {
		printf ("Special event %u --------\n", (i+1));
		// index of loss events
		special_indexes[i] = __VERIFIER_nondet_u32("special event index");
		if (i == 0) { // first loss event
			klee_assume (special_indexes[i] < num_total_events - (num_special_events - i));
			// Index starts at 0 so the number of normal packets = special_indexes[i]
			// Ex: special_indexes[i] = 2, there are 2 normal packets before the loss
			cum_normal_events = len*special_indexes[i];
			//cum_len = len * special_indexes[i];
		}
		else { // subsequent loss events must happen after the previous one
			klee_assume ((special_indexes[i] > special_indexes[i-1]) &&
										(special_indexes[i] < num_total_events - (num_special_events - i)));
			// For second and later loss events
			// Two consecutive losses means no normal packet in between (thus -1)
			cum_normal_events = len*(special_indexes[i] - special_indexes[i-1] - 1);
			//cum_len = len * (special_indexes[i] - special_indexes[i-1] - 1);
		}
		
		if (cum_normal_events > 0) {
			u32 j = 0; // limit while loop up to num_rtt
			// Aggregate normal packets before special event, but only up to one RTT
			while (cum_normal_events > tp->snd_cwnd && j < num_rtt) {
				printf ("Inside while loop.\n");
				j++;
				update_newly_received_packet_variables (sk, skb, tp->snd_cwnd);
				//printf("Loop - Aggregating normal packets------\n");
				u32 tmp_rtt = tp->snd_cwnd; // acked in this rtt that is added to seq below
				cum_normal_events -= tp->snd_cwnd;
				prior_cwnd = tp->snd_cwnd;
				return_status = aggregate_normal_events (sk, skb);
				TCP_SKB_CB(skb)->seq += tmp_rtt;
//				__VERIFIER_assert(tp->snd_cwnd >= prior_cwnd);
			}
			printf ("Exiting while loop.\n");
//			update_newly_received_packet_variables (sk, skb, cum_normal_events);
//			//printf("Aggregating normal packets------\n");
//			prior_cwnd = tp->snd_cwnd;
//			return_status = aggregate_normal_events (sk, skb);
//			TCP_SKB_CB(skb)->seq += cum_normal_events;
			cum_normal_events = 0;
//			__VERIFIER_assert(tp->snd_cwnd >= prior_cwnd);
		}
		
		undoing[i] = __VERIFIER_nondet_u32("undoing");
//		timeout[i] = __VERIFIER_nondet_u32("timeout");
		if (undoing[i] != 0 && i>0) { // Cannot undo before the first loss
			// The undo event
			printf ("Trying to undo the previous loss event------\n");
			tcp_set_ca_state(sk, TCP_CA_Recovery);
			// Undoing by goto no_queue in tcp_ack()
			tp->packets_out = 0;
			// If tp->undo_restrans != 0, the conditional "if(tcp_may_undo(tp)) fails,
			// and tcp_try_undo_recovery cannot reach tcp_undo_cwnd_reduction()
			//tp->undo_retrans = 0;
			flag = FLAG_DSACKING_ACK;
			return_status = tcp_ack_new(sk, skb, flag);
//			__VERIFIER_assert(tp->snd_cwnd >= prior_loss_cwnd);
		}
//		else if (timeout[i] != 0) { // Timeout
//			printf ("Trying to create a timeout event------\n");
//			update_newly_received_packet_variables (sk, skb, len);
//			tcp_set_ca_state(sk, TCP_CA_Loss);
//			flag = FLAG_SET_XMIT_TIMER;
//			prior_cwnd = tp->snd_cwnd;
//			tcp_enter_loss(sk);
////			__VERIFIER_assert(tp->snd_ssthresh <= prior_cwnd);
////			tp->undo_retrans = 0;
//		}
		else { // Loss
			printf ("Trying to create a loss event------\n");
			tcp_set_ca_state(sk, TCP_CA_Loss);
			// If tp->lost_out = 0, the conditional "if (!tcp_time_to_recover(sk, flag))" passes
			// tp->lost_out must be greater than 0 for tcp_fastretrans_alert() to call tcp_enter_recovery()
			tp->lost_out += len;
			// Increase ack_seq so delivered > 0. Thus, in tcp_cwnd_reduction(), first if is false,
			// the functions won't return, and we can reach the end where tp->snd_cwnd is modified.
			// The 3rd argument below is passed to tcp_packet_in_flight() later, and affects the
			// cwnd after loss.
			update_newly_received_packet_variables (sk, skb, len);
			flag = FLAG_LOST_RETRANS;
			prior_loss_cwnd = tp->snd_cwnd;
			return_status = tcp_ack_new(sk, skb, flag);
//			__VERIFIER_assert(tp->snd_cwnd <= prior_loss_cwnd);
			// If tp->undo_restrans != 0, the conditional "if(tcp_may_undo(tp)) fails,
			// and tcp_try_undo_recovery cannot reach tcp_undo_cwnd_reduction()
			tp->undo_retrans = 0;
		}
		
		// This is the last loss events, aggregate all normal packets left
		if (i == num_special_events-1) {
			u32 j = 0;
			printf ("After the last special event------\n");
			//tcp_set_ca_state(sk, TCP_CA_Open);
			cum_normal_events = len * (num_total_events - special_indexes[i] - 1);
			while (cum_normal_events > tp->snd_cwnd && j < num_rtt) {
				printf ("Inside last while loop.\n");
				j++;
				update_newly_received_packet_variables (sk, skb, tp->snd_cwnd);
				u32 tmp_rtt = tp->snd_cwnd; 
				cum_normal_events -= tp->snd_cwnd;
				prior_cwnd = tp->snd_cwnd;
				return_status = aggregate_normal_events (sk, skb);
				TCP_SKB_CB(skb)->seq += tmp_rtt;
//				__VERIFIER_assert(tp->snd_cwnd >= prior_cwnd);
			}
			printf ("Exiting last while loop.\n");
//			update_newly_received_packet_variables (sk, skb, cum_normal_events);
//			// Update max_packets_out to not limit snd_cwnd
//			//tp->max_packets_out = tp->snd_cwnd * 2;
//			//flag = FLAG_DATA;
//			//flag |= FLAG_DATA_ACKED;
//			//printf("Aggregating normal packets------\n");
//			prior_cwnd = tp->snd_cwnd;
//			return_status = aggregate_normal_events (sk, skb);
//			TCP_SKB_CB(skb)->seq += cum_normal_events;
			cum_normal_events = 0;
//			printf("Return status %d\n", return_status);
//			__VERIFIER_assert(tp->snd_cwnd >= prior_cwnd);
		}
		
		//undo_indexes[i] = __VERIFIER_nondet_u32("undo event");
	}
	
	free (skb);
	printf ("Finish--------\n");
	return 0;
}
#endif