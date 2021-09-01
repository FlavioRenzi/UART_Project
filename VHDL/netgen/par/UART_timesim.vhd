--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UART_timesim.vhd
-- /___/   /\     Timestamp: Wed Sep 01 22:23:01 2021
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
  signal BG_CLK_SEL_587 : STD_LOGIC; 
  signal DES_T_START_0 : STD_LOGIC; 
  signal RESET_IBUF_592 : STD_LOGIC; 
  signal SER_T_LOAD_596 : STD_LOGIC; 
  signal BUS_IN_6_IBUF_597 : STD_LOGIC; 
  signal BUS_IN_5_IBUF_599 : STD_LOGIC; 
  signal BUS_IN_7_IBUF_603 : STD_LOGIC; 
  signal BG_T_and0001_0 : STD_LOGIC; 
  signal CLK_IBUF_606 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000042_607 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000019_608 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq00007_609 : STD_LOGIC; 
  signal DES_U3_Y1_637 : STD_LOGIC; 
  signal DES_U3_Y_638 : STD_LOGIC; 
  signal DES_RD_639 : STD_LOGIC; 
  signal RESET_IBUF_shift1_640 : STD_LOGIC; 
  signal RESET_IBUF_shift2_641 : STD_LOGIC; 
  signal RESET_IBUF_shift3_644 : STD_LOGIC; 
  signal RESET_IBUF_shift4_645 : STD_LOGIC; 
  signal DES_RD_0_not0000_0 : STD_LOGIC; 
  signal DES_RD_or0000_0 : STD_LOGIC; 
  signal SER_R0_INPUT_650 : STD_LOGIC; 
  signal SER_R1_INPUT_651 : STD_LOGIC; 
  signal SER_T_RESET_0 : STD_LOGIC; 
  signal SEL_2_IBUF_656 : STD_LOGIC; 
  signal CLK_IBUF1 : STD_LOGIC; 
  signal SEL_1_IBUF_658 : STD_LOGIC; 
  signal SEL_0_IBUF_659 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal SER_RD_663 : STD_LOGIC; 
  signal DES_N01 : STD_LOGIC; 
  signal DES_T_END_0 : STD_LOGIC; 
  signal RX_IBUF_668 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_9_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_11_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_13_Q : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_15_Q : STD_LOGIC; 
  signal BUS_IN_0_IBUF_687 : STD_LOGIC; 
  signal BUS_IN_1_IBUF_688 : STD_LOGIC; 
  signal BUS_IN_2_IBUF_689 : STD_LOGIC; 
  signal BUS_IN_3_IBUF_690 : STD_LOGIC; 
  signal BUS_IN_4_IBUF_691 : STD_LOGIC; 
  signal DES_U4_TY_2_DYMUX_713 : STD_LOGIC; 
  signal DES_U4_TY_2_CLKINV_703 : STD_LOGIC; 
  signal BG_U1_TY_2_DYMUX_736 : STD_LOGIC; 
  signal BG_U1_TY_2_CLKINV_726 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_DXMUX_777 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_DYMUX_763 : STD_LOGIC; 
  signal SER_REG_PS_Z_6_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_SRINV_754 : STD_LOGIC; 
  signal SER_REG_PS_Z_7_CLKINV_753 : STD_LOGIC; 
  signal TX_OBUF_814 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_DYMUX_802 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_CLKINV_791 : STD_LOGIC; 
  signal BG_T_11_DXMUX_850 : STD_LOGIC; 
  signal BG_T_11_DYMUX_838 : STD_LOGIC; 
  signal BG_T_11_CLKINV_830 : STD_LOGIC; 
  signal BG_T_11_CEINV_829 : STD_LOGIC; 
  signal BG_T_9_DXMUX_888 : STD_LOGIC; 
  signal BG_T_9_DYMUX_876 : STD_LOGIC; 
  signal BG_T_9_CLKINV_868 : STD_LOGIC; 
  signal BG_T_9_CEINV_867 : STD_LOGIC; 
  signal BG_T_13_DXMUX_926 : STD_LOGIC; 
  signal BG_T_13_DYMUX_914 : STD_LOGIC; 
  signal BG_T_13_CLKINV_906 : STD_LOGIC; 
  signal BG_T_13_CEINV_905 : STD_LOGIC; 
  signal BG_T_15_DXMUX_964 : STD_LOGIC; 
  signal BG_T_15_DYMUX_952 : STD_LOGIC; 
  signal BG_T_15_CLKINV_944 : STD_LOGIC; 
  signal BG_T_15_CEINV_943 : STD_LOGIC; 
  signal BG_T_17_DXMUX_1002 : STD_LOGIC; 
  signal BG_T_17_DYMUX_990 : STD_LOGIC; 
  signal BG_T_17_CLKINV_982 : STD_LOGIC; 
  signal BG_T_17_CEINV_981 : STD_LOGIC; 
  signal DES_U5_TY_3_DXMUX_1042 : STD_LOGIC; 
  signal DES_U5_TY_3_DYMUX_1028 : STD_LOGIC; 
  signal DES_Result_2_1 : STD_LOGIC; 
  signal DES_U5_TY_3_SRINV_1019 : STD_LOGIC; 
  signal DES_U5_TY_3_CLKINVNOT : STD_LOGIC; 
  signal DES_U3_Y1_DYMUX_1074 : STD_LOGIC; 
  signal DES_U3_Mshreg_Y : STD_LOGIC; 
  signal DES_U3_Y1_DIG_MUX_1063 : STD_LOGIC; 
  signal DES_U3_Y1_CLKINV_1061 : STD_LOGIC; 
  signal DES_U3_Y1_WSG : STD_LOGIC; 
  signal DES_U3_Y1_SRINV_1057 : STD_LOGIC; 
  signal DES_T_START : STD_LOGIC; 
  signal RESET_IBUF_shift2_DXMUX_1107 : STD_LOGIC; 
  signal RESET_IBUF_shift2_DYMUX_1099 : STD_LOGIC; 
  signal RESET_IBUF_shift2_BYINV_1098 : STD_LOGIC; 
  signal RESET_IBUF_shift2_SRINV_1097 : STD_LOGIC; 
  signal RESET_IBUF_shift2_CLKINV_1096 : STD_LOGIC; 
  signal SER_T_LOAD_DYMUX_1121 : STD_LOGIC; 
  signal SER_T_LOAD_SRINVNOT : STD_LOGIC; 
  signal SER_T_LOAD_CLKINV_1118 : STD_LOGIC; 
  signal RESET_IBUF_shift4_DXMUX_1143 : STD_LOGIC; 
  signal RESET_IBUF_shift4_DYMUX_1135 : STD_LOGIC; 
  signal RESET_IBUF_shift4_SRINV_1133 : STD_LOGIC; 
  signal RESET_IBUF_shift4_CLKINV_1132 : STD_LOGIC; 
  signal SER_COUNT_TY_0_DXMUX_1176 : STD_LOGIC; 
  signal SER_COUNT_TY_0_DYMUX_1168 : STD_LOGIC; 
  signal SER_COUNT_TY_0_SRINV_1158 : STD_LOGIC; 
  signal SER_COUNT_TY_0_CLKINV_1157 : STD_LOGIC; 
  signal DES_RD_DYMUX_1192 : STD_LOGIC; 
  signal DES_RD_BYINV_1191 : STD_LOGIC; 
  signal DES_RD_CLKINVNOT : STD_LOGIC; 
  signal DES_RD_CEINV_1188 : STD_LOGIC; 
  signal SER_R0_INPUT_DYMUX_1204 : STD_LOGIC; 
  signal SER_R0_INPUT_CLKINV_1202 : STD_LOGIC; 
  signal DES_U5_TY_1_DXMUX_1246 : STD_LOGIC; 
  signal DES_Result_1_1 : STD_LOGIC; 
  signal DES_U5_TY_1_DYMUX_1230 : STD_LOGIC; 
  signal DES_RD_0_not0000 : STD_LOGIC; 
  signal DES_U5_TY_1_SRINV_1221 : STD_LOGIC; 
  signal DES_U5_TY_1_CLKINVNOT : STD_LOGIC; 
  signal SER_T_RESET : STD_LOGIC; 
  signal BG_CLK_SEL_DXMUX_1277 : STD_LOGIC; 
  signal BG_CLK_SEL_CLKINV_1272 : STD_LOGIC; 
  signal BG_CLK_SEL_CEINV_1271 : STD_LOGIC; 
  signal DES_U4_TY_0_DXMUX_1313 : STD_LOGIC; 
  signal DES_U4_TY_0_DYMUX_1305 : STD_LOGIC; 
  signal DES_U4_TY_0_SRINV_1295 : STD_LOGIC; 
  signal DES_U4_TY_0_CLKINV_1294 : STD_LOGIC; 
  signal BG_U1_TY_0_DXMUX_1346 : STD_LOGIC; 
  signal BG_U1_TY_0_DYMUX_1338 : STD_LOGIC; 
  signal BG_U1_TY_0_SRINV_1328 : STD_LOGIC; 
  signal BG_U1_TY_0_CLKINV_1327 : STD_LOGIC; 
  signal BG_CLK_SEL_and0000 : STD_LOGIC; 
  signal BG_T_and0001 : STD_LOGIC; 
  signal SER_RD_or0000_1398 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal DES_T_END : STD_LOGIC; 
  signal DES_N01_pack_1 : STD_LOGIC; 
  signal DES_RD_or0000 : STD_LOGIC; 
  signal DES_U2_T_1_DXMUX_1454 : STD_LOGIC; 
  signal DES_U2_T_1_DYMUX_1446 : STD_LOGIC; 
  signal DES_U2_T_1_SRINV_1444 : STD_LOGIC; 
  signal DES_U2_T_1_CLKINV_1443 : STD_LOGIC; 
  signal DES_U2_T_3_DXMUX_1478 : STD_LOGIC; 
  signal DES_U2_T_3_DYMUX_1470 : STD_LOGIC; 
  signal DES_U2_T_3_SRINV_1468 : STD_LOGIC; 
  signal DES_U2_T_3_CLKINV_1467 : STD_LOGIC; 
  signal DES_U3_not0000 : STD_LOGIC; 
  signal DES_U2_T_5_DXMUX_1514 : STD_LOGIC; 
  signal DES_U2_T_5_DYMUX_1506 : STD_LOGIC; 
  signal DES_U2_T_5_SRINV_1504 : STD_LOGIC; 
  signal DES_U2_T_5_CLKINV_1503 : STD_LOGIC; 
  signal SER_R1_INPUT_DYMUX_1526 : STD_LOGIC; 
  signal SER_R1_INPUT_CLKINV_1524 : STD_LOGIC; 
  signal SER_RD_DYMUX_1539 : STD_LOGIC; 
  signal SER_RD_BYINV_1538 : STD_LOGIC; 
  signal SER_RD_CLKINVNOT : STD_LOGIC; 
  signal SER_RD_CEINV_1535 : STD_LOGIC; 
  signal DES_U2_T_7_DXMUX_1563 : STD_LOGIC; 
  signal DES_U2_T_7_DYMUX_1555 : STD_LOGIC; 
  signal DES_U2_T_7_SRINV_1553 : STD_LOGIC; 
  signal DES_U2_T_7_CLKINV_1552 : STD_LOGIC; 
  signal BG_T_addsub0000_8_XORF_1604 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYINIT_1603 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CY0F_1602 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYSELF_1595 : STD_LOGIC; 
  signal BG_T_addsub0000_8_BXINV_1593 : STD_LOGIC; 
  signal BG_T_addsub0000_8_XORG_1591 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYMUXG_1590 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_8_Q : STD_LOGIC; 
  signal BG_T_addsub0000_8_CY0G_1588 : STD_LOGIC; 
  signal BG_T_addsub0000_8_CYSELG_1582 : STD_LOGIC; 
  signal BG_T_addsub0000_10_XORF_1643 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYINIT_1642 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CY0F_1641 : STD_LOGIC; 
  signal BG_T_addsub0000_10_XORG_1633 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_10_Q : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYSELF_1631 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXFAST_1630 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYAND_1629 : STD_LOGIC; 
  signal BG_T_addsub0000_10_FASTCARRY_1628 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXG2_1627 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYMUXF2_1626 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CY0G_1625 : STD_LOGIC; 
  signal BG_T_addsub0000_10_CYSELG_1619 : STD_LOGIC; 
  signal BG_T_addsub0000_12_XORF_1682 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYINIT_1681 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CY0F_1680 : STD_LOGIC; 
  signal BG_T_addsub0000_12_XORG_1672 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_12_Q : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYSELF_1670 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXFAST_1669 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYAND_1668 : STD_LOGIC; 
  signal BG_T_addsub0000_12_FASTCARRY_1667 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXG2_1666 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYMUXF2_1665 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CY0G_1664 : STD_LOGIC; 
  signal BG_T_addsub0000_12_CYSELG_1658 : STD_LOGIC; 
  signal BG_T_addsub0000_14_XORF_1721 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYINIT_1720 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CY0F_1719 : STD_LOGIC; 
  signal BG_T_addsub0000_14_XORG_1711 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_14_Q : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYSELF_1709 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXFAST_1708 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYAND_1707 : STD_LOGIC; 
  signal BG_T_addsub0000_14_FASTCARRY_1706 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXG2_1705 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYMUXF2_1704 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CY0G_1703 : STD_LOGIC; 
  signal BG_T_addsub0000_14_CYSELG_1697 : STD_LOGIC; 
  signal BG_T_addsub0000_16_XORF_1760 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYINIT_1759 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CY0F_1758 : STD_LOGIC; 
  signal BG_T_addsub0000_16_XORG_1750 : STD_LOGIC; 
  signal BG_Madd_T_addsub0000_cy_16_Q : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYSELF_1748 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXFAST_1747 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYAND_1746 : STD_LOGIC; 
  signal BG_T_addsub0000_16_FASTCARRY_1745 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXG2_1744 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYMUXF2_1743 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CY0G_1742 : STD_LOGIC; 
  signal BG_T_addsub0000_16_CYSELG_1736 : STD_LOGIC; 
  signal BG_T_addsub0000_18_XORF_1791 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CYINIT_1790 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CY0F_1789 : STD_LOGIC; 
  signal BG_T_addsub0000_18_CYSELF_1783 : STD_LOGIC; 
  signal BG_T_addsub0000_18_XORG_1780 : STD_LOGIC; 
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
  signal SER_RD_0_not0000_F5MUX_2183 : STD_LOGIC; 
  signal SER_RD_0_not0000_F : STD_LOGIC; 
  signal SER_RD_0_not0000_BXINV_2172 : STD_LOGIC; 
  signal SER_RD_0_not00001_2170 : STD_LOGIC; 
  signal BG_CLK_SEL_or0000_F5MUX_2208 : STD_LOGIC; 
  signal RESET_IBUF_rt_2206 : STD_LOGIC; 
  signal BG_CLK_SEL_or0000_BXINV_2198 : STD_LOGIC; 
  signal BG_CLK_SEL_or00001_2196 : STD_LOGIC; 
  signal BG_T_19_DXMUX_2238 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000042_pack_1 : STD_LOGIC; 
  signal BG_T_19_CLKINV_2223 : STD_LOGIC; 
  signal BG_T_19_CEINV_2222 : STD_LOGIC; 
  signal BG_T_18_DXMUX_2271 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq000019_pack_1 : STD_LOGIC; 
  signal BG_T_18_CLKINV_2256 : STD_LOGIC; 
  signal BG_T_18_CEINV_2255 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq0000 : STD_LOGIC; 
  signal BG_CLK_SEL_cmp_eq00007_pack_1 : STD_LOGIC; 
  signal SER_COUNT_TY_3_DXMUX_2335 : STD_LOGIC; 
  signal SER_COUNT_TY_3_DYMUX_2321 : STD_LOGIC; 
  signal SER_COUNT_TY_3_SRINV_2312 : STD_LOGIC; 
  signal SER_COUNT_TY_3_CLKINV_2311 : STD_LOGIC; 
  signal DES_U3_Y_DYMUX_2358 : STD_LOGIC; 
  signal DES_U3_Y11_2355 : STD_LOGIC; 
  signal DES_U3_Y_CLKINV_2347 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_DXMUX_2399 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_DYMUX_2385 : STD_LOGIC; 
  signal SER_REG_PS_Z_0_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_SRINV_2375 : STD_LOGIC; 
  signal SER_REG_PS_Z_1_CLKINV_2374 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_DXMUX_2439 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_DYMUX_2425 : STD_LOGIC; 
  signal SER_REG_PS_Z_2_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_SRINV_2416 : STD_LOGIC; 
  signal SER_REG_PS_Z_3_CLKINV_2415 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_DXMUX_2479 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_DYMUX_2465 : STD_LOGIC; 
  signal SER_REG_PS_Z_4_mux0001 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_SRINV_2456 : STD_LOGIC; 
  signal SER_REG_PS_Z_5_CLKINV_2455 : STD_LOGIC; 
  signal DES_RD_1_1818 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OSR_USED_1816 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OCEINV_1813 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_O1INV_1811 : STD_LOGIC; 
  signal DES_U4_TY_2_FFY_RSTAND_718 : STD_LOGIC; 
  signal BG_U1_TY_2_FFY_RSTAND_741 : STD_LOGIC; 
  signal SER_REG_PS_Z_8_FFY_SET : STD_LOGIC; 
  signal DES_RD_FFY_SET : STD_LOGIC; 
  signal BG_CLK_SEL_FFX_SET : STD_LOGIC; 
  signal BG_CLK_SEL_FFX_RSTAND_1284 : STD_LOGIC; 
  signal SER_RD_FFY_SET : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_O1INV_1924 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1931 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OTCLK1INV_1920 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_O1INV_1954 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1961 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OTCLK1INV_1950 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_O1INV_1992 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_1999 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OTCLK1INV_1988 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_O1INV_2016 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2023 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OTCLK1INV_2012 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_O1INV_2048 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2055 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OTCLK1INV_2044 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_O1INV_2072 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2079 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OTCLK1INV_2068 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_O1INV_2096 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2103 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OTCLK1INV_2092 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_O1INV_2120 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2127 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OTCLK1INV_2116 : STD_LOGIC; 
  signal DES_U3_Y_FFY_RSTAND_2363 : STD_LOGIC; 
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
      O => DES_U4_TY_2_DYMUX_713
    );
  DES_U4_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => DES_U4_TY_2_CLKINV_703
    );
  BG_U1_TY_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Result(2),
      O => BG_U1_TY_2_DYMUX_736
    );
  BG_U1_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => BG_U1_TY_2_CLKINV_726
    );
  SER_REG_PS_Z_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_7_mux0001,
      O => SER_REG_PS_Z_7_DXMUX_777
    );
  SER_REG_PS_Z_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_6_mux0001,
      O => SER_REG_PS_Z_7_DYMUX_763
    );
  SER_REG_PS_Z_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => SER_REG_PS_Z_7_SRINV_754
    );
  SER_REG_PS_Z_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_7_CLKINV_753
    );
  SER_REG_PS_Z_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_8_mux0001,
      O => SER_REG_PS_Z_8_DYMUX_802
    );
  SER_REG_PS_Z_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_8_CLKINV_791
    );
  BG_T_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X49Y0"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_607,
      ADR1 => BG_T_addsub0000(11),
      ADR2 => BG_CLK_SEL_cmp_eq000019_608,
      ADR3 => BG_CLK_SEL_cmp_eq00007_609,
      O => BG_T_mux0001(8)
    );
  BG_T_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(8),
      O => BG_T_11_DXMUX_850
    );
  BG_T_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(9),
      O => BG_T_11_DYMUX_838
    );
  BG_T_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_11_CLKINV_830
    );
  BG_T_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_11_CEINV_829
    );
  BG_T_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X49Y0"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_608,
      ADR1 => BG_CLK_SEL_cmp_eq000042_607,
      ADR2 => BG_T_addsub0000(10),
      ADR3 => BG_CLK_SEL_cmp_eq00007_609,
      O => BG_T_mux0001(9)
    );
  BG_T_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(10),
      O => BG_T_9_DXMUX_888
    );
  BG_T_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(11),
      O => BG_T_9_DYMUX_876
    );
  BG_T_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_9_CLKINV_868
    );
  BG_T_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_9_CEINV_867
    );
  BG_T_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(6),
      O => BG_T_13_DXMUX_926
    );
  BG_T_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(7),
      O => BG_T_13_DYMUX_914
    );
  BG_T_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_13_CLKINV_906
    );
  BG_T_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_13_CEINV_905
    );
  BG_T_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(4),
      O => BG_T_15_DXMUX_964
    );
  BG_T_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(5),
      O => BG_T_15_DYMUX_952
    );
  BG_T_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_15_CLKINV_944
    );
  BG_T_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_15_CEINV_943
    );
  BG_T_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(2),
      O => BG_T_17_DXMUX_1002
    );
  BG_T_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(3),
      O => BG_T_17_DYMUX_990
    );
  BG_T_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_17_CLKINV_982
    );
  BG_T_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_17_CEINV_981
    );
  DES_U5_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result(3),
      O => DES_U5_TY_3_DXMUX_1042
    );
  DES_U5_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result_2_1,
      O => DES_U5_TY_3_DYMUX_1028
    );
  DES_U5_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U5_TY_3_SRINV_1019
    );
  DES_U5_TY_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X34Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U5_TY_3_CLKINVNOT
    );
  DES_U3_Y1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Mshreg_Y,
      O => DES_U3_Y1_DYMUX_1074
    );
  DES_U3_Y1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_not0000,
      O => DES_U3_Y1_DIG_MUX_1063
    );
  DES_U3_Y1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => '1',
      O => DES_U3_Y1_SRINV_1057
    );
  DES_U3_Y1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => DES_U3_Y1_CLKINV_1061
    );
  DES_T_START_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START,
      O => DES_T_START_0
    );
  RESET_IBUF_shift2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift1_640,
      O => RESET_IBUF_shift2_DXMUX_1107
    );
  RESET_IBUF_shift2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift2_BYINV_1098,
      O => RESET_IBUF_shift2_DYMUX_1099
    );
  RESET_IBUF_shift2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => '1',
      O => RESET_IBUF_shift2_BYINV_1098
    );
  RESET_IBUF_shift2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => RESET_IBUF_shift2_SRINV_1097
    );
  RESET_IBUF_shift2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => RESET_IBUF_shift2_CLKINV_1096
    );
  SER_T_LOAD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CTS_INBUF,
      O => SER_T_LOAD_DYMUX_1121
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
      O => SER_T_LOAD_CLKINV_1118
    );
  RESET_IBUF_shift4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift3_644,
      O => RESET_IBUF_shift4_DXMUX_1143
    );
  RESET_IBUF_shift4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_shift2_641,
      O => RESET_IBUF_shift4_DYMUX_1135
    );
  RESET_IBUF_shift4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => RESET_IBUF_shift4_SRINV_1133
    );
  RESET_IBUF_shift4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => RESET_IBUF_shift4_CLKINV_1132
    );
  SER_COUNT_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_COUNT_TY(0),
      O => SER_COUNT_TY_0_DXMUX_1176
    );
  SER_COUNT_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(1),
      O => SER_COUNT_TY_0_DYMUX_1168
    );
  SER_COUNT_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_596,
      O => SER_COUNT_TY_0_SRINV_1158
    );
  SER_COUNT_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_COUNT_TY_0_CLKINV_1157
    );
  DES_RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_BYINV_1191,
      O => DES_RD_DYMUX_1192
    );
  DES_RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => DES_RD_BYINV_1191
    );
  DES_RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_RD_CLKINVNOT
    );
  DES_RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000_0,
      O => DES_RD_CEINV_1188
    );
  SER_R0_INPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_596,
      O => SER_R0_INPUT_DYMUX_1204
    );
  SER_R0_INPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_R0_INPUT_CLKINV_1202
    );
  DES_U5_TY_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result_1_1,
      O => DES_U5_TY_1_DXMUX_1246
    );
  DES_U5_TY_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X35Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U5_TY(0),
      O => DES_U5_TY_1_DYMUX_1230
    );
  DES_U5_TY_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000,
      O => DES_RD_0_not0000_0
    );
  DES_U5_TY_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U5_TY_1_SRINV_1221
    );
  DES_U5_TY_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X35Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U5_TY_1_CLKINVNOT
    );
  SER_T_RESET_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_RESET,
      O => SER_T_RESET_0
    );
  BG_CLK_SEL_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => BG_CLK_SEL_DXMUX_1277
    );
  BG_CLK_SEL_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_CLK_SEL_CLKINV_1272
    );
  BG_CLK_SEL_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq0000,
      O => BG_CLK_SEL_CEINV_1271
    );
  DES_U4_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(0),
      O => DES_U4_TY_0_DXMUX_1313
    );
  DES_U4_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_Result(1),
      O => DES_U4_TY_0_DYMUX_1305
    );
  DES_U4_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U4_TY_0_SRINV_1295
    );
  DES_U4_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => DES_U4_TY_0_CLKINV_1294
    );
  BG_U1_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(0),
      O => BG_U1_TY_0_DXMUX_1346
    );
  BG_U1_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Result(1),
      O => BG_U1_TY_0_DYMUX_1338
    );
  BG_U1_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BG_U1_TY_0_SRINV_1328
    );
  BG_U1_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => BG_U1_TY_0_CLKINV_1327
    );
  BG_CLK_SEL_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001,
      O => BG_T_and0001_0
    );
  SER_RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  DES_T_END_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END,
      O => DES_T_END_0
    );
  DES_T_END_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_N01_pack_1,
      O => DES_N01
    );
  DES_RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000,
      O => DES_RD_or0000_0
    );
  DES_U2_T_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(0),
      O => DES_U2_T_1_DXMUX_1454
    );
  DES_U2_T_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RX_IBUF_668,
      O => DES_U2_T_1_DYMUX_1446
    );
  DES_U2_T_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => DES_U2_T_1_SRINV_1444
    );
  DES_U2_T_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_1_CLKINV_1443
    );
  DES_U2_T_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(2),
      O => DES_U2_T_3_DXMUX_1478
    );
  DES_U2_T_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(1),
      O => DES_U2_T_3_DYMUX_1470
    );
  DES_U2_T_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => DES_U2_T_3_SRINV_1468
    );
  DES_U2_T_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_3_CLKINV_1467
    );
  DES_U2_T_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(4),
      O => DES_U2_T_5_DXMUX_1514
    );
  DES_U2_T_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(3),
      O => DES_U2_T_5_DYMUX_1506
    );
  DES_U2_T_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => DES_U2_T_5_SRINV_1504
    );
  DES_U2_T_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_5_CLKINV_1503
    );
  SER_R1_INPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_R0_INPUT_650,
      O => SER_R1_INPUT_DYMUX_1526
    );
  SER_R1_INPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_R1_INPUT_CLKINV_1524
    );
  SER_RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_BYINV_1538,
      O => SER_RD_DYMUX_1539
    );
  SER_RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => SER_RD_BYINV_1538
    );
  SER_RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X52Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_RESET_0,
      O => SER_RD_CLKINVNOT
    );
  SER_RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_0_not0000_F5MUX_2183,
      O => SER_RD_CEINV_1535
    );
  DES_U2_T_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(6),
      O => DES_U2_T_7_DXMUX_1563
    );
  DES_U2_T_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(5),
      O => DES_U2_T_7_DYMUX_1555
    );
  DES_U2_T_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => DES_U2_T_7_SRINV_1553
    );
  DES_U2_T_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U4_TY(2),
      O => DES_U2_T_7_CLKINV_1552
    );
  BG_T_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_XORF_1604,
      O => BG_T_addsub0000(8)
    );
  BG_T_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y0"
    )
    port map (
      I0 => BG_T_addsub0000_8_CYINIT_1603,
      I1 => BG_Madd_T_addsub0000_lut(8),
      O => BG_T_addsub0000_8_XORF_1604
    );
  BG_T_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y0"
    )
    port map (
      IA => BG_T_addsub0000_8_CY0F_1602,
      IB => BG_T_addsub0000_8_CYINIT_1603,
      SEL => BG_T_addsub0000_8_CYSELF_1595,
      O => BG_Madd_T_addsub0000_cy_8_Q
    );
  BG_T_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_BXINV_1593,
      O => BG_T_addsub0000_8_CYINIT_1603
    );
  BG_T_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(8),
      O => BG_T_addsub0000_8_CY0F_1602
    );
  BG_T_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(8),
      O => BG_T_addsub0000_8_CYSELF_1595
    );
  BG_T_addsub0000_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => BG_T_addsub0000_8_BXINV_1593
    );
  BG_T_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_XORG_1591,
      O => BG_T_addsub0000(9)
    );
  BG_T_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y0"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_8_Q,
      I1 => BG_Madd_T_addsub0000_lut(9),
      O => BG_T_addsub0000_8_XORG_1591
    );
  BG_T_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_8_CYMUXG_1590,
      O => BG_Madd_T_addsub0000_cy_9_Q
    );
  BG_T_addsub0000_8_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X48Y0"
    )
    port map (
      IA => BG_T_addsub0000_8_CY0G_1588,
      IB => BG_Madd_T_addsub0000_cy_8_Q,
      SEL => BG_T_addsub0000_8_CYSELG_1582,
      O => BG_T_addsub0000_8_CYMUXG_1590
    );
  BG_T_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(9),
      O => BG_T_addsub0000_8_CY0G_1588
    );
  BG_T_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(9),
      O => BG_T_addsub0000_8_CYSELG_1582
    );
  BG_T_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_XORF_1643,
      O => BG_T_addsub0000(10)
    );
  BG_T_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      I0 => BG_T_addsub0000_10_CYINIT_1642,
      I1 => BG_Madd_T_addsub0000_lut(10),
      O => BG_T_addsub0000_10_XORF_1643
    );
  BG_T_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0F_1641,
      IB => BG_T_addsub0000_10_CYINIT_1642,
      SEL => BG_T_addsub0000_10_CYSELF_1631,
      O => BG_Madd_T_addsub0000_cy_10_Q
    );
  BG_T_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0F_1641,
      IB => BG_T_addsub0000_10_CY0F_1641,
      SEL => BG_T_addsub0000_10_CYSELF_1631,
      O => BG_T_addsub0000_10_CYMUXF2_1626
    );
  BG_T_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_9_Q,
      O => BG_T_addsub0000_10_CYINIT_1642
    );
  BG_T_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(10),
      O => BG_T_addsub0000_10_CY0F_1641
    );
  BG_T_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(10),
      O => BG_T_addsub0000_10_CYSELF_1631
    );
  BG_T_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_XORG_1633,
      O => BG_T_addsub0000(11)
    );
  BG_T_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_10_Q,
      I1 => BG_Madd_T_addsub0000_lut(11),
      O => BG_T_addsub0000_10_XORG_1633
    );
  BG_T_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_10_CYMUXFAST_1630,
      O => BG_Madd_T_addsub0000_cy_11_Q
    );
  BG_T_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_9_Q,
      O => BG_T_addsub0000_10_FASTCARRY_1628
    );
  BG_T_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      I0 => BG_T_addsub0000_10_CYSELG_1619,
      I1 => BG_T_addsub0000_10_CYSELF_1631,
      O => BG_T_addsub0000_10_CYAND_1629
    );
  BG_T_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CYMUXG2_1627,
      IB => BG_T_addsub0000_10_FASTCARRY_1628,
      SEL => BG_T_addsub0000_10_CYAND_1629,
      O => BG_T_addsub0000_10_CYMUXFAST_1630
    );
  BG_T_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y1"
    )
    port map (
      IA => BG_T_addsub0000_10_CY0G_1625,
      IB => BG_T_addsub0000_10_CYMUXF2_1626,
      SEL => BG_T_addsub0000_10_CYSELG_1619,
      O => BG_T_addsub0000_10_CYMUXG2_1627
    );
  BG_T_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(11),
      O => BG_T_addsub0000_10_CY0G_1625
    );
  BG_T_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X48Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(11),
      O => BG_T_addsub0000_10_CYSELG_1619
    );
  BG_T_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_XORF_1682,
      O => BG_T_addsub0000(12)
    );
  BG_T_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      I0 => BG_T_addsub0000_12_CYINIT_1681,
      I1 => BG_Madd_T_addsub0000_lut(12),
      O => BG_T_addsub0000_12_XORF_1682
    );
  BG_T_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0F_1680,
      IB => BG_T_addsub0000_12_CYINIT_1681,
      SEL => BG_T_addsub0000_12_CYSELF_1670,
      O => BG_Madd_T_addsub0000_cy_12_Q
    );
  BG_T_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0F_1680,
      IB => BG_T_addsub0000_12_CY0F_1680,
      SEL => BG_T_addsub0000_12_CYSELF_1670,
      O => BG_T_addsub0000_12_CYMUXF2_1665
    );
  BG_T_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_11_Q,
      O => BG_T_addsub0000_12_CYINIT_1681
    );
  BG_T_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(12),
      O => BG_T_addsub0000_12_CY0F_1680
    );
  BG_T_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(12),
      O => BG_T_addsub0000_12_CYSELF_1670
    );
  BG_T_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_XORG_1672,
      O => BG_T_addsub0000(13)
    );
  BG_T_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_12_Q,
      I1 => BG_Madd_T_addsub0000_lut(13),
      O => BG_T_addsub0000_12_XORG_1672
    );
  BG_T_addsub0000_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_12_CYMUXFAST_1669,
      O => BG_Madd_T_addsub0000_cy_13_Q
    );
  BG_T_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_11_Q,
      O => BG_T_addsub0000_12_FASTCARRY_1667
    );
  BG_T_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      I0 => BG_T_addsub0000_12_CYSELG_1658,
      I1 => BG_T_addsub0000_12_CYSELF_1670,
      O => BG_T_addsub0000_12_CYAND_1668
    );
  BG_T_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CYMUXG2_1666,
      IB => BG_T_addsub0000_12_FASTCARRY_1667,
      SEL => BG_T_addsub0000_12_CYAND_1668,
      O => BG_T_addsub0000_12_CYMUXFAST_1669
    );
  BG_T_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y2"
    )
    port map (
      IA => BG_T_addsub0000_12_CY0G_1664,
      IB => BG_T_addsub0000_12_CYMUXF2_1665,
      SEL => BG_T_addsub0000_12_CYSELG_1658,
      O => BG_T_addsub0000_12_CYMUXG2_1666
    );
  BG_T_addsub0000_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(13),
      O => BG_T_addsub0000_12_CY0G_1664
    );
  BG_T_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X48Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(13),
      O => BG_T_addsub0000_12_CYSELG_1658
    );
  BG_Madd_T_addsub0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"66C6",
      LOC => "SLICE_X48Y3"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => BG_T(14),
      ADR2 => SEL_1_IBUF_658,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(14)
    );
  BG_T_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_XORF_1721,
      O => BG_T_addsub0000(14)
    );
  BG_T_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      I0 => BG_T_addsub0000_14_CYINIT_1720,
      I1 => BG_Madd_T_addsub0000_lut(14),
      O => BG_T_addsub0000_14_XORF_1721
    );
  BG_T_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0F_1719,
      IB => BG_T_addsub0000_14_CYINIT_1720,
      SEL => BG_T_addsub0000_14_CYSELF_1709,
      O => BG_Madd_T_addsub0000_cy_14_Q
    );
  BG_T_addsub0000_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0F_1719,
      IB => BG_T_addsub0000_14_CY0F_1719,
      SEL => BG_T_addsub0000_14_CYSELF_1709,
      O => BG_T_addsub0000_14_CYMUXF2_1704
    );
  BG_T_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_13_Q,
      O => BG_T_addsub0000_14_CYINIT_1720
    );
  BG_T_addsub0000_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(14),
      O => BG_T_addsub0000_14_CY0F_1719
    );
  BG_T_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(14),
      O => BG_T_addsub0000_14_CYSELF_1709
    );
  BG_T_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_XORG_1711,
      O => BG_T_addsub0000(15)
    );
  BG_T_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_14_Q,
      I1 => BG_Madd_T_addsub0000_lut(15),
      O => BG_T_addsub0000_14_XORG_1711
    );
  BG_T_addsub0000_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_14_CYMUXFAST_1708,
      O => BG_Madd_T_addsub0000_cy_15_Q
    );
  BG_T_addsub0000_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_13_Q,
      O => BG_T_addsub0000_14_FASTCARRY_1706
    );
  BG_T_addsub0000_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      I0 => BG_T_addsub0000_14_CYSELG_1697,
      I1 => BG_T_addsub0000_14_CYSELF_1709,
      O => BG_T_addsub0000_14_CYAND_1707
    );
  BG_T_addsub0000_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CYMUXG2_1705,
      IB => BG_T_addsub0000_14_FASTCARRY_1706,
      SEL => BG_T_addsub0000_14_CYAND_1707,
      O => BG_T_addsub0000_14_CYMUXFAST_1708
    );
  BG_T_addsub0000_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y3"
    )
    port map (
      IA => BG_T_addsub0000_14_CY0G_1703,
      IB => BG_T_addsub0000_14_CYMUXF2_1704,
      SEL => BG_T_addsub0000_14_CYSELG_1697,
      O => BG_T_addsub0000_14_CYMUXG2_1705
    );
  BG_T_addsub0000_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(15),
      O => BG_T_addsub0000_14_CY0G_1703
    );
  BG_T_addsub0000_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X48Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(15),
      O => BG_T_addsub0000_14_CYSELG_1697
    );
  BG_Madd_T_addsub0000_lut_16_Q : X_LUT4
    generic map(
      INIT => X"C696",
      LOC => "SLICE_X48Y4"
    )
    port map (
      ADR0 => SEL_1_IBUF_658,
      ADR1 => BG_T(16),
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(16)
    );
  BG_T_addsub0000_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_XORF_1760,
      O => BG_T_addsub0000(16)
    );
  BG_T_addsub0000_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      I0 => BG_T_addsub0000_16_CYINIT_1759,
      I1 => BG_Madd_T_addsub0000_lut(16),
      O => BG_T_addsub0000_16_XORF_1760
    );
  BG_T_addsub0000_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0F_1758,
      IB => BG_T_addsub0000_16_CYINIT_1759,
      SEL => BG_T_addsub0000_16_CYSELF_1748,
      O => BG_Madd_T_addsub0000_cy_16_Q
    );
  BG_T_addsub0000_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0F_1758,
      IB => BG_T_addsub0000_16_CY0F_1758,
      SEL => BG_T_addsub0000_16_CYSELF_1748,
      O => BG_T_addsub0000_16_CYMUXF2_1743
    );
  BG_T_addsub0000_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_15_Q,
      O => BG_T_addsub0000_16_CYINIT_1759
    );
  BG_T_addsub0000_16_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(16),
      O => BG_T_addsub0000_16_CY0F_1758
    );
  BG_T_addsub0000_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(16),
      O => BG_T_addsub0000_16_CYSELF_1748
    );
  BG_T_addsub0000_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_XORG_1750,
      O => BG_T_addsub0000(17)
    );
  BG_T_addsub0000_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_16_Q,
      I1 => BG_Madd_T_addsub0000_lut(17),
      O => BG_T_addsub0000_16_XORG_1750
    );
  BG_T_addsub0000_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_cy_15_Q,
      O => BG_T_addsub0000_16_FASTCARRY_1745
    );
  BG_T_addsub0000_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      I0 => BG_T_addsub0000_16_CYSELG_1736,
      I1 => BG_T_addsub0000_16_CYSELF_1748,
      O => BG_T_addsub0000_16_CYAND_1746
    );
  BG_T_addsub0000_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CYMUXG2_1744,
      IB => BG_T_addsub0000_16_FASTCARRY_1745,
      SEL => BG_T_addsub0000_16_CYAND_1746,
      O => BG_T_addsub0000_16_CYMUXFAST_1747
    );
  BG_T_addsub0000_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y4"
    )
    port map (
      IA => BG_T_addsub0000_16_CY0G_1742,
      IB => BG_T_addsub0000_16_CYMUXF2_1743,
      SEL => BG_T_addsub0000_16_CYSELG_1736,
      O => BG_T_addsub0000_16_CYMUXG2_1744
    );
  BG_T_addsub0000_16_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(17),
      O => BG_T_addsub0000_16_CY0G_1742
    );
  BG_T_addsub0000_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X48Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(17),
      O => BG_T_addsub0000_16_CYSELG_1736
    );
  BG_Madd_T_addsub0000_lut_17_Q : X_LUT4
    generic map(
      INIT => X"999A",
      LOC => "SLICE_X48Y4"
    )
    port map (
      ADR0 => BG_T(17),
      ADR1 => SEL_2_IBUF_656,
      ADR2 => SEL_1_IBUF_658,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(17)
    );
  BG_Madd_T_addsub0000_lut_18_Q : X_LUT4
    generic map(
      INIT => X"C99C",
      LOC => "SLICE_X48Y5"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => BG_T(18),
      ADR2 => SEL_1_IBUF_658,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(18)
    );
  BG_T_addsub0000_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_18_XORF_1791,
      O => BG_T_addsub0000(18)
    );
  BG_T_addsub0000_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X48Y5"
    )
    port map (
      I0 => BG_T_addsub0000_18_CYINIT_1790,
      I1 => BG_Madd_T_addsub0000_lut(18),
      O => BG_T_addsub0000_18_XORF_1791
    );
  BG_T_addsub0000_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X48Y5"
    )
    port map (
      IA => BG_T_addsub0000_18_CY0F_1789,
      IB => BG_T_addsub0000_18_CYINIT_1790,
      SEL => BG_T_addsub0000_18_CYSELF_1783,
      O => BG_Madd_T_addsub0000_cy_18_Q
    );
  BG_T_addsub0000_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_16_CYMUXFAST_1747,
      O => BG_T_addsub0000_18_CYINIT_1790
    );
  BG_T_addsub0000_18_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T(18),
      O => BG_T_addsub0000_18_CY0F_1789
    );
  BG_T_addsub0000_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_Madd_T_addsub0000_lut(18),
      O => BG_T_addsub0000_18_CYSELF_1783
    );
  BG_T_addsub0000_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_addsub0000_18_XORG_1780,
      O => BG_T_addsub0000(19)
    );
  BG_T_addsub0000_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X48Y5"
    )
    port map (
      I0 => BG_Madd_T_addsub0000_cy_18_Q,
      I1 => BG_Madd_T_addsub0000_lut(19),
      O => BG_T_addsub0000_18_XORG_1780
    );
  RX_READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD339"
    )
    port map (
      I => RX_READY_O,
      O => RX_READY
    );
  RX_READY_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD339",
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
      LOC => "PAD330",
      PATHPULSE => 658 ps
    )
    port map (
      I => CTS,
      O => CTS_INBUF
    );
  SEL_0_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL(0),
      O => SEL_0_INBUF
    );
  SEL_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_0_INBUF,
      O => SEL_0_IBUF_659
    );
  SEL_1_IBUF : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL(1),
      O => SEL_1_INBUF
    );
  SEL_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_1_INBUF,
      O => SEL_1_IBUF_658
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
      O => SEL_2_IBUF_656
    );
  CLK_R_OBUF : X_OBUF
    generic map(
      LOC => "PAD326"
    )
    port map (
      I => CLK_R_O,
      O => CLK_R
    );
  CLK_T_OBUF : X_OBUF
    generic map(
      LOC => "PAD319"
    )
    port map (
      I => CLK_T_O,
      O => CLK_T
    );
  BUS_IN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(0),
      O => BUS_IN_0_INBUF
    );
  BUS_IN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(1),
      O => BUS_IN_1_INBUF
    );
  BUS_IN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(2),
      O => BUS_IN_2_INBUF
    );
  BUS_IN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
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
      LOC => "PAD338",
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
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN(7),
      O => BUS_IN_7_INBUF
    );
  TX_OBUF : X_OBUF
    generic map(
      LOC => "PAD325"
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
      LOC => "PAD322"
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
      LOC => "PAD337"
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
      LOC => "PAD328",
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
      O => CLK_IBUF_606
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
      LOC => "SLICE_X53Y0"
    )
    port map (
      IA => SER_RD_0_not00001_2170,
      IB => SER_RD_0_not0000_F,
      SEL => SER_RD_0_not0000_BXINV_2172,
      O => SER_RD_0_not0000_F5MUX_2183
    );
  SER_RD_0_not0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_663,
      O => SER_RD_0_not0000_BXINV_2172
    );
  BG_CLK_SEL_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y3"
    )
    port map (
      IA => BG_CLK_SEL_or00001_2196,
      IB => RESET_IBUF_rt_2206,
      SEL => BG_CLK_SEL_or0000_BXINV_2198,
      O => BG_CLK_SEL_or0000_F5MUX_2208
    );
  BG_CLK_SEL_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_2_IBUF_656,
      O => BG_CLK_SEL_or0000_BXINV_2198
    );
  BG_T_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(0),
      O => BG_T_19_DXMUX_2238
    );
  BG_T_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq000042_pack_1,
      O => BG_CLK_SEL_cmp_eq000042_607
    );
  BG_T_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_19_CLKINV_2223
    );
  BG_T_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_19_CEINV_2222
    );
  BG_T_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_mux0001(1),
      O => BG_T_18_DXMUX_2271
    );
  BG_T_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq000019_pack_1,
      O => BG_CLK_SEL_cmp_eq000019_608
    );
  BG_T_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_606,
      O => BG_T_18_CLKINV_2256
    );
  BG_T_18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_T_and0001_0,
      O => BG_T_18_CEINV_2255
    );
  BG_CLK_SEL_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_cmp_eq00007_pack_1,
      O => BG_CLK_SEL_cmp_eq00007_609
    );
  SER_COUNT_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(3),
      O => SER_COUNT_TY_3_DXMUX_2335
    );
  SER_COUNT_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_Result(2),
      O => SER_COUNT_TY_3_DYMUX_2321
    );
  SER_COUNT_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_T_LOAD_596,
      O => SER_COUNT_TY_3_SRINV_2312
    );
  SER_COUNT_TY_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_COUNT_TY_3_CLKINV_2311
    );
  DES_U3_Y_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Y11_2355,
      O => DES_U3_Y_DYMUX_2358
    );
  DES_U3_Y_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => DES_U3_Y_CLKINV_2347
    );
  SER_REG_PS_Z_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_1_mux0001,
      O => SER_REG_PS_Z_1_DXMUX_2399
    );
  SER_REG_PS_Z_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_0_mux0001,
      O => SER_REG_PS_Z_1_DYMUX_2385
    );
  SER_REG_PS_Z_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => SER_REG_PS_Z_1_SRINV_2375
    );
  SER_REG_PS_Z_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_1_CLKINV_2374
    );
  SER_REG_PS_Z_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_3_mux0001,
      O => SER_REG_PS_Z_3_DXMUX_2439
    );
  SER_REG_PS_Z_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_2_mux0001,
      O => SER_REG_PS_Z_3_DYMUX_2425
    );
  SER_REG_PS_Z_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => SER_REG_PS_Z_3_SRINV_2416
    );
  SER_REG_PS_Z_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_3_CLKINV_2415
    );
  SER_REG_PS_Z_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_5_mux0001,
      O => SER_REG_PS_Z_5_DXMUX_2479
    );
  SER_REG_PS_Z_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_REG_PS_Z_4_mux0001,
      O => SER_REG_PS_Z_5_DYMUX_2465
    );
  SER_REG_PS_Z_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => SER_REG_PS_Z_5_SRINV_2456
    );
  SER_REG_PS_Z_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => SER_REG_PS_Z_5_CLKINV_2455
    );
  BG_T_10 : X_FF
    generic map(
      LOC => "SLICE_X49Y0",
      INIT => '0'
    )
    port map (
      I => BG_T_11_DYMUX_838,
      CE => BG_T_11_CEINV_829,
      CLK => BG_T_11_CLKINV_830,
      SET => GND,
      RST => GND,
      O => BG_T(10)
    );
  BG_Madd_T_addsub0000_lut_19_Q : X_LUT4
    generic map(
      INIT => X"C9CC",
      LOC => "SLICE_X48Y5"
    )
    port map (
      ADR0 => SEL_1_IBUF_658,
      ADR1 => BG_T(19),
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(19)
    );
  DES_RD_1 : X_LATCHE
    generic map(
      LOC => "PAD339",
      INIT => '1'
    )
    port map (
      I => RX_READY_OUTPUT_OFF_O1INV_1811,
      GE => RX_READY_OUTPUT_OFF_OCEINV_1813,
      CLK => NlwInverterSignal_DES_RD_1_CLK,
      SET => RX_READY_OUTPUT_OFF_OSR_USED_1816,
      RST => GND,
      O => DES_RD_1_1818
    );
  RX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_1_1818,
      O => RX_READY_O
    );
  RX_READY_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000_0,
      O => RX_READY_OUTPUT_OFF_OSR_USED_1816
    );
  RX_READY_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_0_not0000_0,
      O => RX_READY_OUTPUT_OFF_OCEINV_1813
    );
  RX_READY_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => RX_READY_OUTPUT_OFF_O1INV_1811
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
      I => DES_U4_TY_2_DYMUX_713,
      CE => VCC,
      CLK => DES_U4_TY_2_CLKINV_703,
      SET => GND,
      RST => DES_U4_TY_2_FFY_RSTAND_718,
      O => DES_U4_TY(2)
    );
  DES_U4_TY_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X32Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_START_0,
      O => DES_U4_TY_2_FFY_RSTAND_718
    );
  BG_U1_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X46Y2"
    )
    port map (
      ADR0 => BG_U1_TY(2),
      ADR1 => VCC,
      ADR2 => BG_U1_TY(1),
      ADR3 => BG_U1_TY(0),
      O => BG_Result(2)
    );
  BG_U1_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X46Y2",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_2_DYMUX_736,
      CE => VCC,
      CLK => BG_U1_TY_2_CLKINV_726,
      SET => GND,
      RST => BG_U1_TY_2_FFY_RSTAND_741,
      O => BG_U1_TY(2)
    );
  BG_U1_TY_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X46Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BG_U1_TY_2_FFY_RSTAND_741
    );
  SER_REG_PS_Z_6_mux00011 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BUS_IN_5_IBUF_599,
      ADR2 => SER_REG_PS_Z(7),
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_6_mux0001
    );
  SER_REG_PS_Z_6 : X_FF
    generic map(
      LOC => "SLICE_X45Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_7_DYMUX_763,
      CE => VCC,
      CLK => SER_REG_PS_Z_7_CLKINV_753,
      SET => SER_REG_PS_Z_7_SRINV_754,
      RST => GND,
      O => SER_REG_PS_Z(6)
    );
  SER_REG_PS_Z_7_mux00011 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_REG_PS_Z(8),
      ADR2 => BUS_IN_6_IBUF_597,
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_7_mux0001
    );
  SER_REG_PS_Z_7 : X_FF
    generic map(
      LOC => "SLICE_X45Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_7_DXMUX_777,
      CE => VCC,
      CLK => SER_REG_PS_Z_7_CLKINV_753,
      SET => SER_REG_PS_Z_7_SRINV_754,
      RST => GND,
      O => SER_REG_PS_Z(7)
    );
  SER_REG_PS_Z_8_mux00011 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X46Y0"
    )
    port map (
      ADR0 => BUS_IN_7_IBUF_603,
      ADR1 => VCC,
      ADR2 => SER_T_LOAD_596,
      ADR3 => VCC,
      O => SER_REG_PS_Z_8_mux0001
    );
  SER_REG_PS_Z_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_8_DYMUX_802,
      CE => VCC,
      CLK => SER_REG_PS_Z_8_CLKINV_791,
      SET => SER_REG_PS_Z_8_FFY_SET,
      RST => GND,
      O => SER_REG_PS_Z(8)
    );
  SER_REG_PS_Z_8_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X46Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => SER_REG_PS_Z_8_FFY_SET
    );
  SER_REG_PS_Y1 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X46Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_REG_PS_Z(0),
      ADR2 => SER_T_LOAD_596,
      ADR3 => VCC,
      O => TX_OBUF_814
    );
  BG_T_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y0",
      INIT => '0'
    )
    port map (
      I => BG_T_11_DXMUX_850,
      CE => BG_T_11_CEINV_829,
      CLK => BG_T_11_CLKINV_830,
      SET => GND,
      RST => GND,
      O => BG_T(11)
    );
  BG_T_8 : X_FF
    generic map(
      LOC => "SLICE_X49Y1",
      INIT => '0'
    )
    port map (
      I => BG_T_9_DYMUX_876,
      CE => BG_T_9_CEINV_867,
      CLK => BG_T_9_CLKINV_868,
      SET => GND,
      RST => GND,
      O => BG_T(8)
    );
  BG_T_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X49Y1"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_607,
      ADR1 => BG_CLK_SEL_cmp_eq00007_609,
      ADR2 => BG_CLK_SEL_cmp_eq000019_608,
      ADR3 => BG_T_addsub0000(8),
      O => BG_T_mux0001(11)
    );
  BG_T_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X49Y1"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_607,
      ADR1 => BG_T_addsub0000(9),
      ADR2 => BG_CLK_SEL_cmp_eq000019_608,
      ADR3 => BG_CLK_SEL_cmp_eq00007_609,
      O => BG_T_mux0001(10)
    );
  BG_T_9 : X_FF
    generic map(
      LOC => "SLICE_X49Y1",
      INIT => '0'
    )
    port map (
      I => BG_T_9_DXMUX_888,
      CE => BG_T_9_CEINV_867,
      CLK => BG_T_9_CLKINV_868,
      SET => GND,
      RST => GND,
      O => BG_T(9)
    );
  BG_T_12 : X_FF
    generic map(
      LOC => "SLICE_X50Y3",
      INIT => '0'
    )
    port map (
      I => BG_T_13_DYMUX_914,
      CE => BG_T_13_CEINV_905,
      CLK => BG_T_13_CLKINV_906,
      SET => GND,
      RST => GND,
      O => BG_T(12)
    );
  BG_T_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y3"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_608,
      ADR1 => BG_CLK_SEL_cmp_eq00007_609,
      ADR2 => BG_CLK_SEL_cmp_eq000042_607,
      ADR3 => BG_T_addsub0000(12),
      O => BG_T_mux0001(7)
    );
  BG_T_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X50Y3"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_608,
      ADR1 => BG_T_addsub0000(13),
      ADR2 => BG_CLK_SEL_cmp_eq000042_607,
      ADR3 => BG_CLK_SEL_cmp_eq00007_609,
      O => BG_T_mux0001(6)
    );
  BG_T_13 : X_FF
    generic map(
      LOC => "SLICE_X50Y3",
      INIT => '0'
    )
    port map (
      I => BG_T_13_DXMUX_926,
      CE => BG_T_13_CEINV_905,
      CLK => BG_T_13_CLKINV_906,
      SET => GND,
      RST => GND,
      O => BG_T(13)
    );
  BG_T_14 : X_FF
    generic map(
      LOC => "SLICE_X49Y2",
      INIT => '0'
    )
    port map (
      I => BG_T_15_DYMUX_952,
      CE => BG_T_15_CEINV_943,
      CLK => BG_T_15_CLKINV_944,
      SET => GND,
      RST => GND,
      O => BG_T(14)
    );
  BG_T_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X49Y2"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_609,
      ADR1 => BG_CLK_SEL_cmp_eq000019_608,
      ADR2 => BG_T_addsub0000(14),
      ADR3 => BG_CLK_SEL_cmp_eq000042_607,
      O => BG_T_mux0001(5)
    );
  BG_T_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X49Y2"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_609,
      ADR1 => BG_T_addsub0000(15),
      ADR2 => BG_CLK_SEL_cmp_eq000019_608,
      ADR3 => BG_CLK_SEL_cmp_eq000042_607,
      O => BG_T_mux0001(4)
    );
  BG_T_15 : X_FF
    generic map(
      LOC => "SLICE_X49Y2",
      INIT => '0'
    )
    port map (
      I => BG_T_15_DXMUX_964,
      CE => BG_T_15_CEINV_943,
      CLK => BG_T_15_CLKINV_944,
      SET => GND,
      RST => GND,
      O => BG_T(15)
    );
  BG_T_16 : X_FF
    generic map(
      LOC => "SLICE_X49Y4",
      INIT => '0'
    )
    port map (
      I => BG_T_17_DYMUX_990,
      CE => BG_T_17_CEINV_981,
      CLK => BG_T_17_CLKINV_982,
      SET => GND,
      RST => GND,
      O => BG_T(16)
    );
  BG_T_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X49Y4"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_607,
      ADR1 => BG_CLK_SEL_cmp_eq00007_609,
      ADR2 => BG_CLK_SEL_cmp_eq000019_608,
      ADR3 => BG_T_addsub0000(16),
      O => BG_T_mux0001(3)
    );
  BG_T_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X49Y4"
    )
    port map (
      ADR0 => BG_T_addsub0000(17),
      ADR1 => BG_CLK_SEL_cmp_eq00007_609,
      ADR2 => BG_CLK_SEL_cmp_eq000042_607,
      ADR3 => BG_CLK_SEL_cmp_eq000019_608,
      O => BG_T_mux0001(2)
    );
  BG_T_17 : X_FF
    generic map(
      LOC => "SLICE_X49Y4",
      INIT => '0'
    )
    port map (
      I => BG_T_17_DXMUX_1002,
      CE => BG_T_17_CEINV_981,
      CLK => BG_T_17_CLKINV_982,
      SET => GND,
      RST => GND,
      O => BG_T(17)
    );
  DES_U5_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X34Y1"
    )
    port map (
      ADR0 => DES_U5_TY(1),
      ADR1 => DES_U5_TY(0),
      ADR2 => VCC,
      ADR3 => DES_U5_TY(2),
      O => DES_Result_2_1
    );
  DES_U5_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_3_DYMUX_1028,
      CE => VCC,
      CLK => DES_U5_TY_3_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_3_SRINV_1019,
      O => DES_U5_TY(2)
    );
  DES_U5_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"78F0",
      LOC => "SLICE_X34Y1"
    )
    port map (
      ADR0 => DES_U5_TY(1),
      ADR1 => DES_U5_TY(0),
      ADR2 => DES_U5_TY(3),
      ADR3 => DES_U5_TY(2),
      O => DES_Result(3)
    );
  DES_U5_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_3_DXMUX_1042,
      CE => VCC,
      CLK => DES_U5_TY_3_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_3_SRINV_1019,
      O => DES_U5_TY(3)
    );
  DES_U3_Mshreg_Y_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X44Y3"
    )
    port map (
      A0 => GND,
      A1 => VCC,
      A2 => GND,
      A3 => GND,
      D => DES_U3_Y1_DIG_MUX_1063,
      CE => DES_U3_Y1_WSG,
      CLK => DES_U3_Y1_CLKINV_1061,
      Q => DES_U3_Mshreg_Y,
      Q15 => NLW_DES_U3_Mshreg_Y_SRL16E_Q15_UNCONNECTED
    );
  DES_U3_Y1 : X_FF
    generic map(
      LOC => "SLICE_X44Y3",
      INIT => '0'
    )
    port map (
      I => DES_U3_Y1_DYMUX_1074,
      CE => VCC,
      CLK => DES_U3_Y1_CLKINV_1061,
      SET => GND,
      RST => GND,
      O => DES_U3_Y1_637
    );
  DES_T_START1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X38Y1"
    )
    port map (
      ADR0 => DES_U3_Y_638,
      ADR1 => DES_RD_639,
      ADR2 => VCC,
      ADR3 => VCC,
      O => DES_T_START
    );
  RESET_IBUF_shift1 : X_FF
    generic map(
      LOC => "SLICE_X47Y2",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift2_DYMUX_1099,
      CE => VCC,
      CLK => RESET_IBUF_shift2_CLKINV_1096,
      SET => GND,
      RST => RESET_IBUF_shift2_SRINV_1097,
      O => RESET_IBUF_shift1_640
    );
  RESET_IBUF_shift2 : X_FF
    generic map(
      LOC => "SLICE_X47Y2",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift2_DXMUX_1107,
      CE => VCC,
      CLK => RESET_IBUF_shift2_CLKINV_1096,
      SET => GND,
      RST => RESET_IBUF_shift2_SRINV_1097,
      O => RESET_IBUF_shift2_641
    );
  SER_T_LOAD : X_SFF
    generic map(
      LOC => "SLICE_X44Y0",
      INIT => '0'
    )
    port map (
      I => SER_T_LOAD_DYMUX_1121,
      CE => VCC,
      CLK => SER_T_LOAD_CLKINV_1118,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => SER_T_LOAD_SRINVNOT,
      O => SER_T_LOAD_596
    );
  RESET_IBUF_shift3 : X_FF
    generic map(
      LOC => "SLICE_X45Y3",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift4_DYMUX_1135,
      CE => VCC,
      CLK => RESET_IBUF_shift4_CLKINV_1132,
      SET => GND,
      RST => RESET_IBUF_shift4_SRINV_1133,
      O => RESET_IBUF_shift3_644
    );
  RESET_IBUF_shift4 : X_FF
    generic map(
      LOC => "SLICE_X45Y3",
      INIT => '0'
    )
    port map (
      I => RESET_IBUF_shift4_DXMUX_1143,
      CE => VCC,
      CLK => RESET_IBUF_shift4_CLKINV_1132,
      SET => GND,
      RST => RESET_IBUF_shift4_SRINV_1133,
      O => RESET_IBUF_shift4_645
    );
  SER_COUNT_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X50Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SER_COUNT_TY(1),
      ADR3 => SER_COUNT_TY(0),
      O => SER_Result(1)
    );
  SER_COUNT_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y0",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_0_DYMUX_1168,
      CE => VCC,
      CLK => SER_COUNT_TY_0_CLKINV_1157,
      SET => GND,
      RST => SER_COUNT_TY_0_SRINV_1158,
      O => SER_COUNT_TY(1)
    );
  SER_COUNT_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y0",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_0_DXMUX_1176,
      CE => VCC,
      CLK => SER_COUNT_TY_0_CLKINV_1157,
      SET => GND,
      RST => SER_COUNT_TY_0_SRINV_1158,
      O => SER_COUNT_TY(0)
    );
  DES_RD : X_LATCHE
    generic map(
      LOC => "SLICE_X36Y1",
      INIT => '1'
    )
    port map (
      I => DES_RD_DYMUX_1192,
      GE => DES_RD_CEINV_1188,
      CLK => NlwInverterSignal_DES_RD_CLK,
      SET => DES_RD_FFY_SET,
      RST => GND,
      O => DES_RD_639
    );
  DES_RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_RD_or0000_0,
      O => DES_RD_FFY_SET
    );
  SER_R0_INPUT : X_FF
    generic map(
      LOC => "SLICE_X47Y1",
      INIT => '0'
    )
    port map (
      I => SER_R0_INPUT_DYMUX_1204,
      CE => VCC,
      CLK => SER_R0_INPUT_CLKINV_1202,
      SET => GND,
      RST => GND,
      O => SER_R0_INPUT_650
    );
  DES_RD_0_not00001 : X_LUT4
    generic map(
      INIT => X"EFFF",
      LOC => "SLICE_X35Y1"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(0),
      ADR2 => DES_U5_TY(3),
      ADR3 => DES_U5_TY(1),
      O => DES_RD_0_not0000
    );
  DES_U5_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_1_DYMUX_1230,
      CE => VCC,
      CLK => DES_U5_TY_1_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_1_SRINV_1221,
      O => DES_U5_TY(0)
    );
  DES_U5_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X35Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => DES_U5_TY(0),
      ADR3 => DES_U5_TY(1),
      O => DES_Result_1_1
    );
  DES_U5_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X35Y1",
      INIT => '0'
    )
    port map (
      I => DES_U5_TY_1_DXMUX_1246,
      CE => VCC,
      CLK => DES_U5_TY_1_CLKINVNOT,
      SET => GND,
      RST => DES_U5_TY_1_SRINV_1221,
      O => DES_U5_TY(1)
    );
  SER_T_RESET1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X51Y0"
    )
    port map (
      ADR0 => SER_R0_INPUT_650,
      ADR1 => SER_R1_INPUT_651,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SER_T_RESET
    );
  BG_CLK_SEL : X_FF
    generic map(
      LOC => "SLICE_X50Y4",
      INIT => '0'
    )
    port map (
      I => BG_CLK_SEL_DXMUX_1277,
      CE => BG_CLK_SEL_CEINV_1271,
      CLK => BG_CLK_SEL_CLKINV_1272,
      SET => BG_CLK_SEL_FFX_SET,
      RST => BG_CLK_SEL_FFX_RSTAND_1284,
      O => BG_CLK_SEL_587
    );
  BG_CLK_SEL_FFX_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_and0000,
      O => BG_CLK_SEL_FFX_SET
    );
  BG_CLK_SEL_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X50Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_or0000_F5MUX_2208,
      O => BG_CLK_SEL_FFX_RSTAND_1284
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
      I => DES_U4_TY_0_DYMUX_1305,
      CE => VCC,
      CLK => DES_U4_TY_0_CLKINV_1294,
      SET => GND,
      RST => DES_U4_TY_0_SRINV_1295,
      O => DES_U4_TY(1)
    );
  DES_U4_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y1",
      INIT => '0'
    )
    port map (
      I => DES_U4_TY_0_DXMUX_1313,
      CE => VCC,
      CLK => DES_U4_TY_0_CLKINV_1294,
      SET => GND,
      RST => DES_U4_TY_0_SRINV_1295,
      O => DES_U4_TY(0)
    );
  BG_U1_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X46Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BG_U1_TY(1),
      ADR3 => BG_U1_TY(0),
      O => BG_Result(1)
    );
  BG_U1_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_0_DYMUX_1338,
      CE => VCC,
      CLK => BG_U1_TY_0_CLKINV_1327,
      SET => GND,
      RST => BG_U1_TY_0_SRINV_1328,
      O => BG_U1_TY(1)
    );
  BG_U1_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '0'
    )
    port map (
      I => BG_U1_TY_0_DXMUX_1346,
      CE => VCC,
      CLK => BG_U1_TY_0_CLKINV_1327,
      SET => GND,
      RST => BG_U1_TY_0_SRINV_1328,
      O => BG_U1_TY(0)
    );
  BG_T_and00011 : X_LUT4
    generic map(
      INIT => X"0F0E",
      LOC => "SLICE_X50Y2"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => SEL_1_IBUF_658,
      ADR2 => RESET_IBUF_592,
      ADR3 => SEL_0_IBUF_659,
      O => BG_T_and0001
    );
  BG_CLK_SEL_and00001 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X50Y2"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => SEL_1_IBUF_658,
      ADR2 => CLK_IBUF1,
      ADR3 => SEL_0_IBUF_659,
      O => BG_CLK_SEL_and0000
    );
  SER_RD_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X52Y0"
    )
    port map (
      ADR0 => SER_COUNT_TY(1),
      ADR1 => SER_RD_663,
      ADR2 => SER_T_RESET_0,
      ADR3 => SER_COUNT_TY(0),
      O => N2_pack_1
    );
  SER_RD_or0000 : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X52Y0"
    )
    port map (
      ADR0 => RESET_IBUF_592,
      ADR1 => SER_COUNT_TY(3),
      ADR2 => SER_COUNT_TY(2),
      ADR3 => N2,
      O => SER_RD_or0000_1398
    );
  DES_T_END11 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X35Y0"
    )
    port map (
      ADR0 => DES_U5_TY(2),
      ADR1 => DES_U5_TY(3),
      ADR2 => DES_U5_TY(0),
      ADR3 => VCC,
      O => DES_N01_pack_1
    );
  DES_T_END1 : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X35Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => DES_RD_639,
      ADR2 => DES_N01,
      ADR3 => DES_U5_TY(1),
      O => DES_T_END
    );
  DES_RD_or00001 : X_LUT4
    generic map(
      INIT => X"F4F0",
      LOC => "SLICE_X37Y1"
    )
    port map (
      ADR0 => DES_T_START_0,
      ADR1 => DES_N01,
      ADR2 => RESET_IBUF_592,
      ADR3 => DES_U5_TY(1),
      O => DES_RD_or0000
    );
  DES_U2_T_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_1_DYMUX_1446,
      CE => VCC,
      CLK => DES_U2_T_1_CLKINV_1443,
      SET => GND,
      RST => DES_U2_T_1_SRINV_1444,
      O => DES_U2_T(0)
    );
  DES_U2_T_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_1_DXMUX_1454,
      CE => VCC,
      CLK => DES_U2_T_1_CLKINV_1443,
      SET => GND,
      RST => DES_U2_T_1_SRINV_1444,
      O => DES_U2_T(1)
    );
  DES_U2_T_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_3_DYMUX_1470,
      CE => VCC,
      CLK => DES_U2_T_3_CLKINV_1467,
      SET => GND,
      RST => DES_U2_T_3_SRINV_1468,
      O => DES_U2_T(2)
    );
  DES_U2_T_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_3_DXMUX_1478,
      CE => VCC,
      CLK => DES_U2_T_3_CLKINV_1467,
      SET => GND,
      RST => DES_U2_T_3_SRINV_1468,
      O => DES_U2_T(3)
    );
  DES_U3_not00001_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X44Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RX_IBUF_668,
      ADR2 => VCC,
      ADR3 => VCC,
      O => DES_U3_not0000
    );
  DES_U2_T_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_5_DYMUX_1506,
      CE => VCC,
      CLK => DES_U2_T_5_CLKINV_1503,
      SET => GND,
      RST => DES_U2_T_5_SRINV_1504,
      O => DES_U2_T(4)
    );
  DES_U2_T_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_5_DXMUX_1514,
      CE => VCC,
      CLK => DES_U2_T_5_CLKINV_1503,
      SET => GND,
      RST => DES_U2_T_5_SRINV_1504,
      O => DES_U2_T(5)
    );
  SER_R1_INPUT : X_FF
    generic map(
      LOC => "SLICE_X46Y1",
      INIT => '0'
    )
    port map (
      I => SER_R1_INPUT_DYMUX_1526,
      CE => VCC,
      CLK => SER_R1_INPUT_CLKINV_1524,
      SET => GND,
      RST => GND,
      O => SER_R1_INPUT_651
    );
  SER_RD : X_LATCHE
    generic map(
      LOC => "SLICE_X52Y1",
      INIT => '1'
    )
    port map (
      I => SER_RD_DYMUX_1539,
      GE => SER_RD_CEINV_1535,
      CLK => NlwInverterSignal_SER_RD_CLK,
      SET => SER_RD_FFY_SET,
      RST => GND,
      O => SER_RD_663
    );
  SER_RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X52Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_or0000_1398,
      O => SER_RD_FFY_SET
    );
  DES_U2_T_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_7_DYMUX_1555,
      CE => VCC,
      CLK => DES_U2_T_7_CLKINV_1552,
      SET => GND,
      RST => DES_U2_T_7_SRINV_1553,
      O => DES_U2_T(6)
    );
  DES_U2_T_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '0'
    )
    port map (
      I => DES_U2_T_7_DXMUX_1563,
      CE => VCC,
      CLK => DES_U2_T_7_CLKINV_1552,
      SET => GND,
      RST => DES_U2_T_7_SRINV_1553,
      O => DES_U2_T(7)
    );
  BG_Madd_T_addsub0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"6A66",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => BG_T(9),
      ADR1 => SEL_2_IBUF_656,
      ADR2 => SEL_1_IBUF_658,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(9)
    );
  BG_Madd_T_addsub0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"66CC",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => BG_T(8),
      ADR2 => VCC,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(8)
    );
  BG_Madd_T_addsub0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6CC6",
      LOC => "SLICE_X48Y1"
    )
    port map (
      ADR0 => SEL_1_IBUF_658,
      ADR1 => BG_T(11),
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(11)
    );
  BG_Madd_T_addsub0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"C66C",
      LOC => "SLICE_X48Y1"
    )
    port map (
      ADR0 => SEL_1_IBUF_658,
      ADR1 => BG_T(10),
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(10)
    );
  BG_Madd_T_addsub0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"C6CC",
      LOC => "SLICE_X48Y2"
    )
    port map (
      ADR0 => SEL_2_IBUF_656,
      ADR1 => BG_T(13),
      ADR2 => SEL_1_IBUF_658,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(13)
    );
  BG_Madd_T_addsub0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"C96C",
      LOC => "SLICE_X48Y2"
    )
    port map (
      ADR0 => SEL_1_IBUF_658,
      ADR1 => BG_T(12),
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(12)
    );
  BG_Madd_T_addsub0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X48Y3"
    )
    port map (
      ADR0 => BG_T(15),
      ADR1 => SEL_1_IBUF_658,
      ADR2 => SEL_2_IBUF_656,
      ADR3 => SEL_0_IBUF_659,
      O => BG_Madd_T_addsub0000_lut(15)
    );
  BUS_IN_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_0_INBUF,
      O => BUS_IN_0_IBUF_687
    );
  BUS_IN_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_1_INBUF,
      O => BUS_IN_1_IBUF_688
    );
  BUS_IN_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_2_INBUF,
      O => BUS_IN_2_IBUF_689
    );
  BUS_IN_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_3_INBUF,
      O => BUS_IN_3_IBUF_690
    );
  BUS_IN_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_4_INBUF,
      O => BUS_IN_4_IBUF_691
    );
  BUS_IN_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_5_INBUF,
      O => BUS_IN_5_IBUF_599
    );
  RX_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 658 ps
    )
    port map (
      I => RX_INBUF,
      O => RX_IBUF_668
    );
  BUS_OUT_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(7),
      O => BUS_OUT_0_OUTPUT_OFF_O1INV_1924
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
      I => BUS_OUT_0_OUTPUT_OFF_O1INV_1924,
      CE => VCC,
      CLK => BUS_OUT_0_OUTPUT_OTCLK1INV_1920,
      SET => GND,
      RST => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1931,
      O => DES_U1_Y(0)
    );
  BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_1931
    );
  BUS_OUT_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_0_OUTPUT_OTCLK1INV_1920
    );
  BUS_IN_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_6_INBUF,
      O => BUS_IN_6_IBUF_597
    );
  BUS_OUT_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(6),
      O => BUS_OUT_1_OUTPUT_OFF_O1INV_1954
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
      I => BUS_OUT_1_OUTPUT_OFF_O1INV_1954,
      CE => VCC,
      CLK => BUS_OUT_1_OUTPUT_OTCLK1INV_1950,
      SET => GND,
      RST => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1961,
      O => DES_U1_Y(1)
    );
  BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_1961
    );
  BUS_OUT_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD371",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_1_OUTPUT_OTCLK1INV_1950
    );
  BUS_IN_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => BUS_IN_7_INBUF,
      O => BUS_IN_7_IBUF_603
    );
  BUS_OUT_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(5),
      O => BUS_OUT_2_OUTPUT_OFF_O1INV_1992
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
      I => BUS_OUT_2_OUTPUT_OFF_O1INV_1992,
      CE => VCC,
      CLK => BUS_OUT_2_OUTPUT_OTCLK1INV_1988,
      SET => GND,
      RST => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_1999,
      O => DES_U1_Y(2)
    );
  BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_1999
    );
  BUS_OUT_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_2_OUTPUT_OTCLK1INV_1988
    );
  BUS_OUT_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(4),
      O => BUS_OUT_3_OUTPUT_OFF_O1INV_2016
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
      I => BUS_OUT_3_OUTPUT_OFF_O1INV_2016,
      CE => VCC,
      CLK => BUS_OUT_3_OUTPUT_OTCLK1INV_2012,
      SET => GND,
      RST => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2023,
      O => DES_U1_Y(3)
    );
  BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_2023
    );
  BUS_OUT_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_3_OUTPUT_OTCLK1INV_2012
    );
  BUS_OUT_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(3),
      O => BUS_OUT_4_OUTPUT_OFF_O1INV_2048
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
      I => BUS_OUT_4_OUTPUT_OFF_O1INV_2048,
      CE => VCC,
      CLK => BUS_OUT_4_OUTPUT_OTCLK1INV_2044,
      SET => GND,
      RST => BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2055,
      O => DES_U1_Y(4)
    );
  BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_4_OUTPUT_OFF_OFF1_RSTAND_2055
    );
  BUS_OUT_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_4_OUTPUT_OTCLK1INV_2044
    );
  BUS_OUT_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(2),
      O => BUS_OUT_5_OUTPUT_OFF_O1INV_2072
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
      I => BUS_OUT_5_OUTPUT_OFF_O1INV_2072,
      CE => VCC,
      CLK => BUS_OUT_5_OUTPUT_OTCLK1INV_2068,
      SET => GND,
      RST => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2079,
      O => DES_U1_Y(5)
    );
  BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_2079
    );
  BUS_OUT_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_5_OUTPUT_OTCLK1INV_2068
    );
  BUS_OUT_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(1),
      O => BUS_OUT_6_OUTPUT_OFF_O1INV_2096
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
      I => BUS_OUT_6_OUTPUT_OFF_O1INV_2096,
      CE => VCC,
      CLK => BUS_OUT_6_OUTPUT_OTCLK1INV_2092,
      SET => GND,
      RST => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2103,
      O => DES_U1_Y(6)
    );
  BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_2103
    );
  BUS_OUT_6_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_6_OUTPUT_OTCLK1INV_2092
    );
  BUS_OUT_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U2_T(0),
      O => BUS_OUT_7_OUTPUT_OFF_O1INV_2120
    );
  BUS_OUT_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U1_Y(7),
      O => BUS_OUT_7_O
    );
  DES_U1_Y_7 : X_FF
    generic map(
      LOC => "PAD337",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_7_OUTPUT_OFF_O1INV_2120,
      CE => VCC,
      CLK => BUS_OUT_7_OUTPUT_OTCLK1INV_2116,
      SET => GND,
      RST => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2127,
      O => DES_U1_Y(7)
    );
  BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_2127
    );
  BUS_OUT_7_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_T_END_0,
      O => BUS_OUT_7_OUTPUT_OTCLK1INV_2116
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
      O => RESET_IBUF_592
    );
  SER_RD_0_not00001 : X_LUT4
    generic map(
      INIT => X"EFFF",
      LOC => "SLICE_X53Y0"
    )
    port map (
      ADR0 => SER_COUNT_TY(0),
      ADR1 => SER_COUNT_TY(2),
      ADR2 => SER_COUNT_TY(3),
      ADR3 => SER_COUNT_TY(1),
      O => SER_RD_0_not00001_2170
    );
  BG_CLK_SEL_or00001 : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X51Y3"
    )
    port map (
      ADR0 => RESET_IBUF_592,
      ADR1 => SEL_0_IBUF_659,
      ADR2 => SEL_1_IBUF_658,
      ADR3 => CLK_IBUF1,
      O => BG_CLK_SEL_or00001_2196
    );
  RESET_IBUF_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X51Y3"
    )
    port map (
      ADR0 => RESET_IBUF_592,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => RESET_IBUF_rt_2206
    );
  BG_CLK_SEL_cmp_eq000042 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X49Y3"
    )
    port map (
      ADR0 => BG_T(11),
      ADR1 => BG_T(9),
      ADR2 => BG_T(10),
      ADR3 => BG_T(8),
      O => BG_CLK_SEL_cmp_eq000042_pack_1
    );
  BG_T_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X49Y3"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq00007_609,
      ADR1 => BG_CLK_SEL_cmp_eq000019_608,
      ADR2 => BG_CLK_SEL_cmp_eq000042_607,
      ADR3 => BG_T_addsub0000(19),
      O => BG_T_mux0001(0)
    );
  BG_T_19 : X_FF
    generic map(
      LOC => "SLICE_X49Y3",
      INIT => '0'
    )
    port map (
      I => BG_T_19_DXMUX_2238,
      CE => BG_T_19_CEINV_2222,
      CLK => BG_T_19_CLKINV_2223,
      SET => GND,
      RST => GND,
      O => BG_T(19)
    );
  BG_CLK_SEL_cmp_eq000019 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X49Y5"
    )
    port map (
      ADR0 => BG_T(12),
      ADR1 => BG_T(14),
      ADR2 => BG_T(13),
      ADR3 => BG_T(15),
      O => BG_CLK_SEL_cmp_eq000019_pack_1
    );
  BG_T_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X49Y5"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000042_607,
      ADR1 => BG_CLK_SEL_cmp_eq00007_609,
      ADR2 => BG_T_addsub0000(18),
      ADR3 => BG_CLK_SEL_cmp_eq000019_608,
      O => BG_T_mux0001(1)
    );
  BG_T_18 : X_FF
    generic map(
      LOC => "SLICE_X49Y5",
      INIT => '0'
    )
    port map (
      I => BG_T_18_DXMUX_2271,
      CE => BG_T_18_CEINV_2255,
      CLK => BG_T_18_CLKINV_2256,
      SET => GND,
      RST => GND,
      O => BG_T(18)
    );
  BG_CLK_SEL_cmp_eq00007 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X50Y5"
    )
    port map (
      ADR0 => BG_T(17),
      ADR1 => BG_T(18),
      ADR2 => BG_T(19),
      ADR3 => BG_T(16),
      O => BG_CLK_SEL_cmp_eq00007_pack_1
    );
  BG_CLK_SEL_cmp_eq000044 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X50Y5"
    )
    port map (
      ADR0 => BG_CLK_SEL_cmp_eq000019_608,
      ADR1 => VCC,
      ADR2 => BG_CLK_SEL_cmp_eq00007_609,
      ADR3 => BG_CLK_SEL_cmp_eq000042_607,
      O => BG_CLK_SEL_cmp_eq0000
    );
  SER_COUNT_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AF0",
      LOC => "SLICE_X53Y1"
    )
    port map (
      ADR0 => SER_COUNT_TY(0),
      ADR1 => VCC,
      ADR2 => SER_COUNT_TY(2),
      ADR3 => SER_COUNT_TY(1),
      O => SER_Result(2)
    );
  SER_COUNT_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X53Y1",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_3_DYMUX_2321,
      CE => VCC,
      CLK => SER_COUNT_TY_3_CLKINV_2311,
      SET => GND,
      RST => SER_COUNT_TY_3_SRINV_2312,
      O => SER_COUNT_TY(2)
    );
  SER_COUNT_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"78F0",
      LOC => "SLICE_X53Y1"
    )
    port map (
      ADR0 => SER_COUNT_TY(0),
      ADR1 => SER_COUNT_TY(2),
      ADR2 => SER_COUNT_TY(3),
      ADR3 => SER_COUNT_TY(1),
      O => SER_Result(3)
    );
  SER_COUNT_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X53Y1",
      INIT => '0'
    )
    port map (
      I => SER_COUNT_TY_3_DXMUX_2335,
      CE => VCC,
      CLK => SER_COUNT_TY_3_CLKINV_2311,
      SET => GND,
      RST => SER_COUNT_TY_3_SRINV_2312,
      O => SER_COUNT_TY(3)
    );
  DES_U3_Y11 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X45Y2"
    )
    port map (
      ADR0 => RESET_IBUF_shift4_645,
      ADR1 => VCC,
      ADR2 => DES_U3_Y1_637,
      ADR3 => VCC,
      O => DES_U3_Y11_2355
    );
  DES_U3_Y : X_FF
    generic map(
      LOC => "SLICE_X45Y2",
      INIT => '0'
    )
    port map (
      I => DES_U3_Y_DYMUX_2358,
      CE => VCC,
      CLK => DES_U3_Y_CLKINV_2347,
      SET => GND,
      RST => DES_U3_Y_FFY_RSTAND_2363,
      O => DES_U3_Y_638
    );
  DES_U3_Y_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X45Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_592,
      O => DES_U3_Y_FFY_RSTAND_2363
    );
  SER_REG_PS_Z_0_mux00011 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X45Y1"
    )
    port map (
      ADR0 => SER_REG_PS_Z(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_0_mux0001
    );
  SER_REG_PS_Z_0 : X_FF
    generic map(
      LOC => "SLICE_X45Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_1_DYMUX_2385,
      CE => VCC,
      CLK => SER_REG_PS_Z_1_CLKINV_2374,
      SET => SER_REG_PS_Z_1_SRINV_2375,
      RST => GND,
      O => SER_REG_PS_Z(0)
    );
  SER_REG_PS_Z_1_mux00011 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X45Y1"
    )
    port map (
      ADR0 => BUS_IN_0_IBUF_687,
      ADR1 => VCC,
      ADR2 => SER_REG_PS_Z(2),
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_1_mux0001
    );
  SER_REG_PS_Z_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_1_DXMUX_2399,
      CE => VCC,
      CLK => SER_REG_PS_Z_1_CLKINV_2374,
      SET => SER_REG_PS_Z_1_SRINV_2375,
      RST => GND,
      O => SER_REG_PS_Z(1)
    );
  SER_REG_PS_Z_2_mux00011 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => SER_REG_PS_Z(3),
      ADR1 => BUS_IN_1_IBUF_688,
      ADR2 => VCC,
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_2_mux0001
    );
  SER_REG_PS_Z_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_3_DYMUX_2425,
      CE => VCC,
      CLK => SER_REG_PS_Z_3_CLKINV_2415,
      SET => SER_REG_PS_Z_3_SRINV_2416,
      RST => GND,
      O => SER_REG_PS_Z(2)
    );
  SER_REG_PS_Z_3_mux00011 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SER_REG_PS_Z(4),
      ADR2 => BUS_IN_2_IBUF_689,
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_3_mux0001
    );
  SER_REG_PS_Z_3 : X_FF
    generic map(
      LOC => "SLICE_X44Y1",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_3_DXMUX_2439,
      CE => VCC,
      CLK => SER_REG_PS_Z_3_CLKINV_2415,
      SET => SER_REG_PS_Z_3_SRINV_2416,
      RST => GND,
      O => SER_REG_PS_Z(3)
    );
  SER_REG_PS_Z_4_mux00011 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X42Y0"
    )
    port map (
      ADR0 => SER_REG_PS_Z(5),
      ADR1 => BUS_IN_3_IBUF_690,
      ADR2 => VCC,
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_4_mux0001
    );
  SER_REG_PS_Z_4 : X_FF
    generic map(
      LOC => "SLICE_X42Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_5_DYMUX_2465,
      CE => VCC,
      CLK => SER_REG_PS_Z_5_CLKINV_2455,
      SET => SER_REG_PS_Z_5_SRINV_2456,
      RST => GND,
      O => SER_REG_PS_Z(4)
    );
  SER_REG_PS_Z_5_mux00011 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X42Y0"
    )
    port map (
      ADR0 => BUS_IN_4_IBUF_691,
      ADR1 => VCC,
      ADR2 => SER_REG_PS_Z(6),
      ADR3 => SER_T_LOAD_596,
      O => SER_REG_PS_Z_5_mux0001
    );
  SER_REG_PS_Z_5 : X_FF
    generic map(
      LOC => "SLICE_X42Y0",
      INIT => '1'
    )
    port map (
      I => SER_REG_PS_Z_5_DXMUX_2479,
      CE => VCC,
      CLK => SER_REG_PS_Z_5_CLKINV_2455,
      SET => SER_REG_PS_Z_5_SRINV_2456,
      RST => GND,
      O => SER_REG_PS_Z(5)
    );
  DES_U3_Mshreg_Y_SRL16E_CE_WSGAND : X_BUF
    generic map(
      LOC => "SLICE_X44Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => DES_U3_Y1_SRINV_1057,
      O => DES_U3_Y1_WSG
    );
  CLK_R_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_CLK_SEL_587,
      O => CLK_R_O
    );
  CLK_T_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD319",
      PATHPULSE => 658 ps
    )
    port map (
      I => BG_U1_TY(2),
      O => CLK_T_O
    );
  TX_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 658 ps
    )
    port map (
      I => TX_OBUF_814,
      O => TX_O
    );
  TX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 658 ps
    )
    port map (
      I => SER_RD_663,
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
      LOC => "SLICE_X53Y0"
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

