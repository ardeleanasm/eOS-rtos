#ifndef DATATYPES_H_
#define DATATYPES_H_

#if (ARCH == rl78)
    #if (MCU == r5ff104le)
        #include "rl78/r5f104le/typedefine.h"
        /* Redefine types to match those used in kernel!*/
        typedef _SBYTE s8;
        typedef _UBYTE u8;
        typedef _SWORD s16;
        typedef _UWORD u16;
        typedef _SDWORD s32;
        typedef _UDWORD u32;

        
    #else
        #error "Microcontroller not configured in root Makefile!"
    #endif /* MCU */

#else
    #error "Architecture not configured in root Makefile!"

#endif /* ARCH */

#endif /* DATATYPES_H_ */
