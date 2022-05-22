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



static void work_a_0829884169_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(1197, ng0);

LAB3:    t1 = (t0 + 9664);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 5128);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}


extern void work_a_0829884169_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0829884169_3212880686_p_0};
	xsi_register_didat("work_a_0829884169_3212880686", "isim/cpu_facade_cpu_facade_sch_tb_isim_beh.exe.sim/work/a_0829884169_3212880686.didat");
	xsi_register_executes(pe);
}
