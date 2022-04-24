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
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/tb_vga_test.vhd";



static void work_a_2984063830_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;
    int t12;

LAB0:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5708);
    *((int *)t2) = 0;
    t3 = (t0 + 5712);
    *((int *)t3) = 1680000;
    t4 = 0;
    t5 = 1680000;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(100, ng0);

LAB19:    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(94, ng0);
    t6 = (t0 + 3528);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(95, ng0);
    t11 = (10 * 1000LL);
    t2 = (t0 + 2952);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 5708);
    t4 = *((int *)t2);
    t3 = (t0 + 5712);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB16:    t12 = (t4 + 1);
    t4 = t12;
    t6 = (t0 + 5708);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t11 = (10 * 1000LL);
    t2 = (t0 + 2952);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB6;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_2984063830_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2984063830_2372691052_p_0};
	xsi_register_didat("work_a_2984063830_2372691052", "isim/tb_vga_test_isim_beh.exe.sim/work/a_2984063830_2372691052.didat");
	xsi_register_executes(pe);
}
