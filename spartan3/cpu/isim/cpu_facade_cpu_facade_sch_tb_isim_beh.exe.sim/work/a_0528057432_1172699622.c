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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_facade.vhf";
extern char *IEEE_P_2592010699;



static void work_a_0528057432_1172699622_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(554, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4000);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 2448U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    xsi_set_current_line(555, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(558, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 7565);
    t13 = xsi_mem_cmp(t1, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:    t7 = (t0 + 7567);
    t14 = xsi_mem_cmp(t7, t2, 2U);
    if (t14 == 1)
        goto LAB7;

LAB12:    t9 = (t0 + 7569);
    t15 = xsi_mem_cmp(t9, t2, 2U);
    if (t15 == 1)
        goto LAB8;

LAB13:    t12 = (t0 + 7571);
    t17 = xsi_mem_cmp(t12, t2, 2U);
    if (t17 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(563, ng0);

LAB5:
LAB3:    t1 = (t0 + 4736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(556, ng0);
    t1 = (t0 + 7561);
    t7 = (t0 + 4880);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB6:    xsi_set_current_line(559, ng0);
    t18 = (t0 + 7573);
    t20 = (t0 + 4880);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_first_trans_fast(t20);
    goto LAB5;

LAB7:    xsi_set_current_line(560, ng0);
    t1 = (t0 + 7577);
    t4 = (t0 + 4880);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB5;

LAB8:    xsi_set_current_line(561, ng0);
    t1 = (t0 + 7581);
    t4 = (t0 + 4880);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB5;

LAB9:    xsi_set_current_line(562, ng0);
    t1 = (t0 + 7585);
    t4 = (t0 + 4880);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB5;

LAB15:;
}

static void work_a_0528057432_1172699622_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(568, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4944);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4752);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0528057432_1172699622_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(569, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (2 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5008);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4768);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0528057432_1172699622_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(570, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (1 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4784);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0528057432_1172699622_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(571, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5136);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4800);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0528057432_1172699622_init()
{
	static char *pe[] = {(void *)work_a_0528057432_1172699622_p_0,(void *)work_a_0528057432_1172699622_p_1,(void *)work_a_0528057432_1172699622_p_2,(void *)work_a_0528057432_1172699622_p_3,(void *)work_a_0528057432_1172699622_p_4};
	xsi_register_didat("work_a_0528057432_1172699622", "isim/cpu_facade_cpu_facade_sch_tb_isim_beh.exe.sim/work/a_0528057432_1172699622.didat");
	xsi_register_executes(pe);
}
