/*************************************************************************
    > File Name: simple_skbuff.h
  > Author: Wei Sun
  > Mail:sunweiflyus@gmail.com 
  > Created Time: Fri 23 Jun 2017 01:21:44 PM CDT
  > Comments: To comment unused struct members
 ************************************************************************/

#ifndef __SIMPLE_SKBUFF_H__
#define __SIMPLE_SKBUFF_H__

struct sk_buff {
	// a simple stub, as current stage donot need to care the content of packet
	 union {
		struct {
			/* These two members must be first. */
			struct sk_buff		*next;
			struct sk_buff		*prev;

	   /*     union {*/
				//ktime_t		tstamp;
				//struct skb_mstamp skb_mstamp;
			/*};*/
		};
		//struct rb_node	rbnode; [> used in netem & tcp stack <]
	};
	struct sock		*sk;

	union {
		//struct net_device	*dev;
		/* Some protocols might use this space to store information,
		 * while device pointer would be NULL.
		 * UDP receive path is one user.
		 */
		unsigned long		dev_scratch;
	};
	/*
	 * This is the control buffer. It is free to use for every
	 * layer. Please put your private variables there. If you
	 * want to keep them across layers you have to do a skb_clone()
	 * first. This is owned by whoever has the skb queued ATM.
	 */
	char cb[48] __aligned(8);
};

struct skb_mstamp{
	union{
		u64 v64;
	struct {
		u32 stamp_us;
		u32 stamp_jiffies;
	};
};
};
#endif
