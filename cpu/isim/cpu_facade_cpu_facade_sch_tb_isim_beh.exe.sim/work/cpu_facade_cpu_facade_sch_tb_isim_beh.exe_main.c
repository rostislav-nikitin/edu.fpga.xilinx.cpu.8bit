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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3895249914_3767241565_init();
    work_a_0962151172_1466603769_init();
    unisim_a_3870564484_3219970547_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_4147737283_2967259552_init();
    work_a_1310122704_2629021274_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_2782630213_1361109519_init();
    unisim_a_3055263662_1392679692_init();
    work_a_2557421507_3212880686_init();
    unisim_a_3813588966_1849986472_init();
    unisim_a_2760072084_0686704355_init();
    work_a_1437875013_3212880686_init();
    work_a_0229636414_3550123590_init();
    work_a_2706522425_3212880686_init();
    work_a_2763017129_2418066126_init();
    work_a_2448179505_3212880686_init();
    unisim_a_1717296735_4086321779_init();
    work_a_0407287340_3212880686_init();
    work_a_3259156894_3212880686_init();
    work_a_3278611993_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    work_a_0762379977_3212880686_init();
    work_a_3243977764_3212880686_init();
    work_a_3531015947_3212880686_init();
    unisim_a_2472025866_3046367013_init();
    work_a_0528057432_1172699622_init();
    unisim_a_2216889161_3025253650_init();
    unisim_a_2867636556_1359619727_init();
    work_a_0745092809_0671786918_init();
    work_a_2037250048_3212880686_init();
    work_a_3278900422_3002475618_init();
    work_a_2015439635_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_4255518557_2855348447_init();
    unisim_a_4107622670_2855348447_init();
    unisim_a_1849141740_2855348447_init();
    unisim_a_0454505008_2855348447_init();
    unisim_a_3819851085_2855348447_init();
    unisim_a_1520645195_2855348447_init();
    unisim_a_1656334974_2855348447_init();
    unisim_a_0947870096_2855348447_init();
    work_a_2004003051_3212880686_init();
    work_a_2089268367_3212880686_init();
    work_a_3163191299_3212880686_init();
    unisim_a_2205548683_1387528769_init();
    work_a_1971317282_3212880686_init();
    work_a_2672855927_3212880686_init();
    work_a_2045680405_1549559880_init();
    work_a_3267900694_3212880686_init();
    work_a_1292718321_3212880686_init();
    unisim_a_2312877582_0635394241_init();
    work_a_1428492029_3212880686_init();
    work_a_1016569153_3212880686_init();
    unisim_a_3988446151_0546328132_init();
    work_a_3021471306_3212880686_init();
    work_a_1395562873_3499330656_init();
    work_a_0829884169_3212880686_init();
    work_a_1016997182_3212880686_init();
    work_a_1753271060_3212880686_init();
    work_a_1043483896_3212880686_init();


    xsi_register_tops("work_a_1043483896_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
