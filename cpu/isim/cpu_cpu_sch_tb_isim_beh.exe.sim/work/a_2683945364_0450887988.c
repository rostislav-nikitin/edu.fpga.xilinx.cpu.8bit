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
static const char *ng0 = "/home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.vhf";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_2683945364_0450887988_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(198, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4288U);
    t4 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (8U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 2744);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 2664);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t7, 0);
    goto LAB6;

}


extern void work_a_2683945364_0450887988_init()
{
	static char *pe[] = {(void *)work_a_2683945364_0450887988_p_0};
	xsi_register_didat("work_a_2683945364_0450887988", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/work/a_2683945364_0450887988.didat");
	xsi_register_executes(pe);
}
