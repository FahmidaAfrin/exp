/*************************************************************************
    > File Name: simple_bitops.h
  > Author: Wei Sun
  > Mail:sunweiflyus@gmail.com 
  > Created Time: Sat 24 Jun 2017 11:58:40 PM CDT
  > Comments:as Klee does not support asm, only adpated from non-asm implementation
 ************************************************************************/

#ifndef __SIMPLE_BITOPS_H__
#define __SIMPLE_BITOPS_H__

/**
 * __set_bit - Set a bit in memory
 * @nr: the bit to set
 * @addr: the address to start counting from
 *
 * Unlike set_bit(), this function is non-atomic and may be reordered.
 * If it's called on the same region of memory simultaneously, the effect
 * may be that only one operation succeeds.
 */

//copied from ~/linux_4.12_rc6/arch/ia64/include/asm/bitops.h
static __inline__ void
__set_bit (int nr, volatile void *addr)
{
	*((__u32 *) addr + (nr >> 5)) |= (1 << (nr & 31));
}


#endif
