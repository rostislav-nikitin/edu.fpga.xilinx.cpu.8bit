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
extern char *UNISIM_P_3222816464;

int unisim_p_3222816464_sub_1852110656102734653_279109243(char *, char *, char *);


static void unisim_a_0085946400_2855348447_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6272U);
    t3 = unisim_p_3222816464_sub_1852110656102734653_279109243(UNISIM_P_3222816464, t2, t1);
    t4 = (t0 + 2248U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 2248U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (t3 - 256);
    t7 = (t6 * -1);
    xsi_vhdl_check_range_of_index(256, 0, -1, t3);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t10 = *((unsigned char *)t1);
    t5 = (t0 + 4008);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t10;
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 3912);
    *((int *)t1) = 1;

LAB1:    return;
}

static void unisim_a_0085946400_2855348447_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    int64 t18;
    char *t19;
    unsigned char t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6272U);
    t3 = unisim_p_3222816464_sub_1852110656102734653_279109243(UNISIM_P_3222816464, t2, t1);
    t4 = (t0 + 2368U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 == 1)
        goto LAB8;

LAB9:    t7 = (unsigned char)0;

LAB10:    if (t7 == 1)
        goto LAB5;

LAB6:    t6 = (unsigned char)0;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3928);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t18 = (100 * 1LL);
    t14 = (t0 + 1352U);
    t19 = *((char **)t14);
    t20 = *((unsigned char *)t19);
    t14 = (t0 + 2368U);
    t21 = *((char **)t14);
    t3 = *((int *)t21);
    t22 = (t3 - 256);
    t23 = (t22 * -1);
    t24 = (1 * t23);
    t25 = (0U + t24);
    t14 = (t0 + 4072);
    t26 = (t14 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t20;
    xsi_driver_first_trans_delta(t14, t25, 1, t18);
    t30 = (t0 + 2368U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t33 = (t32 - 256);
    t34 = (t33 * -1);
    t35 = (1 * t34);
    t36 = (0U + t35);
    t30 = (t0 + 4072);
    xsi_driver_intertial_reject(t30, t18, t18);
    goto LAB3;

LAB5:    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t6 = t17;
    goto LAB7;

LAB8:    t4 = (t0 + 1472U);
    t5 = xsi_signal_last_value(t4);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t7 = t13;
    goto LAB10;

LAB11:    t1 = (t0 + 1472U);
    t11 = xsi_signal_has_event(t1);
    t8 = t11;
    goto LAB13;

}


extern void unisim_a_0085946400_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_0085946400_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_0085946400_2855348447.didat");
	xsi_register_executes(pe);
}

extern void unisim_a_4107622670_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_4107622670_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_4107622670_2855348447.didat");
	xsi_register_executes(pe);
}

extern void unisim_a_2745914709_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_2745914709_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_2745914709_2855348447.didat");
	xsi_register_executes(pe);
}

extern void unisim_a_2268458446_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_2268458446_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_2268458446_2855348447.didat");
	xsi_register_executes(pe);
}

extern void unisim_a_3819851085_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_3819851085_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_3819851085_2855348447.didat");
	xsi_register_executes(pe);
}

extern void unisim_a_0947870096_2855348447_init()
{
	static char *pe[] = {(void *)unisim_a_0085946400_2855348447_p_0,(void *)unisim_a_0085946400_2855348447_p_1};
	xsi_register_didat("unisim_a_0947870096_2855348447", "isim/cpu_cpu_sch_tb_isim_beh.exe.sim/unisim/a_0947870096_2855348447.didat");
	xsi_register_executes(pe);
}
