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
static const char *ng0 = "//warehouse2.seasad.wustl.edu/home/ayekedavidr/Desktop/cse260/lab5/SupportDDR.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3505653787;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_1473390551_3636662762_p_0(char *t0)
{
    char t19[16];
    char t22[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t20;
    unsigned int t21;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(300, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(301, ng0);
    t3 = ((WORK_P_3505653787) + 2608U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 == 0);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(304, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(305, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5408U);
    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    t4 = (t0 + 5376U);
    t2 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 5424U);
    t4 = xsi_get_transient_memory(20U);
    memset(t4, 0, 20U);
    t7 = t4;
    if (-1 == -1)
        goto LAB13;

LAB14:    t15 = 0;

LAB15:    t5 = (t15 - 19);
    t16 = (t5 * -1);
    t17 = (1U * t16);
    t8 = (t7 + t17);
    t18 = (1U * 20U);
    memset(t8, (unsigned char)2, t18);
    t9 = (t19 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 19;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t20 = (19 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t21;
    t2 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t3, t1, t4, t19);
    if (t2 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(307, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 3232);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(302, ng0);
    t3 = (t0 + 1192U);
    t7 = *((char **)t3);
    t3 = (t0 + 3232);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB6;

LAB8:    xsi_set_current_line(305, ng0);
    t8 = xsi_get_transient_memory(20U);
    memset(t8, 0, 20U);
    t9 = t8;
    memset(t9, (unsigned char)3, 20U);
    t10 = (t0 + 3360);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 20U);
    xsi_driver_first_trans_fast(t10);
    goto LAB9;

LAB11:    xsi_set_current_line(306, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t10 = (t0 + 5424U);
    t12 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t22, t11, t10, 1);
    t13 = (t22 + 12U);
    t21 = *((unsigned int *)t13);
    t23 = (1U * t21);
    t6 = (20U != t23);
    if (t6 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 3360);
    t24 = (t14 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t12, 20U);
    xsi_driver_first_trans_fast(t14);
    goto LAB9;

LAB13:    t15 = 19;
    goto LAB15;

LAB16:    xsi_size_not_matching(20U, t23, 0);
    goto LAB17;

}


extern void work_a_1473390551_3636662762_init()
{
	static char *pe[] = {(void *)work_a_1473390551_3636662762_p_0};
	xsi_register_didat("work_a_1473390551_3636662762", "isim/top_test_isim_beh.exe.sim/work/a_1473390551_3636662762.didat");
	xsi_register_executes(pe);
}
