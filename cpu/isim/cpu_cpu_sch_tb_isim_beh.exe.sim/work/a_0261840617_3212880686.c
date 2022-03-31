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
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/tb_cpu.vhd";



void work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5)
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

void work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, char *t6, unsigned int t7, unsigned int t8, char *t9, char *t10, unsigned int t11, unsigned int t12, char *t13, char *t14, unsigned int t15, unsigned int t16, char *t17, char *t18)
{
    char t20[24];
    char t21[16];
    char t26[16];
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t27;
    int t28;
    unsigned char t29;
    char *t30;
    int64 t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;

LAB0:    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 7;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (0 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t26 + 0U);
    t27 = (t23 + 0U);
    *((int *)t27) = 7;
    t27 = (t23 + 4U);
    *((int *)t27) = 0;
    t27 = (t23 + 8U);
    *((int *)t27) = -1;
    t28 = (0 - 7);
    t25 = (t28 * -1);
    t25 = (t25 + 1);
    t27 = (t23 + 12U);
    *((unsigned int *)t27) = t25;
    t27 = (t20 + 4U);
    t29 = (t18 != 0);
    if (t29 == 1)
        goto LAB3;

LAB2:    t30 = (t20 + 12U);
    *((char **)t30) = t26;
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB7:    t32 = (t1 + 88U);
    t33 = *((char **)t32);
    t34 = (t33 + 1888U);
    *((unsigned int *)t34) = 1U;
    t35 = (t1 + 88U);
    t36 = *((char **)t35);
    t37 = (t36 + 0U);
    getcontext(t37);
    t38 = (t1 + 88U);
    t39 = *((char **)t38);
    t40 = (t39 + 1888U);
    t25 = *((unsigned int *)t40);
    if (t25 == 1)
        goto LAB8;

LAB9:    t41 = (t1 + 88U);
    t42 = *((char **)t41);
    t43 = (t42 + 1888U);
    *((unsigned int *)t43) = 3U;

LAB5:
LAB6:
LAB4:    t25 = (0 + t3);
    t22 = (t5 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    t34 = (t21 + 12U);
    t44 = *((unsigned int *)t34);
    t44 = (t44 * 1U);
    memcpy(t33, t18, t44);
    t35 = (t21 + 12U);
    t45 = *((unsigned int *)t35);
    t46 = (1U * t45);
    xsi_driver_first_trans_delta(t5, t25, t46, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB13:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB14;

LAB15:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB11:
LAB12:
LAB10:    t25 = (0 + t7);
    t22 = (t9 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_delta(t9, t25, 1, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB19:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB20;

LAB21:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB17:
LAB18:
LAB16:    t25 = (0 + t7);
    t22 = (t9 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_delta(t9, t25, 1, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB25:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB26;

LAB27:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB23:
LAB24:
LAB22:    t25 = (0 + t11);
    t22 = (t13 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_delta(t13, t25, 1, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB31:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB32;

LAB33:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB29:
LAB30:
LAB28:    t25 = (0 + t15);
    t22 = (t17 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_delta(t17, t25, 1, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB37:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB38;

LAB39:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB35:
LAB36:
LAB34:    t25 = (0 + t15);
    t22 = (t17 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_delta(t17, t25, 1, 0LL);
    t31 = (10 * 1000LL);
    xsi_process_wait(t1, t31);

LAB43:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t32 = (t23 + 1888U);
    *((unsigned int *)t32) = 1U;
    t33 = (t1 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 0U);
    getcontext(t35);
    t36 = (t1 + 88U);
    t37 = *((char **)t36);
    t38 = (t37 + 1888U);
    t25 = *((unsigned int *)t38);
    if (t25 == 1)
        goto LAB44;

LAB45:    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 1888U);
    *((unsigned int *)t41) = 3U;

LAB41:
LAB42:
LAB40:    t25 = (0 + t11);
    t22 = (t13 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, t25, 1, 0LL);

LAB1:    return;
LAB3:    *((char **)t27) = t18;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB14:    xsi_saveStackAndSuspend(t1);
    goto LAB15;

LAB20:    xsi_saveStackAndSuspend(t1);
    goto LAB21;

LAB26:    xsi_saveStackAndSuspend(t1);
    goto LAB27;

LAB32:    xsi_saveStackAndSuspend(t1);
    goto LAB33;

LAB38:    xsi_saveStackAndSuspend(t1);
    goto LAB39;

LAB44:    xsi_saveStackAndSuspend(t1);
    goto LAB45;

}

static void work_a_0261840617_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 8424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(195, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 2592U);
    t10 = (t0 + 9176);
    t11 = (t0 + 14126);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14134);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14142);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(203, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(207, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14150);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(209, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(213, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14158);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(215, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(219, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14166);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(221, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(225, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14174);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(227, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14182);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(229, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(234, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14190);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(236, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14198);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(238, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(243, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14206);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(245, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14214);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(247, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(252, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(256, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14222);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(258, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14230);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(260, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(264, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14238);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(266, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14246);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(268, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(272, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 3872U);
    t10 = (t0 + 9240);
    t11 = (t0 + 14254);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(274, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 4832U);
    t4 = (t0 + 8984);
    t5 = (t0 + 5152U);
    t6 = (t0 + 9048);
    t7 = (t0 + 4992U);
    t8 = (t0 + 9112);
    t9 = (t0 + 4032U);
    t10 = (t0 + 9304);
    t11 = (t0 + 14262);
    work_a_0261840617_3212880686_sub_4650194482352482666_3057020925(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, t7, 0U, 0U, t8, t9, 0U, 0U, t10, t11);
    xsi_set_current_line(276, ng0);
    t2 = (t0 + 8232);
    t3 = (t0 + 5632U);
    t4 = (t0 + 9368);
    work_a_0261840617_3212880686_sub_9343695237448776461_3057020925(t0, t2, t3, 0U, 0U, t4);
    xsi_set_current_line(347, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_0261840617_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0261840617_3212880686_p_0};
	static char *se[] = {(void *)work_a_0261840617_3212880686_sub_9343695237448776461_3057020925,(void *)work_a_0261840617_3212880686_sub_4650194482352482666_3057020925};
	xsi_register_didat("work_a_0261840617_3212880686", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/work/a_0261840617_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}