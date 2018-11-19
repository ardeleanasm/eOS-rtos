#ifndef UTILS_H_
#define UTILS_H_



#define enable_protection()

#define disable_protection()


#define _private static

#define _public extern

#define eos_not_used(var) ((void)(var))

#define eos_hwreg(x)   (*((volatile unsigned int *)(x)))


#define set_bit(reg,bit) ((reg)|=(1<<(bit)))

#define clear_bit(reg,bit) ((reg)&=(~(1<<(bit))))

#define toggle_bit(reg,bit) ((reg)^=(1<<(bit)))

#define out_b(addr,data)   ((addr) = (data))

#define in_b(addr)         (addr)



#endif /* UTILS_H_ */
