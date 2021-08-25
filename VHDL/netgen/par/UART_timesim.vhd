--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UART_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 25 21:24:15 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf UART.pcf -rpw 100 -tpw 0 -ar Structure -tm UART -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim UART.ncd UART_timesim.vhd 
-- Device	: 3s1500fg320-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: UART.ncd
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\par\UART_timesim.vhd
-- # of Entities	: 1
-- Design Name	: UART
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity UART is
  port (
    TX_READY : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    START : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    RTS : out STD_LOGIC; 
    CTS : in STD_LOGIC := 'X'; 
    RX_READY : out STD_LOGIC; 
    RX : in STD_LOGIC := 'X'; 
    TX : out STD_LOGIC; 
    CLK_R : out STD_LOGIC; 
    CLK_T : out STD_LOGIC; 
    BUFFER_FULL : in STD_LOGIC := 'X'; 
    BUS_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    BUS_IN : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SEL : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end UART;

architecture Structure of UART is
  signal BG_CLK_SEL_589 : STD_LOGIC; 
  signal DES_T_START_0 : STD_LOGIC; 
  signal RESET_IBUF_594 : STD_LOGIC; 
  signal SER_T_LOAD_598 : STD_LOGIC; 
  signal BUS_IN_6_IBUF_599 : STD_LOGIC; 
  signal BUS_IN_5_IBUF_601 : STD_LOGIC; 
  signal BUS_IN_7_IBUF_605 : STD_LOGIC; 
  signal BG_T_and0001_0 : STD_LOGIC; 
  signal CLK_IBUF_608 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000042_609 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000019_610 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq00007_611 : STD_LOGIC; 
  signal DES_U3_Y1_639 : STD_LOGIC; 
  signal DES_U3_Y_640 : STD_LOGIC; 
  signal DES_RD_641 : STD_LOGIC; 
  signal RESET_IBUF_shift1_642 : STD_LOGIC; 
  signal RESET_IBUF_shift2_643 : STD_LOGIC; 
  signal RESET_IBUF_shift3_646 : STD_LOGIC; 
  signal RESET_IBUF_shift4_647 : STD_LOGIC; 
  signal DES_RD_0_not0000_0 : STD_LOGIC; 
  signal DES_RD_or0000_0 : STD_LOGIC; 
  signal SER_r0_input_652 : STD_LOGIC; 
  signal SER_r1_input_653 : STD_LOGIC; 
  signal DES_T_END_0 : STD_LOGIC; 
  signal SER_T_RESET_0 : STD_LOGIC; 
  signal SEL_2_IBUF_659 : STD_LOGIC; 
  signal CLK_IBUF1 : STD_LOGIC; 
  signal SEL_1_IBUF_661 : STD_LOGIC; 
  signal SEL_0_IBUF_662 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal SER_RD_666 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal RX_IBUF_670 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_9_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_11_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_13_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_15_Q : STD_LOGIC; 
  signal BUS_IN_0_IBUF_689 : STD_LOGIC; 
  signal BUS_IN_1_IBUF_690 : STD_LOGIC; 
  signal BUS_IN_2_IBUF_691 : STD_LOGIC; 
  signal BUS_IN_3_IBUF_692 : STD_LOGIC; 
  signal BUS_IN_4_IBUF_693 : STD_LOGIC; 
  signal DES_U4_TY_2_DYMUX_715 : STD_LOGIC; 
  signal DES_U4_TY_2_CLKINV_705 : STD_LOGIC; 
  signal BG_U1_TY_2_DYMUX_738 : STD_LOGIC; 
  signal BG_U1_TY_2_CLKINV_728 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_DXMUX_779 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_DYMUX_765 : STD_LOGIC; 
  signal SER_REG_PS_Z_6_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_SRINV_756 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_CLKINV_755 : STD_LOGIC; 
  signal TX_OBUF_816 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_DYMUX_804 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_CLKINV_793 : STD_LOGIC; 
  signal BG_T_11_DXMUX_852 : STD_LOGIC; 
  signal BG_T_11_DYMUX_840 : STD_LOGIC; 
  signal BG_T_11_CLKINV_832 : STD_LOGIC; 
  signal BG_T_11_CEINV_831 : STD_LOGIC; 
  signal BG_T_9_DXMUX_890 : STD_LOGIC; 
  signal BG_T_9_DYMUX_878 : STD_LOGIC; 
  signal BG_T_9_CLKINV_870 : STD_LOGIC; 
  signal BG_T_9_CEINV_869 : STD_LOGIC; 
  signal BG_T_13_DXMUX_928 : STD_LOGIC; 
  signal BG_T_13_DYMUX_916 : STD_LOGIC; 
  signal BG_T_13_CLKINV_908 : STD_LOGIC; 
  signal BG_T_13_CEINV_907 : STD_LOGIC; 
  signal BG_T_15_DXMUX_966 : STD_LOGIC; 
  signal BG_T_15_DYMUX_954 : STD_LOGIC; 
  signal BG_T_15_CLKINV_946 : STD_LOGIC; 
  signal BG_T_15_CEINV_945 : STD_LOGIC; 
  signal BG_T_17_DXMUX_1004 : STD_LOGIC; 
  signal BG_T_17_DYMUX_992 : STD_LOGIC; 
  signal BG_T_17_CLKINV_984 : STD_LOGIC; 
  signal BG_T_17_CEINV_983 : STD_LOGIC; 
  signal DES_U5_TY_3_DXMUX_1044 : STD_LOGIC; 
  signal DES_U5_TY_3_DYMUX_1030 : STD_LOGIC; 
  signal DES_Result_2_1 : STD_LOGIC; 
  signal DES_U5_TY_3_SRINV_1021 : STD_LOGIC; 
  signal DES_U5_TY_3_CLKINVNOT : STD_LOGIC; 
  signal DES_U3_Y1_DYMUX_1076 : STD_LOGIC; 
  signal DES_U3_Mshreg_Y : STD_LOGIC; 
  signal DES_U3_Y1_DIG_MUX_1065 : STD_LOGIC; 
  signal DES_U3_Y1_CLKINV_1063 : STD_LOGIC; 
  signal DES_U3_Y1_WSG : STD_LOGIC; 
  signal DES_U3_Y1_SRINV_1059 : STD_LOGIC; 
  signal DES_T_START : STD_LOGIC; 
  signal RESET_IBUF_shift2_DXMUX_1109 : STD_LOGIC; 
  signal RESET_IBUF_shift2_DYMUX_1101 : STD_LOGIC; 
  signal RESET_IBUF_shift2_BYINV_1100 : STD_LOGIC; 
  signal RESET_IBUF_shift2_SRINV_1099 : STD_LOGIC; 
  signal RESET_IBUF_shift2_CLKINV_1098 : STD_LOGIC; 
  signal SER_T_LOAD_DYMUX_1123 : STD_LOGIC; 
  signal SER_T_LOAD_SRINVNOT : STD_LOGIC; 
  signal SER_T_LOAD_CLKINV_1120 : STD_LOGIC; 
  signal RESET_IBUF_shift4_DXMUX_1145 : STD_LOGIC; 
  signal RESET_IBUF_shift4_DYMUX_1137 : STD_LOGIC; 
  signal RESET_IBUF_shift4_SRINV_1135 : STD_LOGIC; 
  signal RESET_IBUF_shift4_CLKINV_1134 : STD_LOGIC; 
  signal SER_COUNT_TY_0_DXMUX_1178 : STD_LOGIC; 
  signal SER_COUNT_TY_0_DYMUX_1170 : STD_LOGIC; 
  signal SER_COUNT_TY_0_SRINV_1160 : STD_LOGIC; 
  signal SER_COUNT_TY_0_CLKINV_1159 : STD_LOGIC; 
  signal DES_RD_DYMUX_1194 : STD_LOGIC; 
  signal DES_RD_BYINV_1193 : STD_LOGIC; 
  signal DES_RD_CLKINVNOT : STD_LOGIC; 
  signal DES_RD_CEINV_1190 : STD_LOGIC; 
  signal SER_r1_input_DYMUX_1206 : STD_LOGIC; 
  signal SER_r1_input_CLKINV_1204 : STD_LOGIC; 
  signal DES_T_END : STD_LOGIC; 
  signal DES_RD_0_not0000 : STD_LOGIC; 
  signal SER_T_RESET : STD_LOGIC; 
  signal BG_CLK_SEL_DXMUX_1258 : STD_LOGIC; 
  signal BG_CLK_SEL_CLKINV_1253 : STD_LOGIC; 
  signal BG_CLK_SEL_CEINV_1252 : STD_LOGIC; 
  signal DES_U4_TY_0_DXMUX_1294 : STD_LOGIC; 
  signal DES_U4_TY_0_DYMUX_1286 : STD_LOGIC; 
  signal DES_U4_TY_0_SRINV_1276 : STD_LOGIC; 
  signal DES_U4_TY_0_CLKINV_1275 : STD_LOGIC; 
  signal BG_U1_TY_0_DXMUX_1327 : STD_LOGIC; 
  signal BG_U1_TY_0_DYMUX_1319 : STD_LOGIC; 
  signal BG_U1_TY_0_SRINV_1309 : STD_LOGIC; 
  signal BG_U1_TY_0_CLKINV_1308 : STD_LOGIC; 
  signal BG_CLK_SEL_and0000 : STD_LOGIC; 
  signal BG_T_and0001 : STD_LOGIC; 
  signal SER_RD_or0000_1379 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal SER_r0_input_DYMUX_1387 : STD_LOGIC; 
  signal SER_r0_input_CLKINV_1385 : STD_LOGIC; 
  signal DES_RD_or0000_1412 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal DES_U5_TY_0_DXMUX_1441 : STD_LOGIC; 
  signal DES_U5_TY_0_DYMUX_1433 : STD_LOGIC; 
  signal DES_Result_1_1 : STD_LOGIC; 
  signal DES_U5_TY_0_SRINV_1423 : STD_LOGIC; 
  signal DES_U5_TY_0_CLKINVNOT : STD_LOGIC; 
  signal DES_U2_T_1_DXMUX_1465 : STD_LOGIC; 
  signal DES_U2_T_1_DYMUX_1457 : STD_LOGIC; 
  signal DES_U2_T_1_SRINV_1455 : STD_LOGIC; 
  signal DES_U2_T_1_CLKINV_1454 : STD_LOGIC; 
  signal DES_U2_T_3_DXMUX_1489 : STD_LOGIC; 
  signal DES_U2_T_3_DYMUX_1481 : STD_LOGIC; 
  signal DES_U2_T_3_SRINV_1479 : STD_LOGIC; 
  signal DES_U2_T_3_CLKINV_1478 : STD_LOGIC; 
  signal DES_U3_not0000 : STD_LOGIC; 
  signal DES_U2_T_5_DXMUX_1525 : STD_LOGIC; 
  signal DES_U2_T_5_DYMUX_1517 : STD_LOGIC; 
  signal DES_U2_T_5_SRINV_1515 : STD_LOGIC; 
  signal DES_U2_T_5_CLKINV_1514 : STD_LOGIC; 
  signal SER_RD_DYMUX_1541 : STD_LOGIC; 
  signal SER_RD_BYINV_1540 : STD_LOGIC; 
  signal SER_RD_CLKINVNOT : STD_LOGIC; 
  signal SER_RD_CEINV_1537 : STD_LOGIC; 
  signal DES_U2_T_7_DXMUX_1565 : STD_LOGIC; 
  signal DES_U2_T_7_DYMUX_1557 : STD_LOGIC; 
  signal DES_U2_T_7_SRINV_1555 : STD_LOGIC; 
  signal DES_U2_T_7_CLKINV_1554 : STD_LOGIC; 
  signal BG_T_addsub0000_8_XORF_1606 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYINIT_1605 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CY0F_1604 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYSELF_1597 : STD_LOGIC; 
  signal BG_T_addsub0000_8_BXINV_1595 : STD_LOGIC; 
  signal BG_T_addsub0000_8_XORG_1593 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYMUXG_1592 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_8_Q : STD_LOGIC; 
  signal BG_T_addsub0000_8_CY0G_1590 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYSELG_1584 : STD_LOGIC; 
  signal BG_T_addsub0000_10_XORF_1645 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYINIT_1644 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CY0F_1643 : STD_LOGIC; 
  signal BG_T_addsub0000_10_XORG_1635 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_10_Q : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYSELF_1633 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXFAST_1632 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYAND_1631 : STD_LOGIC; 
  signal BG_T_addsub0000_10_FASTCARRY_1630 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXG2_1629 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXF2_1628 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CY0G_1627 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYSELG_1621 : STD_LOGIC; 
  signal BG_T_addsub0000_12_XORF_1684 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYINIT_1683 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CY0F_1682 : STD_LOGIC; 
  signal BG_T_addsub0000_12_XORG_1674 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_12_Q : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYSELF_1672 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXFAST_1671 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYAND_1670 : STD_LOGIC; 
  signal BG_T_addsub0000_12_FASTCARRY_1669 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXG2_1668 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXF2_1667 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CY0G_1666 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYSELG_1660 : STD_LOGIC; 
  signal BG_T_addsub0000_14_XORF_1723 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYINIT_1722 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CY0F_1721 : STD_LOGIC; 
  signal BG_T_addsub0000_14_XORG_1713 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_14_Q : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYSELF_1711 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXFAST_1710 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYAND_1709 : STD_LOGIC; 
  signal BG_T_addsub0000_14_FASTCARRY_1708 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXG2_1707 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXF2_1706 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CY0G_1705 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYSELG_1699 : STD_LOGIC; 
  signal BG_T_addsub0000_16_XORF_1762 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYINIT_1761 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CY0F_1760 : STD_LOGIC; 
  signal BG_T_addsub0000_16_XORG_1752 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_16_Q : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYSELF_1750 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXFAST_1749 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYAND_1748 : STD_LOGIC; 
  signal BG_T_addsub0000_16_FASTCARRY_1747 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXG2_1746 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXF2_1745 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CY0G_1744 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYSELG_1738 : STD_LOGIC; 
  signal BG_T_addsub0000_18_XORF_1793 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CYINIT_1792 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CY0F_1791 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CYSELF_1785 : STD_LOGIC; 
  signal BG_T_addsub0000_18_XORG_1782 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_18_Q : STD_LOGIC; 
  signal RX_READY_O : STD_LOGIC; 
  signal RX_READY_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal BUFFER_FULL_INBUF : STD_LOGIC; 
  signal CTS_INBUF : STD_LOGIC; 
  signal SEL_0_INBUF : STD_LOGIC; 
  signal SEL_1_INBUF : STD_LOGIC; 
  signal SEL_2_INBUF : STD_LOGIC; 
  signal CLK_R_O : STD_LOGIC; 
  signal CLK_T_O : STD_LOGIC; 
  signal BUS_IN_0_INBUF : STD_LOGIC; 
  signal BUS_IN_1_INBUF : STD_LOGIC; 
  signal BUS_IN_2_INBUF : STD_LOGIC; 
  signal BUS_IN_3_INBUF : STD_LOGIC; 
  signal BUS_IN_4_INBUF : STD_LOGIC; 
  signal BUS_IN_5_INBUF : STD_LOGIC; 
  signal RX_INBUF : STD_LOGIC; 
  signal BUS_OUT_0_O : STD_LOGIC; 
  signal BUS_IN_6_INBUF : STD_LOGIC; 
  signal BUS_OUT_1_O : STD_LOGIC; 
  signal BUS_IN_7_INBUF : STD_LOGIC; 
  signal TX_O : STD_LOGIC; 
  signal BUS_OUT_2_O : STD_LOGIC; 
  signal BUS_OUT_3_O : STD_LOGIC; 
  signal TX_READY_O : STD_LOGIC; 
  signal BUS_OUT_4_O : STD_LOGIC; 
  signal BUS_OUT_5_O : STD_LOGIC; 
  signal BUS_OUT_6_O : STD_LOGIC; 
  signal BUS_OUT_7_O : STD_LOGIC; 
  signal RTS_O : STD_LOGIC; 
  signal START_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_IBUF_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_IBUF_BUFG_I0_INV : STD_LOGIC; 
  signal SER_RD_0_not0000_F5MUX_2185 : STD_LOGIC; 
  signal SER_RD_0_not0000_F : STD_LOGIC; 
  signal SER_RD_0_not0000_BXINV_2174 : STD_LOGIC; 
  signal SER_RD_0_not00001_2172 : STD_LOGIC; 
  signal BG_CLK_SEL_or0000_F5MUX_2210 : STD_LOGIC; 
  signal RESET_IBUF_rt_2208 : STD_LOGIC; 
  signal BG_CLK_SEL_or0000_BXINV_2200 : STD_LOGIC; 
  signal BG_CLK_SEL_or00001_2198 : STD_LOGIC; 
  signal BG_T_19_DXMUX_2240 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000042_pack_1 : STD_LOGIC; 
  signal BG_T_19_CLKINV_2225 : STD_LOGIC; 
  signal BG_T_19_CEINV_2224 : STD_LOGIC; 
  signal BG_T_18_DXMUX_2273 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000019_pack_1 : STD_LOGIC; 
  signal BG_T_18_CLKINV_2258 : STD_LOGIC; 
  signal BG_T_18_CEINV_2257 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq0000 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq00007_pack_1 : STD_LOGIC; 
  signal SER_COUNT_TY_3_DXMUX_2337 : STD_LOGIC; 
  signal SER_COUNT_TY_3_DYMUX_2323 : STD_LOGIC; 
  signal SER_COUNT_TY_3_SRINV_2314 : STD_LOGIC; 
  signal SER_COUNT_TY_3_CLKINV_2313 : STD_LOGIC; 
  signal DES_U3_Y_DYMUX_2360 : STD_LOGIC; 
  signal DES_U3_Y11_2357 : STD_LOGIC; 
  signal DES_U3_Y_CLKINV_2349 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_DXMUX_2401 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_DYMUX_2387 : STD_LOGIC; 
  signal SER_REG_PS_Z_0_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_SRINV_2377 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_CLKINV_2376 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_DXMUX_2441 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_DYMUX_2427 : STD_LOGIC; 
  signal SER_REG_PS_Z_2_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_SRINV_2418 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_CLKINV_2417 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_DXMUX_2481 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_DYMUX_2467 : STD_LOGIC; 
  signal SER_REG_PS_Z_4_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_SRINV_2458 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_CLKINV_2457 : STD_LOGIC; 
  signal DES_RD_1_1820 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OSR_USED_1818 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OCEINV_1815 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_O1INV_1813 : STD_LOGIC; 
  signal DES_U4_TY_2_FFY_RSTAND_720 : STD_LOGIC; 
  signal BG_U1_TY_2_FFY_RSTAND_743 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_FFY_SET : STD_LOGIC; 
  signal DES_RD_FFY_SET : STD_LOGIC; 
  signal BG_CLK_SEL_FFX_SET : STD_LOGIC; 
  signal BG_CLK_SEL_FFX_RSTAND_1265 : STD_LOGIC; 
  signal SER_RD_FFY_SET : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_O1INV_1926 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1933 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OTCLK1INV_1922 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_O1INV_1956 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1963 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OTCLK1INV_1952 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_O1INV_1994 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_2001 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OTCLK1INV_1990 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_O1INV_2018 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2025 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OTCLK1INV_2014 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_O1INV_2050 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2057 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OTCLK1INV_2046 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_O1INV_2074 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2081 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OTCLK1INV_2070 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_O1INV_2098 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2105 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OTCLK1INV_2094 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_O1INV_2122 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2129 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OTCLK1INV_2118 : STD_LOGIC; 
  signal DES_U3_Y_FFY_RSTAND_2365 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_DES_RD_1_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_DES_U3_Mshreg_Y_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_DES_RD_CLK : STD_LOGIC; 
  signal NlwInverterSignal_SER_RD_CLK : STD_LOGIC; 
  signal DES_U4_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal BG_U1_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal SER_REG_PS_Z : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BG_T_addsub0000 : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal BG_T : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal DES_U5_TY : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SER_COUNT_TY : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DES_U2_T : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DES_Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal BG_Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal BG_T_mux0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal SER_Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal BG_Madd_T_addsub0000_lut : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal DES_U1_Y : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  DES_U4_TY_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result(2),
      O => DES_U4_TY_2_DYMUX_715
    );
  DES_U4_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => DES_U4_TY_2_CLKINV_705
    );
  BG_U1_TY_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Result(2),
      O => BG_U1_TY_2_DYMUX_738
    );
  BG_U1_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => BG_U1_TY_2_CLKINV_728
    );
  SER_REG_PS_Z_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_7_mux0001,
      O => SER_REG_PS_Z_7_DXMUX_779
    );
  SER_REG_PS_Z_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_6_mux0001,
      O => SER_REG_PS_Z_7_DYMUX_765
    );
  SER_REG_PS_Z_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => SER_REG_PS_Z_7_SRINV_756
    );
  SER_REG_PS_Z_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_7_CLKINV_755
    );
  SER_REG_PS_Z_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_8_mux0001,
      O => SER_REG_PS_Z_8_DYMUX_804
    );
  SER_REG_PS_Z_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_8_CLKINV_793
    );
  BG_T_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X50Y1"
    )
    port map (
      ADR0 => BG_T_addsub0000(11),
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_CLK_SEL_cmp_eq000019_610,
      O => BG_T_mux0001(8)
    );
  BG_T_10 : X_FF
    generic map(
      LOC => "SLICE_X50Y1",
      INIT => '0'
    )
    port map (
      I => BG_T_11_DYMUX_840,
      CE => BG_T_11_CEINV_831,
      CLK => BG_T_11_CLKINV_832,
      SET => GND,
      RST => GND,
      O => BG_T(10)
    );
  BG_T_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(8),
      O => BG_T_11_DXMUX_852
    );
  BG_T_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(9),
      O => BG_T_11_DYMUX_840
    );
  BG_T_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_11_CLKINV_832
    );
  BG_T_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_11_CEINV_831
    );
  BG_T_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y1"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_611,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq000019_610,
      ADR3 => BG_T_addsub0000(10),
      O => BG_T_mux0001(9)
    );
  BG_T_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(10),
      O => BG_T_9_DXMUX_890
    );
  BG_T_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(11),
      O => BG_T_9_DYMUX_878
    );
  BG_T_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_9_CLKINV_870
    );
  BG_T_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_9_CEINV_869
    );
  BG_T_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(6),
      O => BG_T_13_DXMUX_928
    );
  BG_T_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(7),
      O => BG_T_13_DYMUX_916
    );
  BG_T_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_13_CLKINV_908
    );
  BG_T_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_13_CEINV_907
    );
  BG_T_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(4),
      O => BG_T_15_DXMUX_966
    );
  BG_T_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(5),
      O => BG_T_15_DYMUX_954
    );
  BG_T_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_15_CLKINV_946
    );
  BG_T_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_15_CEINV_945
    );
  BG_T_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(2),
      O => BG_T_17_DXMUX_1004
    );
  BG_T_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(3),
      O => BG_T_17_DYMUX_992
    );
  BG_T_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_17_CLKINV_984
    );
  BG_T_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_17_CEINV_983
    );
  DES_U5_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result(3),
      O => DES_U5_TY_3_DXMUX_1044
    );
  DES_U5_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result_2_1,
      O => DES_U5_TY_3_DYMUX_1030
    );
  DES_U5_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U5_TY_3_SRINV_1021
    );
  DES_U5_TY_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X39Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U5_TY_3_CLKINVNOT
    );
  DES_U3_Y1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Mshreg_Y,
      O => DES_U3_Y1_DYMUX_1076
    );
  DES_U3_Y1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_not0000,
      O => DES_U3_Y1_DIG_MUX_1065
    );
  DES_U3_Y1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '1',
      O => DES_U3_Y1_SRINV_1059
    );
  DES_U3_Y1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => DES_U3_Y1_CLKINV_1063
    );
  DES_T_START_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START,
      O => DES_T_START_0
    );
  RESET_IBUF_shift2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift1_642,
      O => RESET_IBUF_shift2_DXMUX_1109
    );
  RESET_IBUF_shift2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift2_BYINV_1100,
      O => RESET_IBUF_shift2_DYMUX_1101
    );
  RESET_IBUF_shift2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => '1',
      O => RESET_IBUF_shift2_BYINV_1100
    );
  RESET_IBUF_shift2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => RESET_IBUF_shift2_SRINV_1099
    );
  RESET_IBUF_shift2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => RESET_IBUF_shift2_CLKINV_1098
    );
  SER_T_LOAD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CTS_INBUF,
      O => SER_T_LOAD_DYMUX_1123
    );
  SER_T_LOAD_SRINV : X_INV
    generic map(
      LOC => "SLICE_X44Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => START_INBUF,
      O => SER_T_LOAD_SRINVNOT
    );
  SER_T_LOAD_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_T_LOAD_CLKINV_1120
    );
  RESET_IBUF_shift4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift3_646,
      O => RESET_IBUF_shift4_DXMUX_1145
    );
  RESET_IBUF_shift4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift2_643,
      O => RESET_IBUF_shift4_DYMUX_1137
    );
  RESET_IBUF_shift4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => RESET_IBUF_shift4_SRINV_1135
    );
  RESET_IBUF_shift4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => RESET_IBUF_shift4_CLKINV_1134
    );
  SER_COUNT_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_COUNT_TY(0),
      O => SER_COUNT_TY_0_DXMUX_1178
    );
  SER_COUNT_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(1),
      O => SER_COUNT_TY_0_DYMUX_1170
    );
  SER_COUNT_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_598,
      O => SER_COUNT_TY_0_SRINV_1160
    );
  SER_COUNT_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_COUNT_TY_0_CLKINV_1159
    );
  DES_RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_BYINV_1193,
      O => DES_RD_DYMUX_1194
    );
  DES_RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => DES_RD_BYINV_1193
    );
  DES_RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X41Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_RD_CLKINVNOT
    );
  DES_RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000_0,
      O => DES_RD_CEINV_1190
    );
  SER_r1_input_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_r0_input_652,
      O => SER_r1_input_DYMUX_1206
    );
  SER_r1_input_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_r1_input_CLKINV_1204
    );
  DES_T_END_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END,
      O => DES_T_END_0
    );
  DES_T_END_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000,
      O => DES_RD_0_not0000_0
    );
  SER_T_RESET_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_RESET,
      O => SER_T_RESET_0
    );
  BG_CLK_SEL_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => BG_CLK_SEL_DXMUX_1258
    );
  BG_CLK_SEL_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_CLK_SEL_CLKINV_1253
    );
  BG_CLK_SEL_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq0000,
      O => BG_CLK_SEL_CEINV_1252
    );
  DES_U4_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(0),
      O => DES_U4_TY_0_DXMUX_1294
    );
  DES_U4_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result(1),
      O => DES_U4_TY_0_DYMUX_1286
    );
  DES_U4_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U4_TY_0_SRINV_1276
    );
  DES_U4_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => DES_U4_TY_0_CLKINV_1275
    );
  BG_U1_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(0),
      O => BG_U1_TY_0_DXMUX_1327
    );
  BG_U1_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Result(1),
      O => BG_U1_TY_0_DYMUX_1319
    );
  BG_U1_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BG_U1_TY_0_SRINV_1309
    );
  BG_U1_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => BG_U1_TY_0_CLKINV_1308
    );
  BG_CLK_SEL_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001,
      O => BG_T_and0001_0
    );
  SER_RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  SER_r0_input_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_598,
      O => SER_r0_input_DYMUX_1387
    );
  SER_r0_input_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_r0_input_CLKINV_1385
    );
  DES_RD_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000_1412,
      O => DES_RD_or0000_0
    );
  DES_RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  DES_U5_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X36Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U5_TY(0),
      O => DES_U5_TY_0_DXMUX_1441
    );
  DES_U5_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X36Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result_1_1,
      O => DES_U5_TY_0_DYMUX_1433
    );
  DES_U5_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U5_TY_0_SRINV_1423
    );
  DES_U5_TY_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X36Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U5_TY_0_CLKINVNOT
    );
  DES_U2_T_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(0),
      O => DES_U2_T_1_DXMUX_1465
    );
  DES_U2_T_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RX_IBUF_670,
      O => DES_U2_T_1_DYMUX_1457
    );
  DES_U2_T_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => DES_U2_T_1_SRINV_1455
    );
  DES_U2_T_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_1_CLKINV_1454
    );
  DES_U2_T_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(2),
      O => DES_U2_T_3_DXMUX_1489
    );
  DES_U2_T_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(1),
      O => DES_U2_T_3_DYMUX_1481
    );
  DES_U2_T_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => DES_U2_T_3_SRINV_1479
    );
  DES_U2_T_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_3_CLKINV_1478
    );
  DES_U2_T_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(4),
      O => DES_U2_T_5_DXMUX_1525
    );
  DES_U2_T_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(3),
      O => DES_U2_T_5_DYMUX_1517
    );
  DES_U2_T_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => DES_U2_T_5_SRINV_1515
    );
  DES_U2_T_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_5_CLKINV_1514
    );
  SER_RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_BYINV_1540,
      O => SER_RD_DYMUX_1541
    );
  SER_RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => SER_RD_BYINV_1540
    );
  SER_RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_RESET_0,
      O => SER_RD_CLKINVNOT
    );
  SER_RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_0_not0000_F5MUX_2185,
      O => SER_RD_CEINV_1537
    );
  DES_U2_T_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(6),
      O => DES_U2_T_7_DXMUX_1565
    );
  DES_U2_T_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(5),
      O => DES_U2_T_7_DYMUX_1557
    );
  DES_U2_T_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => DES_U2_T_7_SRINV_1555
    );
  DES_U2_T_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_7_CLKINV_1554
    );
  BG_T_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_XORF_1606,
      O => BG_T_addsub0000(8)
    );
  BG_T_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y0"
    )
    port map (
      I0 => BG_T_addsub0000_8_CYINIT_1605,
      I1 => BG_Madd_T_addsub0000_lut(8),
      O => BG_T_addsub0000_8_XORF_1606
    );
  BG_T_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y0"
    )
    port map (
      IA => BG_T_addsub0000_8_CY0F_1604,
      IB => BG_T_addsub0000_8_CYINIT_1605,
      SEL => BG_T_addsub0000_8_CYSELF_1597,
      O => BG_Madd_T_addsub0000_cy_8_Q
    );
  BG_T_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_BXINV_1595,
      O => BG_T_addsub0000_8_CYINIT_1605
    );
  BG_T_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(8),
      O => BG_T_addsub0000_8_CY0F_1604
    );
  BG_T_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(8),
      O => BG_T_addsub0000_8_CYSELF_1597
    );
  BG_T_addsub0000_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => BG_T_addsub0000_8_BXINV_1595
    );
  BG_T_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_XORG_1593,
      O => BG_T_addsub0000(9)
    );
  BG_T_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y0"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_8_Q,
      I1 => BG_Madd_T_addsub0000_lut(9),
      O => BG_T_addsub0000_8_XORG_1593
    );
  BG_T_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_CYMUXG_1592,
      O => BG_Madd_T_addsub0000_cy_9_Q
    );
  BG_T_addsub0000_8_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X51Y0"
    )
    port map (
      IA => BG_T_addsub0000_8_CY0G_1590,
      IB => BG_Madd_T_addsub0000_cy_8_Q,
      SEL => BG_T_addsub0000_8_CYSELG_1584,
      O => BG_T_addsub0000_8_CYMUXG_1592
    );
  BG_T_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(9),
      O => BG_T_addsub0000_8_CY0G_1590
    );
  BG_T_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(9),
      O => BG_T_addsub0000_8_CYSELG_1584
    );
  BG_T_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_XORF_1645,
      O => BG_T_addsub0000(10)
    );
  BG_T_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      I0 => BG_T_addsub0000_10_CYINIT_1644,
      I1 => BG_Madd_T_addsub0000_lut(10),
      O => BG_T_addsub0000_10_XORF_1645
    );
  BG_T_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0F_1643,
      IB => BG_T_addsub0000_10_CYINIT_1644,
      SEL => BG_T_addsub0000_10_CYSELF_1633,
      O => BG_Madd_T_addsub0000_cy_10_Q
    );
  BG_T_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0F_1643,
      IB => BG_T_addsub0000_10_CY0F_1643,
      SEL => BG_T_addsub0000_10_CYSELF_1633,
      O => BG_T_addsub0000_10_CYMUXF2_1628
    );
  BG_T_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_9_Q,
      O => BG_T_addsub0000_10_CYINIT_1644
    );
  BG_T_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(10),
      O => BG_T_addsub0000_10_CY0F_1643
    );
  BG_T_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(10),
      O => BG_T_addsub0000_10_CYSELF_1633
    );
  BG_T_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_XORG_1635,
      O => BG_T_addsub0000(11)
    );
  BG_T_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_10_Q,
      I1 => BG_Madd_T_addsub0000_lut(11),
      O => BG_T_addsub0000_10_XORG_1635
    );
  BG_T_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_CYMUXFAST_1632,
      O => BG_Madd_T_addsub0000_cy_11_Q
    );
  BG_T_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_9_Q,
      O => BG_T_addsub0000_10_FASTCARRY_1630
    );
  BG_T_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      I0 => BG_T_addsub0000_10_CYSELG_1621,
      I1 => BG_T_addsub0000_10_CYSELF_1633,
      O => BG_T_addsub0000_10_CYAND_1631
    );
  BG_T_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CYMUXG2_1629,
      IB => BG_T_addsub0000_10_FASTCARRY_1630,
      SEL => BG_T_addsub0000_10_CYAND_1631,
      O => BG_T_addsub0000_10_CYMUXFAST_1632
    );
  BG_T_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0G_1627,
      IB => BG_T_addsub0000_10_CYMUXF2_1628,
      SEL => BG_T_addsub0000_10_CYSELG_1621,
      O => BG_T_addsub0000_10_CYMUXG2_1629
    );
  BG_T_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(11),
      O => BG_T_addsub0000_10_CY0G_1627
    );
  BG_T_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(11),
      O => BG_T_addsub0000_10_CYSELG_1621
    );
  BG_T_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_XORF_1684,
      O => BG_T_addsub0000(12)
    );
  BG_T_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      I0 => BG_T_addsub0000_12_CYINIT_1683,
      I1 => BG_Madd_T_addsub0000_lut(12),
      O => BG_T_addsub0000_12_XORF_1684
    );
  BG_T_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0F_1682,
      IB => BG_T_addsub0000_12_CYINIT_1683,
      SEL => BG_T_addsub0000_12_CYSELF_1672,
      O => BG_Madd_T_addsub0000_cy_12_Q
    );
  BG_T_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0F_1682,
      IB => BG_T_addsub0000_12_CY0F_1682,
      SEL => BG_T_addsub0000_12_CYSELF_1672,
      O => BG_T_addsub0000_12_CYMUXF2_1667
    );
  BG_T_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_11_Q,
      O => BG_T_addsub0000_12_CYINIT_1683
    );
  BG_T_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(12),
      O => BG_T_addsub0000_12_CY0F_1682
    );
  BG_T_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(12),
      O => BG_T_addsub0000_12_CYSELF_1672
    );
  BG_T_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_XORG_1674,
      O => BG_T_addsub0000(13)
    );
  BG_T_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_12_Q,
      I1 => BG_Madd_T_addsub0000_lut(13),
      O => BG_T_addsub0000_12_XORG_1674
    );
  BG_T_addsub0000_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_CYMUXFAST_1671,
      O => BG_Madd_T_addsub0000_cy_13_Q
    );
  BG_T_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_11_Q,
      O => BG_T_addsub0000_12_FASTCARRY_1669
    );
  BG_T_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      I0 => BG_T_addsub0000_12_CYSELG_1660,
      I1 => BG_T_addsub0000_12_CYSELF_1672,
      O => BG_T_addsub0000_12_CYAND_1670
    );
  BG_T_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CYMUXG2_1668,
      IB => BG_T_addsub0000_12_FASTCARRY_1669,
      SEL => BG_T_addsub0000_12_CYAND_1670,
      O => BG_T_addsub0000_12_CYMUXFAST_1671
    );
  BG_T_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0G_1666,
      IB => BG_T_addsub0000_12_CYMUXF2_1667,
      SEL => BG_T_addsub0000_12_CYSELG_1660,
      O => BG_T_addsub0000_12_CYMUXG2_1668
    );
  BG_T_addsub0000_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(13),
      O => BG_T_addsub0000_12_CY0G_1666
    );
  BG_T_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(13),
      O => BG_T_addsub0000_12_CYSELG_1660
    );
  BG_T_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_XORF_1723,
      O => BG_T_addsub0000(14)
    );
  BG_T_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      I0 => BG_T_addsub0000_14_CYINIT_1722,
      I1 => BG_Madd_T_addsub0000_lut(14),
      O => BG_T_addsub0000_14_XORF_1723
    );
  BG_T_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0F_1721,
      IB => BG_T_addsub0000_14_CYINIT_1722,
      SEL => BG_T_addsub0000_14_CYSELF_1711,
      O => BG_Madd_T_addsub0000_cy_14_Q
    );
  BG_T_addsub0000_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0F_1721,
      IB => BG_T_addsub0000_14_CY0F_1721,
      SEL => BG_T_addsub0000_14_CYSELF_1711,
      O => BG_T_addsub0000_14_CYMUXF2_1706
    );
  BG_T_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_13_Q,
      O => BG_T_addsub0000_14_CYINIT_1722
    );
  BG_T_addsub0000_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(14),
      O => BG_T_addsub0000_14_CY0F_1721
    );
  BG_T_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(14),
      O => BG_T_addsub0000_14_CYSELF_1711
    );
  BG_T_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_XORG_1713,
      O => BG_T_addsub0000(15)
    );
  BG_T_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_14_Q,
      I1 => BG_Madd_T_addsub0000_lut(15),
      O => BG_T_addsub0000_14_XORG_1713
    );
  BG_T_addsub0000_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_CYMUXFAST_1710,
      O => BG_Madd_T_addsub0000_cy_15_Q
    );
  BG_T_addsub0000_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_13_Q,
      O => BG_T_addsub0000_14_FASTCARRY_1708
    );
  BG_T_addsub0000_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      I0 => BG_T_addsub0000_14_CYSELG_1699,
      I1 => BG_T_addsub0000_14_CYSELF_1711,
      O => BG_T_addsub0000_14_CYAND_1709
    );
  BG_T_addsub0000_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CYMUXG2_1707,
      IB => BG_T_addsub0000_14_FASTCARRY_1708,
      SEL => BG_T_addsub0000_14_CYAND_1709,
      O => BG_T_addsub0000_14_CYMUXFAST_1710
    );
  BG_T_addsub0000_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0G_1705,
      IB => BG_T_addsub0000_14_CYMUXF2_1706,
      SEL => BG_T_addsub0000_14_CYSELG_1699,
      O => BG_T_addsub0000_14_CYMUXG2_1707
    );
  BG_T_addsub0000_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(15),
      O => BG_T_addsub0000_14_CY0G_1705
    );
  BG_T_addsub0000_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(15),
      O => BG_T_addsub0000_14_CYSELG_1699
    );
  BG_Madd_T_addsub0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"66C6",
      LOC => "SLICE_X51Y3"
    )
    port map (
      ADR0 => SEL_2_IBUF_659,
      ADR1 => BG_T(14),
      ADR2 => SEL_1_IBUF_661,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(14)
    );
  BG_Madd_T_addsub0000_lut_16_Q : X_LUT4
    generic map(
      INIT => X"C966",
      LOC => "SLICE_X51Y4"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => BG_T(16),
      ADR2 => SEL_0_IBUF_662,
      ADR3 => SEL_2_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(16)
    );
  BG_T_addsub0000_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_XORF_1762,
      O => BG_T_addsub0000(16)
    );
  BG_T_addsub0000_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      I0 => BG_T_addsub0000_16_CYINIT_1761,
      I1 => BG_Madd_T_addsub0000_lut(16),
      O => BG_T_addsub0000_16_XORF_1762
    );
  BG_T_addsub0000_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0F_1760,
      IB => BG_T_addsub0000_16_CYINIT_1761,
      SEL => BG_T_addsub0000_16_CYSELF_1750,
      O => BG_Madd_T_addsub0000_cy_16_Q
    );
  BG_T_addsub0000_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0F_1760,
      IB => BG_T_addsub0000_16_CY0F_1760,
      SEL => BG_T_addsub0000_16_CYSELF_1750,
      O => BG_T_addsub0000_16_CYMUXF2_1745
    );
  BG_T_addsub0000_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_15_Q,
      O => BG_T_addsub0000_16_CYINIT_1761
    );
  BG_T_addsub0000_16_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(16),
      O => BG_T_addsub0000_16_CY0F_1760
    );
  BG_T_addsub0000_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(16),
      O => BG_T_addsub0000_16_CYSELF_1750
    );
  BG_T_addsub0000_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_XORG_1752,
      O => BG_T_addsub0000(17)
    );
  BG_T_addsub0000_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_16_Q,
      I1 => BG_Madd_T_addsub0000_lut(17),
      O => BG_T_addsub0000_16_XORG_1752
    );
  BG_T_addsub0000_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_15_Q,
      O => BG_T_addsub0000_16_FASTCARRY_1747
    );
  BG_T_addsub0000_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      I0 => BG_T_addsub0000_16_CYSELG_1738,
      I1 => BG_T_addsub0000_16_CYSELF_1750,
      O => BG_T_addsub0000_16_CYAND_1748
    );
  BG_T_addsub0000_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CYMUXG2_1746,
      IB => BG_T_addsub0000_16_FASTCARRY_1747,
      SEL => BG_T_addsub0000_16_CYAND_1748,
      O => BG_T_addsub0000_16_CYMUXFAST_1749
    );
  BG_T_addsub0000_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0G_1744,
      IB => BG_T_addsub0000_16_CYMUXF2_1745,
      SEL => BG_T_addsub0000_16_CYSELG_1738,
      O => BG_T_addsub0000_16_CYMUXG2_1746
    );
  BG_T_addsub0000_16_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(17),
      O => BG_T_addsub0000_16_CY0G_1744
    );
  BG_T_addsub0000_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(17),
      O => BG_T_addsub0000_16_CYSELG_1738
    );
  BG_Madd_T_addsub0000_lut_17_Q : X_LUT4
    generic map(
      INIT => X"999C",
      LOC => "SLICE_X51Y4"
    )
    port map (
      ADR0 => SEL_2_IBUF_659,
      ADR1 => BG_T(17),
      ADR2 => SEL_1_IBUF_661,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(17)
    );
  BG_Madd_T_addsub0000_lut_18_Q : X_LUT4
    generic map(
      INIT => X"C99C",
      LOC => "SLICE_X51Y5"
    )
    port map (
      ADR0 => SEL_2_IBUF_659,
      ADR1 => BG_T(18),
      ADR2 => SEL_1_IBUF_661,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(18)
    );
  BG_T_addsub0000_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_18_XORF_1793,
      O => BG_T_addsub0000(18)
    );
  BG_T_addsub0000_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y5"
    )
    port map (
      I0 => BG_T_addsub0000_18_CYINIT_1792,
      I1 => BG_Madd_T_addsub0000_lut(18),
      O => BG_T_addsub0000_18_XORF_1793
    );
  BG_T_addsub0000_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y5"
    )
    port map (
      IA => BG_T_addsub0000_18_CY0F_1791,
      IB => BG_T_addsub0000_18_CYINIT_1792,
      SEL => BG_T_addsub0000_18_CYSELF_1785,
      O => BG_Madd_T_addsub0000_cy_18_Q
    );
  BG_T_addsub0000_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_CYMUXFAST_1749,
      O => BG_T_addsub0000_18_CYINIT_1792
    );
  BG_T_addsub0000_18_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(18),
      O => BG_T_addsub0000_18_CY0F_1791
    );
  BG_T_addsub0000_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(18),
      O => BG_T_addsub0000_18_CYSELF_1785
    );
  BG_T_addsub0000_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_18_XORG_1782,
      O => BG_T_addsub0000(19)
    );
  BG_T_addsub0000_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y5"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_18_Q,
      I1 => BG_Madd_T_addsub0000_lut(19),
      O => BG_T_addsub0000_18_XORG_1782
    );
  RX_READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD338"
    )
    port map (
      I => RX_READY_O,
      O => RX_READY
    );
  RX_READY_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => RX_READY_OUTPUT_OTCLK1INVNOT
    );
  BUFFER_FULL_IBUF : X_BUF
    generic map(
      LOC => "PAD388",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUFFER_FULL,
      O => BUFFER_FULL_INBUF
    );
  CTS_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 658 ps
    )
    port map (
      I => CTS,
      O => CTS_INBUF
    );
  SEL_0_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL(0),
      O => SEL_0_INBUF
    );
  SEL_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_0_INBUF,
      O => SEL_0_IBUF_662
    );
  SEL_1_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL(1),
      O => SEL_1_INBUF
    );
  SEL_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_1_INBUF,
      O => SEL_1_IBUF_661
    );
  SEL_2_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL(2),
      O => SEL_2_INBUF
    );
  SEL_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_2_INBUF,
      O => SEL_2_IBUF_659
    );
  CLK_R_OBUF : X_OBUF
    generic map(
      LOC => "PAD321"
    )
    port map (
      I => CLK_R_O,
      O => CLK_R
    );
  CLK_T_OBUF : X_OBUF
    generic map(
      LOC => "PAD320"
    )
    port map (
      I => CLK_T_O,
      O => CLK_T
    );
  BUS_IN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(0),
      O => BUS_IN_0_INBUF
    );
  BUS_IN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(1),
      O => BUS_IN_1_INBUF
    );
  BUS_IN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(2),
      O => BUS_IN_2_INBUF
    );
  BUS_IN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(3),
      O => BUS_IN_3_INBUF
    );
  BUS_IN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(4),
      O => BUS_IN_4_INBUF
    );
  BUS_IN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(5),
      O => BUS_IN_5_INBUF
    );
  RX_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 658 ps
    )
    port map (
      I => RX,
      O => RX_INBUF
    );
  BUS_OUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD380"
    )
    port map (
      I => BUS_OUT_0_O,
      O => BUS_OUT(0)
    );
  BUS_IN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(6),
      O => BUS_IN_6_INBUF
    );
  BUS_OUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD371"
    )
    port map (
      I => BUS_OUT_1_O,
      O => BUS_OUT(1)
    );
  BUS_IN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(7),
      O => BUS_IN_7_INBUF
    );
  TX_OBUF : X_OBUF
    generic map(
      LOC => "PAD330"
    )
    port map (
      I => TX_O,
      O => TX
    );
  BUS_OUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD370"
    )
    port map (
      I => BUS_OUT_2_O,
      O => BUS_OUT(2)
    );
  BUS_OUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD363"
    )
    port map (
      I => BUS_OUT_3_O,
      O => BUS_OUT(3)
    );
  TX_READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD326"
    )
    port map (
      I => TX_READY_O,
      O => TX_READY
    );
  BUS_OUT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD362"
    )
    port map (
      I => BUS_OUT_4_O,
      O => BUS_OUT(4)
    );
  BUS_OUT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD361"
    )
    port map (
      I => BUS_OUT_5_O,
      O => BUS_OUT(5)
    );
  BUS_OUT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD360"
    )
    port map (
      I => BUS_OUT_6_O,
      O => BUS_OUT(6)
    );
  BUS_OUT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD339"
    )
    port map (
      I => BUS_OUT_7_O,
      O => BUS_OUT(7)
    );
  RTS_OBUF : X_OBUF
    generic map(
      LOC => "PAD387"
    )
    port map (
      I => RTS_O,
      O => RTS
    );
  START_IBUF : X_BUF
    generic map(
      LOC => "PAD319",
      PATHPULSE => 658 ps
    )
    port map (
      I => START,
      O => START_INBUF
    );
  CLK_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  CLK_IBUF_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => CLK_IBUF_BUFG_I0_INV,
      I1 => GND,
      S => CLK_IBUF_BUFG_S_INVNOT,
      O => CLK_IBUF_608
    );
  CLK_IBUF_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '1',
      O => CLK_IBUF_BUFG_S_INVNOT
    );
  CLK_IBUF_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF1,
      O => CLK_IBUF_BUFG_I0_INV
    );
  SER_RD_0_not0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X49Y2"
    )
    port map (
      IA => SER_RD_0_not00001_2172,
      IB => SER_RD_0_not0000_F,
      SEL => SER_RD_0_not0000_BXINV_2174,
      O => SER_RD_0_not0000_F5MUX_2185
    );
  SER_RD_0_not0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_666,
      O => SER_RD_0_not0000_BXINV_2174
    );
  BG_CLK_SEL_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      IA => BG_CLK_SEL_or00001_2198,
      IB => RESET_IBUF_rt_2208,
      SEL => BG_CLK_SEL_or0000_BXINV_2200,
      O => BG_CLK_SEL_or0000_F5MUX_2210
    );
  BG_CLK_SEL_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_2_IBUF_659,
      O => BG_CLK_SEL_or0000_BXINV_2200
    );
  BG_T_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(0),
      O => BG_T_19_DXMUX_2240
    );
  BG_T_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq000042_pack_1,
      O => BG_CLK_SEL_cmp_eq000042_609
    );
  BG_T_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_19_CLKINV_2225
    );
  BG_T_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_19_CEINV_2224
    );
  BG_T_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(1),
      O => BG_T_18_DXMUX_2273
    );
  BG_T_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq000019_pack_1,
      O => BG_CLK_SEL_cmp_eq000019_610
    );
  BG_T_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_608,
      O => BG_T_18_CLKINV_2258
    );
  BG_T_18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_18_CEINV_2257
    );
  BG_CLK_SEL_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq00007_pack_1,
      O => BG_CLK_SEL_cmp_eq00007_611
    );
  SER_COUNT_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(3),
      O => SER_COUNT_TY_3_DXMUX_2337
    );
  SER_COUNT_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(2),
      O => SER_COUNT_TY_3_DYMUX_2323
    );
  SER_COUNT_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_598,
      O => SER_COUNT_TY_3_SRINV_2314
    );
  SER_COUNT_TY_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_COUNT_TY_3_CLKINV_2313
    );
  DES_U3_Y_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Y11_2357,
      O => DES_U3_Y_DYMUX_2360
    );
  DES_U3_Y_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => DES_U3_Y_CLKINV_2349
    );
  SER_REG_PS_Z_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_1_mux0001,
      O => SER_REG_PS_Z_1_DXMUX_2401
    );
  SER_REG_PS_Z_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_0_mux0001,
      O => SER_REG_PS_Z_1_DYMUX_2387
    );
  SER_REG_PS_Z_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => SER_REG_PS_Z_1_SRINV_2377
    );
  SER_REG_PS_Z_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_1_CLKINV_2376
    );
  SER_REG_PS_Z_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_3_mux0001,
      O => SER_REG_PS_Z_3_DXMUX_2441
    );
  SER_REG_PS_Z_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_2_mux0001,
      O => SER_REG_PS_Z_3_DYMUX_2427
    );
  SER_REG_PS_Z_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => SER_REG_PS_Z_3_SRINV_2418
    );
  SER_REG_PS_Z_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_3_CLKINV_2417
    );
  SER_REG_PS_Z_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_5_mux0001,
      O => SER_REG_PS_Z_5_DXMUX_2481
    );
  SER_REG_PS_Z_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_4_mux0001,
      O => SER_REG_PS_Z_5_DYMUX_2467
    );
  SER_REG_PS_Z_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => SER_REG_PS_Z_5_SRINV_2458
    );
  SER_REG_PS_Z_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_5_CLKINV_2457
    );
  BG_Madd_T_addsub0000_lut_19_Q : X_LUT4
    generic map(
      INIT => X"CC9C",
      LOC => "SLICE_X51Y5"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => BG_T(19),
      ADR2 => SEL_0_IBUF_662,
      ADR3 => SEL_2_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(19)
    );
  DES_RD_1 : X_LATCHE
    generic map(
      LOC => "PAD338",
      INIT => '1'
    )
    port map (
      I => RX_READY_OUTPUT_OFF_O1INV_1813,
      GE => RX_READY_OUTPUT_OFF_OCEINV_1815,
      CLK => NlwInverterSignal_DES_RD_1_CLK,
      SET => RX_READY_OUTPUT_OFF_OSR_USED_1818,
      RST => GND,
      O => DES_RD_1_1820
    );
  RX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_1_1820,
      O => RX_READY_O
    );
  RX_READY_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000_0,
      O => RX_READY_OUTPUT_OFF_OSR_USED_1818
    );
  RX_READY_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000_0,
      O => RX_READY_OUTPUT_OFF_OCEINV_1815
    );
  RX_READY_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => RX_READY_OUTPUT_OFF_O1INV_1813
    );
  DES_U4_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X32Y0"
    )
    port map (
      ADR0 => DES_U4_TY(2),
      ADR1 => VCC,
      ADR2 => DES_U4_TY(0),
      ADR3 => DES_U4_TY(1),
      O => DES_Result(2)
    );
  DES_U4_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y0",
      INIT => '0'
    )
    port map (
      I => DES_U4_TY_2_DYMUX_715,
      CE => VCC,
      CLK => DES_U4_TY_2_CLKINV_705,
      SET => GND,
      RST => DES_U4_TY_2_FFY_RSTAND_720,
      O => DES_U4_TY(2)
    );
  DES_U4_TY_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U4_TY_2_FFY_RSTAND_720
    );
  BG_U1_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3CCC",
      LOC => "SLICE_X46Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BG_U1_TY(2),
      ADR2 => BG_U1_TY(0),
      ADR3 => BG_U1_TY(1),
      O => BG_Result(2)
    );
  BG_U1_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_2_DYMUX_738,
      CE => VCC,
      CLK => BG_U1_TY_2_CLKINV_728,
      SET => GND,
      RST => BG_U1_TY_2_FFY_RSTAND_743,
      O => BG_U1_TY(2)
    );
  BG_U1_TY_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BG_U1_TY_2_FFY_RSTAND_743
    );
  SER_REG_PS_Z_6_mux00011 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BUS_IN_5_IBUF_601,
      ADR2 => SER_REG_PS_Z(7),
      ADR3 => SER_T_LOAD_598,
      O => SER_REG_PS_Z_6_mux0001
    );
  SER_REG_PS_Z_6 : X_FF
    generic map(
      LOC => "SLICE_X45Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_7_DYMUX_765,
      CE => VCC,
      CLK => SER_REG_PS_Z_7_CLKINV_755,
      SET => SER_REG_PS_Z_7_SRINV_756,
      RST => GND,
      O => SER_REG_PS_Z(6)
    );
  SER_REG_PS_Z_7_mux00011 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => BUS_IN_6_IBUF_599,
      ADR1 => SER_REG_PS_Z(8),
      ADR2 => VCC,
      ADR3 => SER_T_LOAD_598,
      O => SER_REG_PS_Z_7_mux0001
    );
  SER_REG_PS_Z_7 : X_FF
    generic map(
      LOC => "SLICE_X45Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_7_DXMUX_779,
      CE => VCC,
      CLK => SER_REG_PS_Z_7_CLKINV_755,
      SET => SER_REG_PS_Z_7_SRINV_756,
      RST => GND,
      O => SER_REG_PS_Z(7)
    );
  SER_REG_PS_Z_8_mux00011 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X47Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_T_LOAD_598,
      ADR2 => VCC,
      ADR3 => BUS_IN_7_IBUF_605,
      O => SER_REG_PS_Z_8_mux0001
    );
  SER_REG_PS_Z_8 : X_FF
    generic map(
      LOC => "SLICE_X47Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_8_DYMUX_804,
      CE => VCC,
      CLK => SER_REG_PS_Z_8_CLKINV_793,
      SET => SER_REG_PS_Z_8_FFY_SET,
      RST => GND,
      O => SER_REG_PS_Z(8)
    );
  SER_REG_PS_Z_8_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X47Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => SER_REG_PS_Z_8_FFY_SET
    );
  SER_REG_PS_Y1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X47Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_T_LOAD_598,
      ADR2 => VCC,
      ADR3 => SER_REG_PS_Z(0),
      O => TX_OBUF_816
    );
  BG_T_11 : X_FF
    generic map(
      LOC => "SLICE_X50Y1",
      INIT => '0'
    )
    port map (
      I => BG_T_11_DXMUX_852,
      CE => BG_T_11_CEINV_831,
      CLK => BG_T_11_CLKINV_832,
      SET => GND,
      RST => GND,
      O => BG_T(11)
    );
  BG_T_8 : X_FF
    generic map(
      LOC => "SLICE_X50Y0",
      INIT => '0'
    )
    port map (
      I => BG_T_9_DYMUX_878,
      CE => BG_T_9_CEINV_869,
      CLK => BG_T_9_CLKINV_870,
      SET => GND,
      RST => GND,
      O => BG_T(8)
    );
  BG_T_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y0"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_T_addsub0000(8),
      O => BG_T_mux0001(11)
    );
  BG_T_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X50Y0"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_609,
      ADR1 => BG_T_addsub0000(9),
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_CLK_SEL_cmp_eq000019_610,
      O => BG_T_mux0001(10)
    );
  BG_T_9 : X_FF
    generic map(
      LOC => "SLICE_X50Y0",
      INIT => '0'
    )
    port map (
      I => BG_T_9_DXMUX_890,
      CE => BG_T_9_CEINV_869,
      CLK => BG_T_9_CLKINV_870,
      SET => GND,
      RST => GND,
      O => BG_T(9)
    );
  BG_T_12 : X_FF
    generic map(
      LOC => "SLICE_X50Y4",
      INIT => '0'
    )
    port map (
      I => BG_T_13_DYMUX_916,
      CE => BG_T_13_CEINV_907,
      CLK => BG_T_13_CLKINV_908,
      SET => GND,
      RST => GND,
      O => BG_T(12)
    );
  BG_T_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y4"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_611,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq000019_610,
      ADR3 => BG_T_addsub0000(12),
      O => BG_T_mux0001(7)
    );
  BG_T_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X50Y4"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_T_addsub0000(13),
      ADR3 => BG_CLK_SEL_cmp_eq00007_611,
      O => BG_T_mux0001(6)
    );
  BG_T_13 : X_FF
    generic map(
      LOC => "SLICE_X50Y4",
      INIT => '0'
    )
    port map (
      I => BG_T_13_DXMUX_928,
      CE => BG_T_13_CEINV_907,
      CLK => BG_T_13_CLKINV_908,
      SET => GND,
      RST => GND,
      O => BG_T(13)
    );
  BG_T_14 : X_FF
    generic map(
      LOC => "SLICE_X50Y2",
      INIT => '0'
    )
    port map (
      I => BG_T_15_DYMUX_954,
      CE => BG_T_15_CEINV_945,
      CLK => BG_T_15_CLKINV_946,
      SET => GND,
      RST => GND,
      O => BG_T(14)
    );
  BG_T_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y2"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_T_addsub0000(14),
      O => BG_T_mux0001(5)
    );
  BG_T_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X50Y2"
    )
    port map (
      ADR0 => BG_T_addsub0000(15),
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_CLK_SEL_cmp_eq000019_610,
      O => BG_T_mux0001(4)
    );
  BG_T_15 : X_FF
    generic map(
      LOC => "SLICE_X50Y2",
      INIT => '0'
    )
    port map (
      I => BG_T_15_DXMUX_966,
      CE => BG_T_15_CEINV_945,
      CLK => BG_T_15_CLKINV_946,
      SET => GND,
      RST => GND,
      O => BG_T(15)
    );
  BG_T_16 : X_FF
    generic map(
      LOC => "SLICE_X49Y5",
      INIT => '0'
    )
    port map (
      I => BG_T_17_DYMUX_992,
      CE => BG_T_17_CEINV_983,
      CLK => BG_T_17_CLKINV_984,
      SET => GND,
      RST => GND,
      O => BG_T(16)
    );
  BG_T_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X49Y5"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq00007_611,
      ADR2 => BG_CLK_SEL_cmp_eq000042_609,
      ADR3 => BG_T_addsub0000(16),
      O => BG_T_mux0001(3)
    );
  BG_T_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X49Y5"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq00007_611,
      ADR2 => BG_T_addsub0000(17),
      ADR3 => BG_CLK_SEL_cmp_eq000042_609,
      O => BG_T_mux0001(2)
    );
  BG_T_17 : X_FF
    generic map(
      LOC => "SLICE_X49Y5",
      INIT => '0'
    )
    port map (
      I => BG_T_17_DXMUX_1004,
      CE => BG_T_17_CEINV_983,
      CLK => BG_T_17_CLKINV_984,
      SET => GND,
      RST => GND,
      O => BG_T(17)
    );
  DES_U5_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"66AA",
      LOC => "SLICE_X39Y1"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(1),
      ADR2 => VCC,
      ADR3 => DES_U5_TY(0),
      O => DES_Result_2_1
    );
  DES_U5_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_3_DYMUX_1030,
      CE => VCC,
      CLK => DES_U5_TY_3_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_3_SRINV_1021,
      O => DES_U5_TY(2)
    );
  DES_U5_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X39Y1"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(1),
      ADR2 => DES_U5_TY(0),
      ADR3 => DES_U5_TY(3),
      O => DES_Result(3)
    );
  DES_U5_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X39Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_3_DXMUX_1044,
      CE => VCC,
      CLK => DES_U5_TY_3_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_3_SRINV_1021,
      O => DES_U5_TY(3)
    );
  DES_U3_Mshreg_Y_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X42Y0"
    )
    port map (
      A0 => GND,
      A1 => VCC,
      A2 => GND,
      A3 => GND,
      D => DES_U3_Y1_DIG_MUX_1065,
      CE => DES_U3_Y1_WSG,
      CLK => DES_U3_Y1_CLKINV_1063,
      Q => DES_U3_Mshreg_Y,
      Q15 => NLW_DES_U3_Mshreg_Y_SRL16E_Q15_UNCONNECTED
    );
  DES_U3_Y1 : X_FF
    generic map(
      LOC => "SLICE_X42Y0",
      INIT => '0'
    )
    port map (
      I => DES_U3_Y1_DYMUX_1076,
      CE => VCC,
      CLK => DES_U3_Y1_CLKINV_1063,
      SET => GND,
      RST => GND,
      O => DES_U3_Y1_639
    );
  DES_T_START1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X38Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => DES_RD_641,
      ADR2 => VCC,
      ADR3 => DES_U3_Y_640,
      O => DES_T_START
    );
  RESET_IBUF_shift1 : X_FF
    generic map(
      LOC => "SLICE_X43Y1",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift2_DYMUX_1101,
      CE => VCC,
      CLK => RESET_IBUF_shift2_CLKINV_1098,
      SET => GND,
      RST => RESET_IBUF_shift2_SRINV_1099,
      O => RESET_IBUF_shift1_642
    );
  RESET_IBUF_shift2 : X_FF
    generic map(
      LOC => "SLICE_X43Y1",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift2_DXMUX_1109,
      CE => VCC,
      CLK => RESET_IBUF_shift2_CLKINV_1098,
      SET => GND,
      RST => RESET_IBUF_shift2_SRINV_1099,
      O => RESET_IBUF_shift2_643
    );
  SER_T_LOAD : X_SFF
    generic map(
      LOC => "SLICE_X44Y0",
      INIT => '0'
    )
    port map (
      I => SER_T_LOAD_DYMUX_1123,
      CE => VCC,
      CLK => SER_T_LOAD_CLKINV_1120,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => SER_T_LOAD_SRINVNOT,
      O => SER_T_LOAD_598
    );
  RESET_IBUF_shift3 : X_FF
    generic map(
      LOC => "SLICE_X42Y1",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift4_DYMUX_1137,
      CE => VCC,
      CLK => RESET_IBUF_shift4_CLKINV_1134,
      SET => GND,
      RST => RESET_IBUF_shift4_SRINV_1135,
      O => RESET_IBUF_shift3_646
    );
  RESET_IBUF_shift4 : X_FF
    generic map(
      LOC => "SLICE_X42Y1",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift4_DXMUX_1145,
      CE => VCC,
      CLK => RESET_IBUF_shift4_CLKINV_1134,
      SET => GND,
      RST => RESET_IBUF_shift4_SRINV_1135,
      O => RESET_IBUF_shift4_647
    );
  SER_COUNT_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X49Y0"
    )
    port map (
      ADR0 => SER_COUNT_TY(1),
      ADR1 => VCC,
      ADR2 => SER_COUNT_TY(0),
      ADR3 => VCC,
      O => SER_Result(1)
    );
  SER_COUNT_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y0",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_0_DYMUX_1170,
      CE => VCC,
      CLK => SER_COUNT_TY_0_CLKINV_1159,
      SET => GND,
      RST => SER_COUNT_TY_0_SRINV_1160,
      O => SER_COUNT_TY(1)
    );
  SER_COUNT_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y0",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_0_DXMUX_1178,
      CE => VCC,
      CLK => SER_COUNT_TY_0_CLKINV_1159,
      SET => GND,
      RST => SER_COUNT_TY_0_SRINV_1160,
      O => SER_COUNT_TY(0)
    );
  DES_RD : X_LATCHE
    generic map(
      LOC => "SLICE_X41Y0",
      INIT => '1'
    )
    port map (
      I => DES_RD_DYMUX_1194,
      GE => DES_RD_CEINV_1190,
      CLK => NlwInverterSignal_DES_RD_CLK,
      SET => DES_RD_FFY_SET,
      RST => GND,
      O => DES_RD_641
    );
  DES_RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X41Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000_0,
      O => DES_RD_FFY_SET
    );
  SER_r1_input : X_FF
    generic map(
      LOC => "SLICE_X46Y2",
      INIT => '0'
    )
    port map (
      I => SER_r1_input_DYMUX_1206,
      CE => VCC,
      CLK => SER_r1_input_CLKINV_1204,
      SET => GND,
      RST => GND,
      O => SER_r1_input_653
    );
  DES_RD_0_not00001 : X_LUT4
    generic map(
      INIT => X"FFBF",
      LOC => "SLICE_X39Y0"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(1),
      ADR2 => DES_U5_TY(3),
      ADR3 => DES_U5_TY(0),
      O => DES_RD_0_not0000
    );
  DES_T_END1 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X39Y0"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(1),
      ADR2 => DES_U5_TY(3),
      ADR3 => DES_U5_TY(0),
      O => DES_T_END
    );
  SER_T_RESET1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X49Y1"
    )
    port map (
      ADR0 => SER_r0_input_652,
      ADR1 => SER_r1_input_653,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SER_T_RESET
    );
  BG_CLK_SEL : X_FF
    generic map(
      LOC => "SLICE_X48Y4",
      INIT => '0'
    )
    port map (
      I => BG_CLK_SEL_DXMUX_1258,
      CE => BG_CLK_SEL_CEINV_1252,
      CLK => BG_CLK_SEL_CLKINV_1253,
      SET => BG_CLK_SEL_FFX_SET,
      RST => BG_CLK_SEL_FFX_RSTAND_1265,
      O => BG_CLK_SEL_589
    );
  BG_CLK_SEL_FFX_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_and0000,
      O => BG_CLK_SEL_FFX_SET
    );
  BG_CLK_SEL_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_or0000_F5MUX_2210,
      O => BG_CLK_SEL_FFX_RSTAND_1265
    );
  DES_U4_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X32Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => DES_U4_TY(0),
      ADR3 => DES_U4_TY(1),
      O => DES_Result(1)
    );
  DES_U4_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y1",
      INIT => '0'
    )
    port map (
      I => DES_U4_TY_0_DYMUX_1286,
      CE => VCC,
      CLK => DES_U4_TY_0_CLKINV_1275,
      SET => GND,
      RST => DES_U4_TY_0_SRINV_1276,
      O => DES_U4_TY(1)
    );
  DES_U4_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y1",
      INIT => '0'
    )
    port map (
      I => DES_U4_TY_0_DXMUX_1294,
      CE => VCC,
      CLK => DES_U4_TY_0_CLKINV_1275,
      SET => GND,
      RST => DES_U4_TY_0_SRINV_1276,
      O => DES_U4_TY(0)
    );
  BG_U1_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X47Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BG_U1_TY(0),
      ADR2 => VCC,
      ADR3 => BG_U1_TY(1),
      O => BG_Result(1)
    );
  BG_U1_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X47Y2",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_0_DYMUX_1319,
      CE => VCC,
      CLK => BG_U1_TY_0_CLKINV_1308,
      SET => GND,
      RST => BG_U1_TY_0_SRINV_1309,
      O => BG_U1_TY(1)
    );
  BG_U1_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X47Y2",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_0_DXMUX_1327,
      CE => VCC,
      CLK => BG_U1_TY_0_CLKINV_1308,
      SET => GND,
      RST => BG_U1_TY_0_SRINV_1309,
      O => BG_U1_TY(0)
    );
  BG_T_and00011 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => SEL_2_IBUF_659,
      ADR2 => SEL_0_IBUF_662,
      ADR3 => RESET_IBUF_594,
      O => BG_T_and0001
    );
  BG_CLK_SEL_and00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => CLK_IBUF1,
      ADR2 => SEL_0_IBUF_662,
      ADR3 => SEL_2_IBUF_659,
      O => BG_CLK_SEL_and0000
    );
  SER_RD_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X48Y3"
    )
    port map (
      ADR0 => SER_T_RESET_0,
      ADR1 => SER_RD_666,
      ADR2 => SER_COUNT_TY(1),
      ADR3 => SER_COUNT_TY(0),
      O => N4_pack_1
    );
  SER_RD_or0000 : X_LUT4
    generic map(
      INIT => X"F0F8",
      LOC => "SLICE_X48Y3"
    )
    port map (
      ADR0 => N4,
      ADR1 => SER_COUNT_TY(3),
      ADR2 => RESET_IBUF_594,
      ADR3 => SER_COUNT_TY(2),
      O => SER_RD_or0000_1379
    );
  SER_r0_input : X_FF
    generic map(
      LOC => "SLICE_X47Y0",
      INIT => '0'
    )
    port map (
      I => SER_r0_input_DYMUX_1387,
      CE => VCC,
      CLK => SER_r0_input_CLKINV_1385,
      SET => GND,
      RST => GND,
      O => SER_r0_input_652
    );
  DES_RD_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"1050",
      LOC => "SLICE_X38Y1"
    )
    port map (
      ADR0 => DES_U5_TY(0),
      ADR1 => DES_RD_641,
      ADR2 => DES_U5_TY(1),
      ADR3 => DES_U3_Y_640,
      O => N2_pack_1
    );
  DES_RD_or0000 : X_LUT4
    generic map(
      INIT => X"CCEC",
      LOC => "SLICE_X38Y1"
    )
    port map (
      ADR0 => DES_U5_TY(3),
      ADR1 => RESET_IBUF_594,
      ADR2 => N2,
      ADR3 => DES_U5_TY(2),
      O => DES_RD_or0000_1412
    );
  DES_U5_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X36Y0"
    )
    port map (
      ADR0 => DES_U5_TY(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => DES_U5_TY(1),
      O => DES_Result_1_1
    );
  DES_U5_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y0",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_0_DYMUX_1433,
      CE => VCC,
      CLK => DES_U5_TY_0_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_0_SRINV_1423,
      O => DES_U5_TY(1)
    );
  DES_U5_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X36Y0",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_0_DXMUX_1441,
      CE => VCC,
      CLK => DES_U5_TY_0_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_0_SRINV_1423,
      O => DES_U5_TY(0)
    );
  DES_U2_T_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_1_DYMUX_1457,
      CE => VCC,
      CLK => DES_U2_T_1_CLKINV_1454,
      SET => GND,
      RST => DES_U2_T_1_SRINV_1455,
      O => DES_U2_T(0)
    );
  DES_U2_T_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_1_DXMUX_1465,
      CE => VCC,
      CLK => DES_U2_T_1_CLKINV_1454,
      SET => GND,
      RST => DES_U2_T_1_SRINV_1455,
      O => DES_U2_T(1)
    );
  DES_U2_T_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_3_DYMUX_1481,
      CE => VCC,
      CLK => DES_U2_T_3_CLKINV_1478,
      SET => GND,
      RST => DES_U2_T_3_SRINV_1479,
      O => DES_U2_T(2)
    );
  DES_U2_T_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_3_DXMUX_1489,
      CE => VCC,
      CLK => DES_U2_T_3_CLKINV_1478,
      SET => GND,
      RST => DES_U2_T_3_SRINV_1479,
      O => DES_U2_T(3)
    );
  DES_U3_not00001_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X46Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RX_IBUF_670,
      O => DES_U3_not0000
    );
  DES_U2_T_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_5_DYMUX_1517,
      CE => VCC,
      CLK => DES_U2_T_5_CLKINV_1514,
      SET => GND,
      RST => DES_U2_T_5_SRINV_1515,
      O => DES_U2_T(4)
    );
  DES_U2_T_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_5_DXMUX_1525,
      CE => VCC,
      CLK => DES_U2_T_5_CLKINV_1514,
      SET => GND,
      RST => DES_U2_T_5_SRINV_1515,
      O => DES_U2_T(5)
    );
  SER_RD : X_LATCHE
    generic map(
      LOC => "SLICE_X49Y3",
      INIT => '1'
    )
    port map (
      I => SER_RD_DYMUX_1541,
      GE => SER_RD_CEINV_1537,
      CLK => NlwInverterSignal_SER_RD_CLK,
      SET => SER_RD_FFY_SET,
      RST => GND,
      O => SER_RD_666
    );
  SER_RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_or0000_1379,
      O => SER_RD_FFY_SET
    );
  DES_U2_T_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_7_DYMUX_1557,
      CE => VCC,
      CLK => DES_U2_T_7_CLKINV_1554,
      SET => GND,
      RST => DES_U2_T_7_SRINV_1555,
      O => DES_U2_T(6)
    );
  DES_U2_T_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_7_DXMUX_1565,
      CE => VCC,
      CLK => DES_U2_T_7_CLKINV_1554,
      SET => GND,
      RST => DES_U2_T_7_SRINV_1555,
      O => DES_U2_T(7)
    );
  BG_Madd_T_addsub0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6C66",
      LOC => "SLICE_X51Y0"
    )
    port map (
      ADR0 => SEL_2_IBUF_659,
      ADR1 => BG_T(9),
      ADR2 => SEL_1_IBUF_661,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(9)
    );
  BG_Madd_T_addsub0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6A6A",
      LOC => "SLICE_X51Y0"
    )
    port map (
      ADR0 => BG_T(8),
      ADR1 => SEL_2_IBUF_659,
      ADR2 => SEL_0_IBUF_662,
      ADR3 => VCC,
      O => BG_Madd_T_addsub0000_lut(8)
    );
  BG_Madd_T_addsub0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6CC6",
      LOC => "SLICE_X51Y1"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => BG_T(11),
      ADR2 => SEL_2_IBUF_659,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(11)
    );
  BG_Madd_T_addsub0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"A66A",
      LOC => "SLICE_X51Y1"
    )
    port map (
      ADR0 => BG_T(10),
      ADR1 => SEL_1_IBUF_661,
      ADR2 => SEL_2_IBUF_659,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(10)
    );
  BG_Madd_T_addsub0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"A6AA",
      LOC => "SLICE_X51Y2"
    )
    port map (
      ADR0 => BG_T(13),
      ADR1 => SEL_2_IBUF_659,
      ADR2 => SEL_1_IBUF_661,
      ADR3 => SEL_0_IBUF_662,
      O => BG_Madd_T_addsub0000_lut(13)
    );
  BG_Madd_T_addsub0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"C69C",
      LOC => "SLICE_X51Y2"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => BG_T(12),
      ADR2 => SEL_0_IBUF_662,
      ADR3 => SEL_2_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(12)
    );
  BG_Madd_T_addsub0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X51Y3"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => BG_T(15),
      ADR2 => SEL_0_IBUF_662,
      ADR3 => SEL_2_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(15)
    );
  BUS_IN_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_0_INBUF,
      O => BUS_IN_0_IBUF_689
    );
  BUS_IN_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_1_INBUF,
      O => BUS_IN_1_IBUF_690
    );
  BUS_IN_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_2_INBUF,
      O => BUS_IN_2_IBUF_691
    );
  BUS_IN_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_3_INBUF,
      O => BUS_IN_3_IBUF_692
    );
  BUS_IN_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_4_INBUF,
      O => BUS_IN_4_IBUF_693
    );
  BUS_IN_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_5_INBUF,
      O => BUS_IN_5_IBUF_601
    );
  RX_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 658 ps
    )
    port map (
      I => RX_INBUF,
      O => RX_IBUF_670
    );
  BUS_OUT_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(7),
      O => BUS_OUT_0_OUTPUT_OFF_O1INV_1926
    );
  BUS_OUT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(0),
      O => BUS_OUT_0_O
    );
  DES_U1_Y_0 : X_FF
    generic map(
      LOC => "PAD380",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_0_OUTPUT_OFF_O1INV_1926,
      CE => VCC,
      CLK => BUS_OUT_0_OUTPUT_OTCLK1INV_1922,
      SET => GND,
      RST => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1933,
      O => DES_U1_Y(0)
    );
  BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1933
    );
  BUS_OUT_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_0_OUTPUT_OTCLK1INV_1922
    );
  BUS_IN_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_6_INBUF,
      O => BUS_IN_6_IBUF_599
    );
  BUS_OUT_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(6),
      O => BUS_OUT_1_OUTPUT_OFF_O1INV_1956
    );
  BUS_OUT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(1),
      O => BUS_OUT_1_O
    );
  DES_U1_Y_1 : X_FF
    generic map(
      LOC => "PAD371",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_1_OUTPUT_OFF_O1INV_1956,
      CE => VCC,
      CLK => BUS_OUT_1_OUTPUT_OTCLK1INV_1952,
      SET => GND,
      RST => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1963,
      O => DES_U1_Y(1)
    );
  BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1963
    );
  BUS_OUT_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_1_OUTPUT_OTCLK1INV_1952
    );
  BUS_IN_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_7_INBUF,
      O => BUS_IN_7_IBUF_605
    );
  BUS_OUT_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(5),
      O => BUS_OUT_2_OUTPUT_OFF_O1INV_1994
    );
  BUS_OUT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(2),
      O => BUS_OUT_2_O
    );
  DES_U1_Y_2 : X_FF
    generic map(
      LOC => "PAD370",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_2_OUTPUT_OFF_O1INV_1994,
      CE => VCC,
      CLK => BUS_OUT_2_OUTPUT_OTCLK1INV_1990,
      SET => GND,
      RST => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_2001,
      O => DES_U1_Y(2)
    );
  BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_2001
    );
  BUS_OUT_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_2_OUTPUT_OTCLK1INV_1990
    );
  BUS_OUT_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(4),
      O => BUS_OUT_3_OUTPUT_OFF_O1INV_2018
    );
  BUS_OUT_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(3),
      O => BUS_OUT_3_O
    );
  DES_U1_Y_3 : X_FF
    generic map(
      LOC => "PAD363",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_3_OUTPUT_OFF_O1INV_2018,
      CE => VCC,
      CLK => BUS_OUT_3_OUTPUT_OTCLK1INV_2014,
      SET => GND,
      RST => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2025,
      O => DES_U1_Y(3)
    );
  BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2025
    );
  BUS_OUT_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_3_OUTPUT_OTCLK1INV_2014
    );
  BUS_OUT_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(3),
      O => BUS_OUT_4_OUTPUT_OFF_O1INV_2050
    );
  BUS_OUT_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(4),
      O => BUS_OUT_4_O
    );
  DES_U1_Y_4 : X_FF
    generic map(
      LOC => "PAD362",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_4_OUTPUT_OFF_O1INV_2050,
      CE => VCC,
      CLK => BUS_OUT_4_OUTPUT_OTCLK1INV_2046,
      SET => GND,
      RST => BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2057,
      O => DES_U1_Y(4)
    );
  BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2057
    );
  BUS_OUT_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_4_OUTPUT_OTCLK1INV_2046
    );
  BUS_OUT_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(2),
      O => BUS_OUT_5_OUTPUT_OFF_O1INV_2074
    );
  BUS_OUT_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(5),
      O => BUS_OUT_5_O
    );
  DES_U1_Y_5 : X_FF
    generic map(
      LOC => "PAD361",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_5_OUTPUT_OFF_O1INV_2074,
      CE => VCC,
      CLK => BUS_OUT_5_OUTPUT_OTCLK1INV_2070,
      SET => GND,
      RST => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2081,
      O => DES_U1_Y(5)
    );
  BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2081
    );
  BUS_OUT_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_5_OUTPUT_OTCLK1INV_2070
    );
  BUS_OUT_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(1),
      O => BUS_OUT_6_OUTPUT_OFF_O1INV_2098
    );
  BUS_OUT_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(6),
      O => BUS_OUT_6_O
    );
  DES_U1_Y_6 : X_FF
    generic map(
      LOC => "PAD360",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_6_OUTPUT_OFF_O1INV_2098,
      CE => VCC,
      CLK => BUS_OUT_6_OUTPUT_OTCLK1INV_2094,
      SET => GND,
      RST => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2105,
      O => DES_U1_Y(6)
    );
  BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2105
    );
  BUS_OUT_6_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_6_OUTPUT_OTCLK1INV_2094
    );
  BUS_OUT_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(0),
      O => BUS_OUT_7_OUTPUT_OFF_O1INV_2122
    );
  BUS_OUT_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(7),
      O => BUS_OUT_7_O
    );
  DES_U1_Y_7 : X_FF
    generic map(
      LOC => "PAD339",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_7_OUTPUT_OFF_O1INV_2122,
      CE => VCC,
      CLK => BUS_OUT_7_OUTPUT_OTCLK1INV_2118,
      SET => GND,
      RST => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2129,
      O => DES_U1_Y(7)
    );
  BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2129
    );
  BUS_OUT_7_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_7_OUTPUT_OTCLK1INV_2118
    );
  CLK_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_IBUF1
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_594
    );
  SER_RD_0_not00001 : X_LUT4
    generic map(
      INIT => X"FBFF",
      LOC => "SLICE_X49Y2"
    )
    port map (
      ADR0 => SER_COUNT_TY(2),
      ADR1 => SER_COUNT_TY(1),
      ADR2 => SER_COUNT_TY(0),
      ADR3 => SER_COUNT_TY(3),
      O => SER_RD_0_not00001_2172
    );
  BG_CLK_SEL_or00001 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X48Y1"
    )
    port map (
      ADR0 => SEL_1_IBUF_661,
      ADR1 => CLK_IBUF1,
      ADR2 => SEL_0_IBUF_662,
      ADR3 => RESET_IBUF_594,
      O => BG_CLK_SEL_or00001_2198
    );
  RESET_IBUF_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X48Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RESET_IBUF_594,
      O => RESET_IBUF_rt_2208
    );
  BG_CLK_SEL_cmp_eq000042 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X50Y3"
    )
    port map (
      ADR0 => BG_T(8),
      ADR1 => BG_T(11),
      ADR2 => BG_T(9),
      ADR3 => BG_T(10),
      O => BG_CLK_SEL_cmp_eq000042_pack_1
    );
  BG_T_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y3"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_610,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_T_addsub0000(19),
      O => BG_T_mux0001(0)
    );
  BG_T_19 : X_FF
    generic map(
      LOC => "SLICE_X50Y3",
      INIT => '0'
    )
    port map (
      I => BG_T_19_DXMUX_2240,
      CE => BG_T_19_CEINV_2224,
      CLK => BG_T_19_CLKINV_2225,
      SET => GND,
      RST => GND,
      O => BG_T(19)
    );
  BG_CLK_SEL_cmp_eq000019 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X50Y5"
    )
    port map (
      ADR0 => BG_T(15),
      ADR1 => BG_T(13),
      ADR2 => BG_T(14),
      ADR3 => BG_T(12),
      O => BG_CLK_SEL_cmp_eq000019_pack_1
    );
  BG_T_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y5"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_611,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq000019_610,
      ADR3 => BG_T_addsub0000(18),
      O => BG_T_mux0001(1)
    );
  BG_T_18 : X_FF
    generic map(
      LOC => "SLICE_X50Y5",
      INIT => '0'
    )
    port map (
      I => BG_T_18_DXMUX_2273,
      CE => BG_T_18_CEINV_2257,
      CLK => BG_T_18_CLKINV_2258,
      SET => GND,
      RST => GND,
      O => BG_T(18)
    );
  BG_CLK_SEL_cmp_eq00007 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X48Y5"
    )
    port map (
      ADR0 => BG_T(17),
      ADR1 => BG_T(19),
      ADR2 => BG_T(18),
      ADR3 => BG_T(16),
      O => BG_CLK_SEL_cmp_eq00007_pack_1
    );
  BG_CLK_SEL_cmp_eq000044 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X48Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BG_CLK_SEL_cmp_eq000042_609,
      ADR2 => BG_CLK_SEL_cmp_eq00007_611,
      ADR3 => BG_CLK_SEL_cmp_eq000019_610,
      O => BG_CLK_SEL_cmp_eq0000
    );
  SER_COUNT_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3CCC",
      LOC => "SLICE_X48Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_COUNT_TY(2),
      ADR2 => SER_COUNT_TY(1),
      ADR3 => SER_COUNT_TY(0),
      O => SER_Result(2)
    );
  SER_COUNT_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y2",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_3_DYMUX_2323,
      CE => VCC,
      CLK => SER_COUNT_TY_3_CLKINV_2313,
      SET => GND,
      RST => SER_COUNT_TY_3_SRINV_2314,
      O => SER_COUNT_TY(2)
    );
  SER_COUNT_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X48Y2"
    )
    port map (
      ADR0 => SER_COUNT_TY(3),
      ADR1 => SER_COUNT_TY(0),
      ADR2 => SER_COUNT_TY(1),
      ADR3 => SER_COUNT_TY(2),
      O => SER_Result(3)
    );
  SER_COUNT_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X48Y2",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_3_DXMUX_2337,
      CE => VCC,
      CLK => SER_COUNT_TY_3_CLKINV_2313,
      SET => GND,
      RST => SER_COUNT_TY_3_SRINV_2314,
      O => SER_COUNT_TY(3)
    );
  DES_U3_Y11 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X43Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => DES_U3_Y1_639,
      ADR3 => RESET_IBUF_shift4_647,
      O => DES_U3_Y11_2357
    );
  DES_U3_Y : X_FF
    generic map(
      LOC => "SLICE_X43Y0",
      INIT => '0'
    )
    port map (
      I => DES_U3_Y_DYMUX_2360,
      CE => VCC,
      CLK => DES_U3_Y_CLKINV_2349,
      SET => GND,
      RST => DES_U3_Y_FFY_RSTAND_2365,
      O => DES_U3_Y_640
    );
  DES_U3_Y_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_594,
      O => DES_U3_Y_FFY_RSTAND_2365
    );
  SER_REG_PS_Z_0_mux00011 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X46Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SER_T_LOAD_598,
      ADR3 => SER_REG_PS_Z(1),
      O => SER_REG_PS_Z_0_mux0001
    );
  SER_REG_PS_Z_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_1_DYMUX_2387,
      CE => VCC,
      CLK => SER_REG_PS_Z_1_CLKINV_2376,
      SET => SER_REG_PS_Z_1_SRINV_2377,
      RST => GND,
      O => SER_REG_PS_Z(0)
    );
  SER_REG_PS_Z_1_mux00011 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X46Y0"
    )
    port map (
      ADR0 => BUS_IN_0_IBUF_689,
      ADR1 => SER_REG_PS_Z(2),
      ADR2 => SER_T_LOAD_598,
      ADR3 => VCC,
      O => SER_REG_PS_Z_1_mux0001
    );
  SER_REG_PS_Z_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_1_DXMUX_2401,
      CE => VCC,
      CLK => SER_REG_PS_Z_1_CLKINV_2376,
      SET => SER_REG_PS_Z_1_SRINV_2377,
      RST => GND,
      O => SER_REG_PS_Z(1)
    );
  SER_REG_PS_Z_2_mux00011 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X45Y1"
    )
    port map (
      ADR0 => SER_REG_PS_Z(3),
      ADR1 => BUS_IN_1_IBUF_690,
      ADR2 => SER_T_LOAD_598,
      ADR3 => VCC,
      O => SER_REG_PS_Z_2_mux0001
    );
  SER_REG_PS_Z_2 : X_FF
    generic map(
      LOC => "SLICE_X45Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_3_DYMUX_2427,
      CE => VCC,
      CLK => SER_REG_PS_Z_3_CLKINV_2417,
      SET => SER_REG_PS_Z_3_SRINV_2418,
      RST => GND,
      O => SER_REG_PS_Z(2)
    );
  SER_REG_PS_Z_3_mux00011 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X45Y1"
    )
    port map (
      ADR0 => BUS_IN_2_IBUF_691,
      ADR1 => SER_REG_PS_Z(4),
      ADR2 => VCC,
      ADR3 => SER_T_LOAD_598,
      O => SER_REG_PS_Z_3_mux0001
    );
  SER_REG_PS_Z_3 : X_FF
    generic map(
      LOC => "SLICE_X45Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_3_DXMUX_2441,
      CE => VCC,
      CLK => SER_REG_PS_Z_3_CLKINV_2417,
      SET => SER_REG_PS_Z_3_SRINV_2418,
      RST => GND,
      O => SER_REG_PS_Z(3)
    );
  SER_REG_PS_Z_4_mux00011 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => SER_T_LOAD_598,
      ADR1 => SER_REG_PS_Z(5),
      ADR2 => VCC,
      ADR3 => BUS_IN_3_IBUF_692,
      O => SER_REG_PS_Z_4_mux0001
    );
  SER_REG_PS_Z_4 : X_FF
    generic map(
      LOC => "SLICE_X44Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_5_DYMUX_2467,
      CE => VCC,
      CLK => SER_REG_PS_Z_5_CLKINV_2457,
      SET => SER_REG_PS_Z_5_SRINV_2458,
      RST => GND,
      O => SER_REG_PS_Z(4)
    );
  SER_REG_PS_Z_5_mux00011 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => SER_T_LOAD_598,
      ADR1 => BUS_IN_4_IBUF_693,
      ADR2 => VCC,
      ADR3 => SER_REG_PS_Z(6),
      O => SER_REG_PS_Z_5_mux0001
    );
  SER_REG_PS_Z_5 : X_FF
    generic map(
      LOC => "SLICE_X44Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_5_DXMUX_2481,
      CE => VCC,
      CLK => SER_REG_PS_Z_5_CLKINV_2457,
      SET => SER_REG_PS_Z_5_SRINV_2458,
      RST => GND,
      O => SER_REG_PS_Z(5)
    );
  DES_U3_Mshreg_Y_SRL16E_CE_WSGAND : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Y1_SRINV_1059,
      O => DES_U3_Y1_WSG
    );
  CLK_R_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_589,
      O => CLK_R_O
    );
  CLK_T_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => CLK_T_O
    );
  TX_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 658 ps
    )
    port map (
      I => TX_OBUF_816,
      O => TX_O
    );
  TX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_666,
      O => TX_READY_O
    );
  RTS_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD387",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUFFER_FULL_INBUF,
      O => RTS_O
    );
  SER_RD_0_not0000_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X49Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SER_RD_0_not0000_F
    );
  NlwBlock_UART_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_DES_RD_1_CLK : X_INV
    port map (
      I => RX_READY_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_DES_RD_1_CLK
    );
  NlwBlock_UART_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_DES_RD_CLK : X_INV
    port map (
      I => DES_RD_CLKINVNOT,
      O => NlwInverterSignal_DES_RD_CLK
    );
  NlwInverterBlock_SER_RD_CLK : X_INV
    port map (
      I => SER_RD_CLKINVNOT,
      O => NlwInverterSignal_SER_RD_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

