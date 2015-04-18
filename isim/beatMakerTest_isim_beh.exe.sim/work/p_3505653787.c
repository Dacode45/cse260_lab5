/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_3499444699;



int work_p_3505653787_sub_2696589364_3773489021(char *t1, char *t2, char *t3)
{
    char t5[24];
    int t0;
    char *t6;
    unsigned char t7;
    char *t8;
    int t9;

LAB0:    t6 = (t5 + 4U);
    t7 = (t2 != 0);
    if (t7 == 1)
        goto LAB3;

LAB2:    t8 = (t5 + 12U);
    *((char **)t8) = t3;
    t9 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t2, t3);
    t0 = t9;

LAB1:    return t0;
LAB3:    *((char **)t6) = t2;
    goto LAB2;

LAB4:;
}


void ieee_p_2592010699_sub_3130575329_503743352();

void ieee_p_2592010699_sub_3130575329_503743352();

void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_p_3505653787_init()
{
	static char *se[] = {(void *)work_p_3505653787_sub_2696589364_3773489021};
	xsi_register_didat("work_p_3505653787", "isim/beatMakerTest_isim_beh.exe.sim/work/p_3505653787.didat");
	xsi_register_subprogram_executes(se);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 5);
	xsi_register_resolution_function(2, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 5);
	xsi_register_resolution_function(3, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 5);
}
