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
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/vga_test.vhd";



static void work_a_3356307705_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    int t18;
    int t19;
    int t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5104);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 992U);
    t8 = xsi_signal_has_event(t1);
    if (t8 == 1)
        goto LAB5;

LAB6:    t3 = (unsigned char)0;

LAB7:    if (t3 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5024);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3728U);
    t5 = *((char **)t2);
    t11 = *((int *)t5);
    t12 = (t11 == 0);
    if (t12 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t15 = (t11 + 1);
    t1 = (t0 + 3728U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t15;
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 == 2);
    if (t3 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB3;

LAB5:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB7;

LAB8:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5168);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5232);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 8720);
    t4 = (t0 + 5296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 8725);
    t4 = (t0 + 5360);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 8731);
    t4 = (t0 + 5424);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 < t15);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 >= t15);
    if (t3 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 >= t15);
    if (t3 != 0)
        goto LAB26;

LAB28:
LAB27:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t15 = (t11 + 1);
    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t15;
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 == t15);
    if (t3 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB9;

LAB11:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 < t15);
    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 5232);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 8736);
    t4 = (t0 + 5296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 8741);
    t4 = (t0 + 5360);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 8747);
    t4 = (t0 + 5424);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB15;

LAB17:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3488U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t1 = (t0 + 2888U);
    t6 = *((char **)t1);
    t17 = *((int *)t6);
    t1 = (t0 + 3008U);
    t7 = *((char **)t1);
    t18 = *((int *)t7);
    t19 = (t17 + t18);
    t9 = (t16 >= t19);
    if (t9 == 1)
        goto LAB23;

LAB24:    t8 = (unsigned char)0;

LAB25:    if (t8 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB21:    goto LAB18;

LAB20:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5168);
    t28 = (t1 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB21;

LAB23:    t1 = (t0 + 3488U);
    t13 = *((char **)t1);
    t20 = *((int *)t13);
    t1 = (t0 + 2888U);
    t14 = *((char **)t1);
    t21 = *((int *)t14);
    t1 = (t0 + 3008U);
    t22 = *((char **)t1);
    t23 = *((int *)t22);
    t24 = (t21 + t23);
    t1 = (t0 + 3128U);
    t25 = *((char **)t1);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t10 = (t20 < t27);
    t8 = t10;
    goto LAB25;

LAB26:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3608U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t17 = *((int *)t6);
    t1 = (t0 + 2408U);
    t7 = *((char **)t1);
    t18 = *((int *)t7);
    t19 = (t17 + t18);
    t9 = (t16 >= t19);
    if (t9 == 1)
        goto LAB32;

LAB33:    t8 = (unsigned char)0;

LAB34:    if (t8 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5232);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB30:    goto LAB27;

LAB29:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5232);
    t28 = (t1 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB30;

LAB32:    t1 = (t0 + 3608U);
    t13 = *((char **)t1);
    t20 = *((int *)t13);
    t1 = (t0 + 2288U);
    t14 = *((char **)t1);
    t21 = *((int *)t14);
    t1 = (t0 + 2408U);
    t22 = *((char **)t1);
    t23 = *((int *)t22);
    t24 = (t21 + t23);
    t1 = (t0 + 2528U);
    t25 = *((char **)t1);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t10 = (t20 < t27);
    t8 = t10;
    goto LAB34;

LAB35:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t15 = (t11 + 1);
    t1 = (t0 + 3488U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t15;
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 3368U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t3 = (t11 == t15);
    if (t3 != 0)
        goto LAB38;

LAB40:
LAB39:    goto LAB36;

LAB38:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3488U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    goto LAB39;

LAB41:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 3728U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    goto LAB42;

}


extern void work_a_3356307705_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3356307705_3212880686_p_0};
	xsi_register_didat("work_a_3356307705_3212880686", "isim/tb_vga_test_isim_beh.exe.sim/work/a_3356307705_3212880686.didat");
	xsi_register_executes(pe);
}
