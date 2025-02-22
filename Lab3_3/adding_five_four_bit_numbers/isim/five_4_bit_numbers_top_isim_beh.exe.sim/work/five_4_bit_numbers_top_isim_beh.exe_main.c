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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_07958154198403372893_3190593924_init();
    work_m_04610500766926941300_1191653155_init();
    work_m_12398048021242255917_1698222184_init();
    work_m_04757415843287774871_0898501645_init();
    work_m_18381436907003420487_1485883089_init();
    work_m_16624432610852079269_3804768834_init();
    work_m_09502820360128654444_3230239473_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_09502820360128654444_3230239473");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
