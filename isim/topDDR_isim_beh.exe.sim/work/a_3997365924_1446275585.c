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
static const char *ng0 = "//warehouse2.seasad.wustl.edu/home/ayekedavidr/Desktop/cse260/lab5/beatMaker.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *WORK_P_3505653787;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3997365924_1446275585_p_0(char *t0)
{
    char t12[16];
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    int t29;
    int t30;
    int t31;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 1672U);
    t8 = *((char **)t4);
    t4 = (t0 + 6012U);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t9 = (t0 + 6028U);
    t11 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t8, t4, t10, t9);
    t3 = t11;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 6012U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t4, t1, 1);
    t8 = (t12 + 12U);
    t19 = *((unsigned int *)t8);
    t20 = (1U * t19);
    t2 = (28U != t20);
    if (t2 == 1)
        goto LAB26;

LAB27:    t9 = (t0 + 3656);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 28U);
    xsi_driver_first_trans_fast(t9);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 6012U);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 6012U);
    t17 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t12, t14, t13, t16, t15);
    t18 = (t12 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (28U != t20);
    if (t21 == 1)
        goto LAB11;

LAB12:    t22 = (t0 + 3656);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 28U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 6115);
    t27 = xsi_mem_cmp(t1, t4, 5U);
    if (t27 == 1)
        goto LAB14;

LAB20:    t8 = (t0 + 6120);
    t28 = xsi_mem_cmp(t8, t4, 5U);
    if (t28 == 1)
        goto LAB15;

LAB21:    t10 = (t0 + 6125);
    t29 = xsi_mem_cmp(t10, t4, 5U);
    if (t29 == 1)
        goto LAB16;

LAB22:    t14 = (t0 + 6130);
    t30 = xsi_mem_cmp(t14, t4, 5U);
    if (t30 == 1)
        goto LAB17;

LAB23:    t16 = (t0 + 6135);
    t31 = xsi_mem_cmp(t16, t4, 5U);
    if (t31 == 1)
        goto LAB18;

LAB24:
LAB19:    xsi_set_current_line(50, ng0);
    t1 = ((WORK_P_3505653787) + 1168U);
    t4 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 28U);
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB6;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_size_not_matching(28U, t20, 0);
    goto LAB12;

LAB14:    xsi_set_current_line(45, ng0);
    t18 = ((WORK_P_3505653787) + 1168U);
    t22 = *((char **)t18);
    t18 = (t0 + 3720);
    t23 = (t18 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 28U);
    xsi_driver_first_trans_fast(t18);
    goto LAB13;

LAB15:    xsi_set_current_line(46, ng0);
    t1 = ((WORK_P_3505653787) + 1288U);
    t4 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 28U);
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB16:    xsi_set_current_line(47, ng0);
    t1 = ((WORK_P_3505653787) + 1408U);
    t4 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 28U);
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB17:    xsi_set_current_line(48, ng0);
    t1 = ((WORK_P_3505653787) + 1528U);
    t4 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 28U);
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB18:    xsi_set_current_line(49, ng0);
    t1 = ((WORK_P_3505653787) + 1648U);
    t4 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 28U);
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB25:;
LAB26:    xsi_size_not_matching(28U, t20, 0);
    goto LAB27;

}

static void work_a_3997365924_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6012U);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 6028U);
    t5 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 3784);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 3576);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 3784);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_3997365924_1446275585_init()
{
	static char *pe[] = {(void *)work_a_3997365924_1446275585_p_0,(void *)work_a_3997365924_1446275585_p_1};
	xsi_register_didat("work_a_3997365924_1446275585", "isim/topDDR_isim_beh.exe.sim/work/a_3997365924_1446275585.didat");
	xsi_register_executes(pe);
}
