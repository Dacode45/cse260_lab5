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
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
static const char *ng2 = "//warehouse2.seasad.wustl.edu/home/ayekedavidr/Desktop/cse260/lab5/scoreKeeper.vhd";

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


char *work_a_2140932105_1940385206_sub_2573787311_802654137(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[24];
    char t6[16];
    char t12[16];
    char t18[16];
    char t33[16];
    char t39[16];
    char t45[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    int t25;
    int t26;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned char t38;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 11;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 11);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = xsi_get_transient_memory(12U);
    memset(t8, 0, 12U);
    t11 = t8;
    memset(t11, (unsigned char)2, 12U);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 11;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 11);
    t10 = (t15 * -1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t14 = (t4 + 4U);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t14 + 88U);
    *((char **)t17) = t16;
    t19 = (t14 + 56U);
    *((char **)t19) = t18;
    memcpy(t18, t8, 12U);
    t20 = (t14 + 64U);
    *((char **)t20) = t12;
    t21 = (t14 + 80U);
    *((unsigned int *)t21) = 12U;
    t22 = (t5 + 4U);
    t23 = (t3 != 0);
    if (t23 == 1)
        goto LAB3;

LAB2:    t24 = (t5 + 12U);
    *((char **)t24) = t6;
    t25 = 11;
    t26 = 0;

LAB4:    if (t25 >= t26)
        goto LAB5;

LAB7:    t7 = (t14 + 56U);
    t8 = *((char **)t7);
    t7 = (t12 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t8, t10);
    t11 = (t12 + 0U);
    t9 = *((int *)t11);
    t13 = (t12 + 4U);
    t15 = *((int *)t13);
    t16 = (t12 + 8U);
    t25 = *((int *)t16);
    t17 = (t2 + 0U);
    t19 = (t17 + 0U);
    *((int *)t19) = t9;
    t19 = (t17 + 4U);
    *((int *)t19) = t15;
    t19 = (t17 + 8U);
    *((int *)t19) = t25;
    t26 = (t15 - t9);
    t30 = (t26 * t25);
    t30 = (t30 + 1);
    t19 = (t17 + 12U);
    *((unsigned int *)t19) = t30;

LAB1:    return t0;
LAB3:    *((char **)t22) = t3;
    goto LAB2;

LAB5:    t27 = (t14 + 56U);
    t28 = *((char **)t27);
    t27 = (t12 + 0U);
    t29 = *((int *)t27);
    t10 = (t29 - 3);
    t30 = (t10 * 1U);
    t31 = (0 + t30);
    t32 = (t28 + t31);
    t34 = (t33 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = 3;
    t35 = (t34 + 4U);
    *((int *)t35) = 0;
    t35 = (t34 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - 3);
    t37 = (t36 * -1);
    t37 = (t37 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t37;
    t38 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t32, t33, 4);
    if (t38 != 0)
        goto LAB8;

LAB10:
LAB9:    t7 = (t14 + 56U);
    t8 = *((char **)t7);
    t7 = (t12 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 7);
    t30 = (t10 * 1U);
    t31 = (0 + t30);
    t11 = (t8 + t31);
    t13 = (t33 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 7;
    t16 = (t13 + 4U);
    *((int *)t16) = 4;
    t16 = (t13 + 8U);
    *((int *)t16) = -1;
    t15 = (4 - 7);
    t37 = (t15 * -1);
    t37 = (t37 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t37;
    t23 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t11, t33, 4);
    if (t23 != 0)
        goto LAB11;

LAB13:
LAB12:    t7 = (t14 + 56U);
    t8 = *((char **)t7);
    t7 = (t12 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 11);
    t30 = (t10 * 1U);
    t31 = (0 + t30);
    t11 = (t8 + t31);
    t13 = (t33 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 11;
    t16 = (t13 + 4U);
    *((int *)t16) = 8;
    t16 = (t13 + 8U);
    *((int *)t16) = -1;
    t15 = (8 - 11);
    t37 = (t15 * -1);
    t37 = (t37 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t37;
    t23 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t11, t33, 4);
    if (t23 != 0)
        goto LAB14;

LAB16:
LAB15:    t7 = (t14 + 56U);
    t8 = *((char **)t7);
    t7 = (t12 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 10);
    t30 = (t10 * 1U);
    t31 = (0 + t30);
    t11 = (t8 + t31);
    t13 = (t6 + 0U);
    t15 = *((int *)t13);
    t16 = (t6 + 8U);
    t29 = *((int *)t16);
    t36 = (t25 - t15);
    t37 = (t36 * t29);
    t17 = (t6 + 4U);
    t41 = *((int *)t17);
    xsi_vhdl_check_range_of_index(t15, t41, t29, t25);
    t42 = (1U * t37);
    t43 = (0 + t42);
    t19 = (t3 + t43);
    t23 = *((unsigned char *)t19);
    t21 = ((IEEE_P_2592010699) + 4024);
    t27 = (t39 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 10;
    t28 = (t27 + 4U);
    *((int *)t28) = 0;
    t28 = (t27 + 8U);
    *((int *)t28) = -1;
    t48 = (0 - 10);
    t49 = (t48 * -1);
    t49 = (t49 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t49;
    t20 = xsi_base_array_concat(t20, t33, t21, (char)97, t11, t39, (char)99, t23, (char)101);
    t28 = (t14 + 56U);
    t32 = *((char **)t28);
    t28 = (t32 + 0);
    t52 = (0 - 10);
    t49 = (t52 * -1);
    t49 = (t49 + 1);
    t53 = (1U * t49);
    t54 = (t53 + 1U);
    memcpy(t28, t20, t54);

LAB6:    if (t25 == t26)
        goto LAB7;

LAB17:    t9 = (t25 + -1);
    t25 = t9;
    goto LAB4;

LAB8:    t35 = (t14 + 56U);
    t40 = *((char **)t35);
    t35 = (t12 + 0U);
    t41 = *((int *)t35);
    t37 = (t41 - 3);
    t42 = (t37 * 1U);
    t43 = (0 + t42);
    t44 = (t40 + t43);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 3;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = -1;
    t48 = (0 - 3);
    t49 = (t48 * -1);
    t49 = (t49 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t49;
    t47 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t39, t44, t45, 3);
    t50 = (t14 + 56U);
    t51 = *((char **)t50);
    t50 = (t12 + 0U);
    t52 = *((int *)t50);
    t49 = (t52 - 3);
    t53 = (t49 * 1U);
    t54 = (0 + t53);
    t55 = (t51 + t54);
    t56 = (t39 + 12U);
    t57 = *((unsigned int *)t56);
    t58 = (1U * t57);
    memcpy(t55, t47, t58);
    goto LAB9;

LAB11:    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t16 = (t12 + 0U);
    t29 = *((int *)t16);
    t37 = (t29 - 7);
    t42 = (t37 * 1U);
    t43 = (0 + t42);
    t19 = (t17 + t43);
    t20 = (t45 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 4;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t36 = (4 - 7);
    t49 = (t36 * -1);
    t49 = (t49 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t49;
    t21 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t39, t19, t45, 3);
    t27 = (t14 + 56U);
    t28 = *((char **)t27);
    t27 = (t12 + 0U);
    t41 = *((int *)t27);
    t49 = (t41 - 7);
    t53 = (t49 * 1U);
    t54 = (0 + t53);
    t32 = (t28 + t54);
    t34 = (t39 + 12U);
    t57 = *((unsigned int *)t34);
    t58 = (1U * t57);
    memcpy(t32, t21, t58);
    goto LAB12;

LAB14:    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t16 = (t12 + 0U);
    t29 = *((int *)t16);
    t37 = (t29 - 11);
    t42 = (t37 * 1U);
    t43 = (0 + t42);
    t19 = (t17 + t43);
    t20 = (t45 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 11;
    t21 = (t20 + 4U);
    *((int *)t21) = 8;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t36 = (8 - 11);
    t49 = (t36 * -1);
    t49 = (t49 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t49;
    t21 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t39, t19, t45, 3);
    t27 = (t14 + 56U);
    t28 = *((char **)t27);
    t27 = (t12 + 0U);
    t41 = *((int *)t27);
    t49 = (t41 - 11);
    t53 = (t49 * 1U);
    t54 = (0 + t53);
    t32 = (t28 + t54);
    t34 = (t39 + 12U);
    t57 = *((unsigned int *)t34);
    t58 = (1U * t57);
    memcpy(t32, t21, t58);
    goto LAB15;

LAB18:;
}

static void work_a_2140932105_1940385206_p_0(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    static char *nl0[] = {&&LAB23, &&LAB18, &&LAB19, &&LAB20, &&LAB21, &&LAB22, &&LAB23};

LAB0:    xsi_set_current_line(69, ng2);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5016);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng2);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(76, ng2);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB43;

LAB44:
LAB15:    xsi_set_current_line(96, ng2);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5144);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng2);
    t3 = (t0 + 5144);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(72, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = (t0 + 2792U);
    t7 = *((char **)t4);
    t4 = (t0 + 8860U);
    t8 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t3, t1, t7, t4);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 5208);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 12U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(73, ng2);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 8828U);
    t4 = (t0 + 2472U);
    t7 = *((char **)t4);
    t4 = (t0 + 8828U);
    t8 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t3, t1, t7, t4);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t2 = (4U != t13);
    if (t2 == 1)
        goto LAB10;

LAB11:    t10 = (t0 + 5272);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(74, ng2);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 8844U);
    t4 = (t0 + 2632U);
    t7 = *((char **)t4);
    t4 = (t0 + 8844U);
    t8 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t3, t1, t7, t4);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t2 = (4U != t13);
    if (t2 == 1)
        goto LAB12;

LAB13:    t10 = (t0 + 5336);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB8:    xsi_size_not_matching(12U, t13, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(4U, t13, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(4U, t13, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(77, ng2);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB17:    xsi_set_current_line(86, ng2);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = (t2 == t5);
    if (t6 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(89, ng2);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 8828U);
    t4 = (t0 + 2472U);
    t7 = *((char **)t4);
    t4 = (t0 + 8828U);
    t8 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t3, t1, t7, t4);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t2 = (4U != t13);
    if (t2 == 1)
        goto LAB39;

LAB40:    t10 = (t0 + 5272);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB35:    xsi_set_current_line(92, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB41;

LAB42:    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB15;

LAB18:    xsi_set_current_line(78, ng2);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t7 = (t0 + 8860U);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t8, t7, 1);
    t10 = (t11 + 12U);
    t12 = *((unsigned int *)t10);
    t13 = (1U * t12);
    t18 = (12U != t13);
    if (t18 == 1)
        goto LAB24;

LAB25:    t14 = (t0 + 5208);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t9, 12U);
    xsi_driver_first_trans_fast(t14);
    goto LAB17;

LAB19:    xsi_set_current_line(79, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 2);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB26;

LAB27:    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB20:    xsi_set_current_line(80, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 3);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB28;

LAB29:    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB21:    xsi_set_current_line(81, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 4);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB30;

LAB31:    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB22:    xsi_set_current_line(82, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8860U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 5);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (12U != t13);
    if (t2 == 1)
        goto LAB32;

LAB33:    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB23:    xsi_set_current_line(83, ng2);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 5208);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB24:    xsi_size_not_matching(12U, t13, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(12U, t13, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(12U, t13, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(12U, t13, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(12U, t13, 0);
    goto LAB33;

LAB34:    xsi_set_current_line(87, ng2);
    t1 = (t0 + 2472U);
    t7 = *((char **)t1);
    t1 = (t0 + 8828U);
    t8 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t7, t1, 1);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t18 = (4U != t13);
    if (t18 == 1)
        goto LAB37;

LAB38:    t10 = (t0 + 5272);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB35;

LAB37:    xsi_size_not_matching(4U, t13, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(4U, t13, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(12U, t13, 0);
    goto LAB42;

LAB43:    xsi_set_current_line(94, ng2);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 8844U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t4, t1, 1);
    t8 = (t11 + 12U);
    t12 = *((unsigned int *)t8);
    t13 = (1U * t12);
    t6 = (4U != t13);
    if (t6 == 1)
        goto LAB45;

LAB46:    t9 = (t0 + 5336);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB15;

LAB45:    xsi_size_not_matching(4U, t13, 0);
    goto LAB46;

}

static void work_a_2140932105_1940385206_p_1(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB13, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13};

LAB0:    xsi_set_current_line(104, ng2);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5400);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng2);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8844U);
    t4 = (t0 + 8910);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t3 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t4, t8);
    if (t3 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8828U);
    t4 = (t0 + 8914);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t3 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t4, t8);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(106, ng2);
    t7 = (t0 + 5400);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)0;
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(109, ng2);
    t7 = (t0 + 2152U);
    t11 = *((char **)t7);
    t15 = *((unsigned char *)t11);
    t7 = (char *)((nl0) + t15);
    goto **((char **)t7);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(110, ng2);
    t12 = (t0 + 5400);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    goto LAB7;

LAB9:    xsi_set_current_line(111, ng2);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(112, ng2);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB11:    xsi_set_current_line(113, ng2);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_set_current_line(114, ng2);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB13:    xsi_set_current_line(115, ng2);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5400);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

}

static void work_a_2140932105_1940385206_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB8, &&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB9};

LAB0:    xsi_set_current_line(123, ng2);
    t1 = (t0 + 5464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(124, ng2);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5048);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(125, ng2);
    t3 = (t0 + 8918);
    t5 = (t0 + 5528);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 5U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB4:    xsi_set_current_line(126, ng2);
    t1 = (t0 + 8923);
    t3 = (t0 + 5528);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(127, ng2);
    t1 = (t0 + 8928);
    t3 = (t0 + 5528);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(128, ng2);
    t1 = (t0 + 8933);
    t3 = (t0 + 5528);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(129, ng2);
    t1 = (t0 + 8938);
    t3 = (t0 + 5528);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(130, ng2);
    t1 = (t0 + 5464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(131, ng2);
    t1 = (t0 + 5464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

}

static void work_a_2140932105_1940385206_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(135, ng2);

LAB3:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = work_a_2140932105_1940385206_sub_2573787311_802654137(t0, t1, t3);
    t4 = (t1 + 12U);
    t5 = *((unsigned int *)t4);
    t5 = (t5 * 1U);
    t6 = (12U != t5);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 5592);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 12U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 5064);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(12U, t5, 0);
    goto LAB6;

}


extern void work_a_2140932105_1940385206_init()
{
	static char *pe[] = {(void *)work_a_2140932105_1940385206_p_0,(void *)work_a_2140932105_1940385206_p_1,(void *)work_a_2140932105_1940385206_p_2,(void *)work_a_2140932105_1940385206_p_3};
	static char *se[] = {(void *)work_a_2140932105_1940385206_sub_2573787311_802654137};
	xsi_register_didat("work_a_2140932105_1940385206", "isim/top_test_isim_beh.exe.sim/work/a_2140932105_1940385206.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
