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
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
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
    work_a_2756153739_3212880686_init();
    work_a_1873255094_2163549645_init();
    unisim_a_3055263662_1392679692_init();
    work_a_2973871462_3212880686_init();
    work_a_3543344777_3212880686_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3489374766_1207108494_init();
    work_a_0662498852_1578789788_init();
    unisim_a_3870564484_3219970547_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_4147737283_2967259552_init();
    work_a_2683945364_0450887988_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_2782630213_1361109519_init();
    work_a_1383023195_3212880686_init();
    unisim_a_3813588966_1849986472_init();
    unisim_a_2760072084_0686704355_init();
    work_a_4228120731_3212880686_init();
    work_a_1764986679_2824440980_init();
    work_a_2507387296_3212880686_init();
    work_a_3658489300_3212880686_init();
    work_a_3486016045_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    work_a_4193490583_3212880686_init();
    work_a_1271411548_3212880686_init();
    work_a_1950637848_3212880686_init();
    unisim_a_2472025866_3046367013_init();
    work_a_2872865289_0260269735_init();
    work_a_3817148531_3212880686_init();
    work_a_0555518447_3212880686_init();
    work_a_0313614646_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_3772107243_2855348447_init();
    unisim_a_4107622670_2855348447_init();
    unisim_a_0126580473_2855348447_init();
    unisim_a_1740411252_2855348447_init();
    unisim_a_0839347865_2855348447_init();
    work_a_3924899576_3212880686_init();
    work_a_1415465652_3212880686_init();
    work_a_0261840617_3212880686_init();


    xsi_register_tops("work_a_0261840617_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
