#ifndef EOS_ISR_H_
#define EOS_ISR_H_

#define eos_isr(isr_name) void __attribute__ ((interrupt)) isr_name(void)

#define eos_naked_isr(isr_name) void __attribute__ ((interrupt,naked)) isr_name(void)

#endif
