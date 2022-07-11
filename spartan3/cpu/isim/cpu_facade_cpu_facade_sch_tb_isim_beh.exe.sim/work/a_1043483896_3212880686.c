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
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/tb_cpu_facade.vhd";



void work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5)
{
    int t8;
    int t9;
    int64 t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;

LAB0:    t8 = 1;
    t9 = 12;

LAB2:    if (t8 <= t9)
        goto LAB3;

LAB5:
LAB1:    return;
LAB3:    t10 = (10 * 1000LL);
    xsi_process_wait(t1, t10);

LAB9:    t11 = (t1 + 88U);
    t12 = *((char **)t11);
    t13 = (t12 + 1888U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    getcontext(t16);
    t17 = (t1 + 88U);
    t18 = *((char **)t17);
    t19 = (t18 + 1888U);
    t20 = *((unsigned int *)t19);
    if (t20 == 1)
        goto LAB10;

LAB11:    t21 = (t1 + 88U);
    t22 = *((char **)t21);
    t23 = (t22 + 1888U);
    *((unsigned int *)t23) = 3U;

LAB7:
LAB8:
LAB6:    t20 = (0 + t3);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t20, 1, 0LL);
    t10 = (10 * 1000LL);
    xsi_process_wait(t1, t10);

LAB15:    t11 = (t1 + 88U);
    t12 = *((char **)t11);
    t13 = (t12 + 1888U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    getcontext(t16);
    t17 = (t1 + 88U);
    t18 = *((char **)t17);
    t19 = (t18 + 1888U);
    t20 = *((unsigned int *)t19);
    if (t20 == 1)
        goto LAB16;

LAB17:    t21 = (t1 + 88U);
    t22 = *((char **)t21);
    t23 = (t22 + 1888U);
    *((unsigned int *)t23) = 3U;

LAB13:
LAB14:
LAB12:    t20 = (0 + t3);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t20, 1, 0LL);

LAB4:    if (t8 == t9)
        goto LAB5;

LAB18:    t24 = (t8 + 1);
    t8 = t24;
    goto LAB2;

LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

LAB16:    xsi_saveStackAndSuspend(t1);
    goto LAB17;

}

static void work_a_1043483896_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    int t10;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2792);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2792);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2792);
    t3 = (t0 + 1312U);
    t4 = (t0 + 3576);
    work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2792);
    t3 = (t0 + 1312U);
    t4 = (t0 + 3576);
    work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5861);
    *((int *)t2) = 1;
    t3 = (t0 + 5865);
    *((int *)t3) = 260;
    t8 = 1;
    t9 = 260;

LAB12:    if (t8 <= t9)
        goto LAB13;

LAB15:    xsi_set_current_line(82, ng0);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 2792);
    t5 = (t0 + 1312U);
    t6 = (t0 + 3576);
    work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(t0, t4, t5, 0U, 0U, t6);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2792);
    t3 = (t0 + 1312U);
    t4 = (t0 + 3576);
    work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2792);
    t3 = (t0 + 1312U);
    t4 = (t0 + 3576);
    work_a_1043483896_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);

LAB14:    t2 = (t0 + 5861);
    t8 = *((int *)t2);
    t3 = (t0 + 5865);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB15;

LAB16:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 5861);
    *((int *)t4) = t8;
    goto LAB12;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_1043483896_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1043483896_3212880686_p_0};
	static char *se[] = {(void *)work_a_1043483896_3212880686_sub_9343695237448776461_3057020925};
	xsi_register_didat("work_a_1043483896_3212880686", "isim/cpu_facade_cpu_facade_sch_tb_isim_beh.exe.sim/work/a_1043483896_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
