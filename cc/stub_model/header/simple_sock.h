/*************************************************************************
    > File Name: simple_sock.h
  > Author: Wei Sun
  > Mail:sunweiflyus@gmail.com 
  > Created Time: Wed 07 Jun 2017 12:20:44 AM CDT
  > Comments: a stub for sock struct
 ************************************************************************/
#ifndef __SIMPLE_SOCK_H__
#define __SIMPLE_SOCK_H__
#include "simple_net_namespace.h"

/* Sock flags */
enum sock_flags {
	SOCK_DEAD,
	SOCK_DONE,
	SOCK_URGINLINE,
	SOCK_KEEPOPEN,
	SOCK_LINGER,
	SOCK_DESTROY,
	SOCK_BROADCAST,
	SOCK_TIMESTAMP,
	SOCK_ZAPPED,
	SOCK_USE_WRITE_QUEUE, /* whether to call sk->sk_write_space in sock_wfree */
	SOCK_DBG, /* %SO_DEBUG setting */
	SOCK_RCVTSTAMP, /* %SO_TIMESTAMP setting */
	SOCK_RCVTSTAMPNS, /* %SO_TIMESTAMPNS setting */
	SOCK_LOCALROUTE, /* route locally only, %SO_DONTROUTE setting */
	SOCK_QUEUE_SHRUNK, /* write queue has been shrunk recently */
	SOCK_MEMALLOC, /* VM depends on this socket for swapping */
	SOCK_TIMESTAMPING_RX_SOFTWARE,  /* %SOF_TIMESTAMPING_RX_SOFTWARE */
	SOCK_FASYNC, /* fasync() active */
	SOCK_RXQ_OVFL,
	SOCK_ZEROCOPY, /* buffers from userspace */
	SOCK_WIFI_STATUS, /* push wifi status to userspace */
	SOCK_NOFCS, /* Tell NIC not to do the Ethernet FCS.
		     * Will use last 4 bytes of packet sent from
		     * user-space instead.
		     */
	SOCK_FILTER_LOCKED, /* Filter cannot be changed anymore */
	SOCK_SELECT_ERR_QUEUE, /* Wake select on error queue */
	SOCK_RCU_FREE, /* wait rcu grace period in sk_destruct() */
};

struct sock_common {

	volatile unsigned char	skc_state;
	possible_net_t		skc_net;
	unsigned long	skc_flags;
};

struct sock {
	struct sock_common	__sk_common;
	#define sk_net			__sk_common.skc_net
	#define sk_state		__sk_common.skc_state
	#define sk_flags		__sk_common.skc_flags

	int			sk_rcvbuf;
	int			sk_sndbuf;
};

void SOCK_DEBUG(const struct sock *sk, const char *msg, ...)
{
}

static inline
struct net *sock_net(const struct sock *sk)
{
	return read_pnet(&sk->sk_net);
}

static inline void sock_set_flag(struct sock *sk, enum sock_flags flag)
{
	__set_bit(flag, &sk->sk_flags);
}

#endif
