--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: BAUD_GEN_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 25 21:18:32 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf BAUD_GEN.pcf -rpw 100 -tpw 0 -ar Structure -tm BAUD_GEN -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim BAUD_GEN.ncd BAUD_GEN_timesim.vhd 
-- Device	: 3s1500fg320-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: BAUD_GEN.ncd
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\par\BAUD_GEN_timesim.vhd
-- # of Entities	: 1
-- Design Name	: BAUD_GEN
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

entity BAUD_GEN is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    CLK_R : out STD_LOGIC; 
    CLK_T : out STD_LOGIC; 
    SEL_B : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end BAUD_GEN;

architecture Structure of BAUD_GEN is
  signal SEL_B_2_IBUF_260 : STD_LOGIC; 
  signal SEL_B_0_IBUF_261 : STD_LOGIC; 
  signal SEL_B_1_IBUF_263 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_9_Q : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_11_Q : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_13_Q : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_15_Q : STD_LOGIC; 
  signal CLK_SEL_291 : STD_LOGIC; 
  signal CLK_IBUF1 : STD_LOGIC; 
  signal RESET_IBUF_294 : STD_LOGIC; 
  signal CLK_IBUF_296 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq00007_298 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq000019_299 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq000032_300 : STD_LOGIC; 
  signal T_and0001_0 : STD_LOGIC; 
  signal T_addsub0000_8_XORF_340 : STD_LOGIC; 
  signal T_addsub0000_8_CYINIT_339 : STD_LOGIC; 
  signal T_addsub0000_8_CY0F_338 : STD_LOGIC; 
  signal T_addsub0000_8_CYSELF_331 : STD_LOGIC; 
  signal T_addsub0000_8_BXINV_329 : STD_LOGIC; 
  signal T_addsub0000_8_XORG_327 : STD_LOGIC; 
  signal T_addsub0000_8_CYMUXG_326 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_8_Q : STD_LOGIC; 
  signal T_addsub0000_8_CY0G_324 : STD_LOGIC; 
  signal T_addsub0000_8_CYSELG_318 : STD_LOGIC; 
  signal T_addsub0000_10_XORF_379 : STD_LOGIC; 
  signal T_addsub0000_10_CYINIT_378 : STD_LOGIC; 
  signal T_addsub0000_10_CY0F_377 : STD_LOGIC; 
  signal T_addsub0000_10_XORG_369 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_10_Q : STD_LOGIC; 
  signal T_addsub0000_10_CYSELF_367 : STD_LOGIC; 
  signal T_addsub0000_10_CYMUXFAST_366 : STD_LOGIC; 
  signal T_addsub0000_10_CYAND_365 : STD_LOGIC; 
  signal T_addsub0000_10_FASTCARRY_364 : STD_LOGIC; 
  signal T_addsub0000_10_CYMUXG2_363 : STD_LOGIC; 
  signal T_addsub0000_10_CYMUXF2_362 : STD_LOGIC; 
  signal T_addsub0000_10_CY0G_361 : STD_LOGIC; 
  signal T_addsub0000_10_CYSELG_355 : STD_LOGIC; 
  signal T_addsub0000_12_XORF_418 : STD_LOGIC; 
  signal T_addsub0000_12_CYINIT_417 : STD_LOGIC; 
  signal T_addsub0000_12_CY0F_416 : STD_LOGIC; 
  signal T_addsub0000_12_XORG_408 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_12_Q : STD_LOGIC; 
  signal T_addsub0000_12_CYSELF_406 : STD_LOGIC; 
  signal T_addsub0000_12_CYMUXFAST_405 : STD_LOGIC; 
  signal T_addsub0000_12_CYAND_404 : STD_LOGIC; 
  signal T_addsub0000_12_FASTCARRY_403 : STD_LOGIC; 
  signal T_addsub0000_12_CYMUXG2_402 : STD_LOGIC; 
  signal T_addsub0000_12_CYMUXF2_401 : STD_LOGIC; 
  signal T_addsub0000_12_CY0G_400 : STD_LOGIC; 
  signal T_addsub0000_12_CYSELG_394 : STD_LOGIC; 
  signal T_addsub0000_14_XORF_457 : STD_LOGIC; 
  signal T_addsub0000_14_CYINIT_456 : STD_LOGIC; 
  signal T_addsub0000_14_CY0F_455 : STD_LOGIC; 
  signal T_addsub0000_14_XORG_447 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_14_Q : STD_LOGIC; 
  signal T_addsub0000_14_CYSELF_445 : STD_LOGIC; 
  signal T_addsub0000_14_CYMUXFAST_444 : STD_LOGIC; 
  signal T_addsub0000_14_CYAND_443 : STD_LOGIC; 
  signal T_addsub0000_14_FASTCARRY_442 : STD_LOGIC; 
  signal T_addsub0000_14_CYMUXG2_441 : STD_LOGIC; 
  signal T_addsub0000_14_CYMUXF2_440 : STD_LOGIC; 
  signal T_addsub0000_14_CY0G_439 : STD_LOGIC; 
  signal T_addsub0000_14_CYSELG_433 : STD_LOGIC; 
  signal T_addsub0000_16_XORF_496 : STD_LOGIC; 
  signal T_addsub0000_16_CYINIT_495 : STD_LOGIC; 
  signal T_addsub0000_16_CY0F_494 : STD_LOGIC; 
  signal T_addsub0000_16_XORG_486 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_16_Q : STD_LOGIC; 
  signal T_addsub0000_16_CYSELF_484 : STD_LOGIC; 
  signal T_addsub0000_16_CYMUXFAST_483 : STD_LOGIC; 
  signal T_addsub0000_16_CYAND_482 : STD_LOGIC; 
  signal T_addsub0000_16_FASTCARRY_481 : STD_LOGIC; 
  signal T_addsub0000_16_CYMUXG2_480 : STD_LOGIC; 
  signal T_addsub0000_16_CYMUXF2_479 : STD_LOGIC; 
  signal T_addsub0000_16_CY0G_478 : STD_LOGIC; 
  signal T_addsub0000_16_CYSELG_472 : STD_LOGIC; 
  signal T_addsub0000_18_XORF_527 : STD_LOGIC; 
  signal T_addsub0000_18_CYINIT_526 : STD_LOGIC; 
  signal T_addsub0000_18_CY0F_525 : STD_LOGIC; 
  signal T_addsub0000_18_CYSELF_519 : STD_LOGIC; 
  signal T_addsub0000_18_XORG_516 : STD_LOGIC; 
  signal Madd_T_addsub0000_cy_18_Q : STD_LOGIC; 
  signal SEL_B_0_INBUF : STD_LOGIC; 
  signal SEL_B_1_INBUF : STD_LOGIC; 
  signal SEL_B_2_INBUF : STD_LOGIC; 
  signal CLK_R_O : STD_LOGIC; 
  signal CLK_T_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_IBUF_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_IBUF_BUFG_I0_INV : STD_LOGIC; 
  signal CLK_SEL_or0000_F5MUX_603 : STD_LOGIC; 
  signal RESET_IBUF_rt_601 : STD_LOGIC; 
  signal CLK_SEL_or0000_BXINV_593 : STD_LOGIC; 
  signal CLK_SEL_or00001_591 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq0000 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq00007_pack_1 : STD_LOGIC; 
  signal T_19_DXMUX_657 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq000032_pack_1 : STD_LOGIC; 
  signal T_19_CLKINV_642 : STD_LOGIC; 
  signal T_19_CEINV_641 : STD_LOGIC; 
  signal T_18_DXMUX_690 : STD_LOGIC; 
  signal CLK_SEL_cmp_eq000019_pack_1 : STD_LOGIC; 
  signal T_18_CLKINV_675 : STD_LOGIC; 
  signal T_18_CEINV_674 : STD_LOGIC; 
  signal U1_TY_2_FFY_RST : STD_LOGIC; 
  signal U1_TY_2_DYMUX_711 : STD_LOGIC; 
  signal U1_TY_2_CLKINV_701 : STD_LOGIC; 
  signal T_9_DXMUX_751 : STD_LOGIC; 
  signal T_9_DYMUX_739 : STD_LOGIC; 
  signal T_9_CLKINV_731 : STD_LOGIC; 
  signal T_9_CEINV_730 : STD_LOGIC; 
  signal T_11_DXMUX_789 : STD_LOGIC; 
  signal T_11_DYMUX_777 : STD_LOGIC; 
  signal T_11_CLKINV_769 : STD_LOGIC; 
  signal T_11_CEINV_768 : STD_LOGIC; 
  signal T_13_DXMUX_827 : STD_LOGIC; 
  signal T_13_DYMUX_815 : STD_LOGIC; 
  signal T_13_CLKINV_807 : STD_LOGIC; 
  signal T_13_CEINV_806 : STD_LOGIC; 
  signal T_15_DXMUX_865 : STD_LOGIC; 
  signal T_15_DYMUX_853 : STD_LOGIC; 
  signal T_15_CLKINV_845 : STD_LOGIC; 
  signal T_15_CEINV_844 : STD_LOGIC; 
  signal T_17_DXMUX_903 : STD_LOGIC; 
  signal T_17_DYMUX_891 : STD_LOGIC; 
  signal T_17_CLKINV_883 : STD_LOGIC; 
  signal T_17_CEINV_882 : STD_LOGIC; 
  signal T_and0001 : STD_LOGIC; 
  signal CLK_SEL_and0000 : STD_LOGIC; 
  signal CLK_SEL_DXMUX_944 : STD_LOGIC; 
  signal CLK_SEL_CLKINV_939 : STD_LOGIC; 
  signal CLK_SEL_CEINV_938 : STD_LOGIC; 
  signal U1_TY_0_FFX_RST : STD_LOGIC; 
  signal U1_TY_0_DXMUX_980 : STD_LOGIC; 
  signal U1_TY_0_DYMUX_972 : STD_LOGIC; 
  signal U1_TY_0_SRINV_962 : STD_LOGIC; 
  signal U1_TY_0_CLKINV_961 : STD_LOGIC; 
  signal CLK_SEL_FFX_SET : STD_LOGIC; 
  signal CLK_SEL_FFX_RSTAND_951 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal T : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal T_addsub0000 : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal U1_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Madd_T_addsub0000_lut : STD_LOGIC_VECTOR ( 19 downto 8 ); 
  signal T_mux0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  T_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_8_XORF_340,
      O => T_addsub0000(8)
    );
  T_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y0"
    )
    port map (
      I0 => T_addsub0000_8_CYINIT_339,
      I1 => Madd_T_addsub0000_lut(8),
      O => T_addsub0000_8_XORF_340
    );
  T_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y0"
    )
    port map (
      IA => T_addsub0000_8_CY0F_338,
      IB => T_addsub0000_8_CYINIT_339,
      SEL => T_addsub0000_8_CYSELF_331,
      O => Madd_T_addsub0000_cy_8_Q
    );
  T_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_8_BXINV_329,
      O => T_addsub0000_8_CYINIT_339
    );
  T_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(8),
      O => T_addsub0000_8_CY0F_338
    );
  T_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(8),
      O => T_addsub0000_8_CYSELF_331
    );
  T_addsub0000_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => '0',
      O => T_addsub0000_8_BXINV_329
    );
  T_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_8_XORG_327,
      O => T_addsub0000(9)
    );
  T_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y0"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_8_Q,
      I1 => Madd_T_addsub0000_lut(9),
      O => T_addsub0000_8_XORG_327
    );
  T_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_8_CYMUXG_326,
      O => Madd_T_addsub0000_cy_9_Q
    );
  T_addsub0000_8_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X42Y0"
    )
    port map (
      IA => T_addsub0000_8_CY0G_324,
      IB => Madd_T_addsub0000_cy_8_Q,
      SEL => T_addsub0000_8_CYSELG_318,
      O => T_addsub0000_8_CYMUXG_326
    );
  T_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(9),
      O => T_addsub0000_8_CY0G_324
    );
  T_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X42Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(9),
      O => T_addsub0000_8_CYSELG_318
    );
  T_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_10_XORF_379,
      O => T_addsub0000(10)
    );
  T_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      I0 => T_addsub0000_10_CYINIT_378,
      I1 => Madd_T_addsub0000_lut(10),
      O => T_addsub0000_10_XORF_379
    );
  T_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      IA => T_addsub0000_10_CY0F_377,
      IB => T_addsub0000_10_CYINIT_378,
      SEL => T_addsub0000_10_CYSELF_367,
      O => Madd_T_addsub0000_cy_10_Q
    );
  T_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      IA => T_addsub0000_10_CY0F_377,
      IB => T_addsub0000_10_CY0F_377,
      SEL => T_addsub0000_10_CYSELF_367,
      O => T_addsub0000_10_CYMUXF2_362
    );
  T_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_9_Q,
      O => T_addsub0000_10_CYINIT_378
    );
  T_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(10),
      O => T_addsub0000_10_CY0F_377
    );
  T_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(10),
      O => T_addsub0000_10_CYSELF_367
    );
  T_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_10_XORG_369,
      O => T_addsub0000(11)
    );
  T_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_10_Q,
      I1 => Madd_T_addsub0000_lut(11),
      O => T_addsub0000_10_XORG_369
    );
  T_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_10_CYMUXFAST_366,
      O => Madd_T_addsub0000_cy_11_Q
    );
  T_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_9_Q,
      O => T_addsub0000_10_FASTCARRY_364
    );
  T_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      I0 => T_addsub0000_10_CYSELG_355,
      I1 => T_addsub0000_10_CYSELF_367,
      O => T_addsub0000_10_CYAND_365
    );
  T_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      IA => T_addsub0000_10_CYMUXG2_363,
      IB => T_addsub0000_10_FASTCARRY_364,
      SEL => T_addsub0000_10_CYAND_365,
      O => T_addsub0000_10_CYMUXFAST_366
    );
  T_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y1"
    )
    port map (
      IA => T_addsub0000_10_CY0G_361,
      IB => T_addsub0000_10_CYMUXF2_362,
      SEL => T_addsub0000_10_CYSELG_355,
      O => T_addsub0000_10_CYMUXG2_363
    );
  T_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(11),
      O => T_addsub0000_10_CY0G_361
    );
  T_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X42Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(11),
      O => T_addsub0000_10_CYSELG_355
    );
  T_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_12_XORF_418,
      O => T_addsub0000(12)
    );
  T_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      I0 => T_addsub0000_12_CYINIT_417,
      I1 => Madd_T_addsub0000_lut(12),
      O => T_addsub0000_12_XORF_418
    );
  T_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      IA => T_addsub0000_12_CY0F_416,
      IB => T_addsub0000_12_CYINIT_417,
      SEL => T_addsub0000_12_CYSELF_406,
      O => Madd_T_addsub0000_cy_12_Q
    );
  T_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      IA => T_addsub0000_12_CY0F_416,
      IB => T_addsub0000_12_CY0F_416,
      SEL => T_addsub0000_12_CYSELF_406,
      O => T_addsub0000_12_CYMUXF2_401
    );
  T_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_11_Q,
      O => T_addsub0000_12_CYINIT_417
    );
  T_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(12),
      O => T_addsub0000_12_CY0F_416
    );
  T_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(12),
      O => T_addsub0000_12_CYSELF_406
    );
  T_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_12_XORG_408,
      O => T_addsub0000(13)
    );
  T_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_12_Q,
      I1 => Madd_T_addsub0000_lut(13),
      O => T_addsub0000_12_XORG_408
    );
  T_addsub0000_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_12_CYMUXFAST_405,
      O => Madd_T_addsub0000_cy_13_Q
    );
  T_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_11_Q,
      O => T_addsub0000_12_FASTCARRY_403
    );
  T_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      I0 => T_addsub0000_12_CYSELG_394,
      I1 => T_addsub0000_12_CYSELF_406,
      O => T_addsub0000_12_CYAND_404
    );
  T_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      IA => T_addsub0000_12_CYMUXG2_402,
      IB => T_addsub0000_12_FASTCARRY_403,
      SEL => T_addsub0000_12_CYAND_404,
      O => T_addsub0000_12_CYMUXFAST_405
    );
  T_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y2"
    )
    port map (
      IA => T_addsub0000_12_CY0G_400,
      IB => T_addsub0000_12_CYMUXF2_401,
      SEL => T_addsub0000_12_CYSELG_394,
      O => T_addsub0000_12_CYMUXG2_402
    );
  T_addsub0000_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(13),
      O => T_addsub0000_12_CY0G_400
    );
  T_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X42Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(13),
      O => T_addsub0000_12_CYSELG_394
    );
  T_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_14_XORF_457,
      O => T_addsub0000(14)
    );
  T_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      I0 => T_addsub0000_14_CYINIT_456,
      I1 => Madd_T_addsub0000_lut(14),
      O => T_addsub0000_14_XORF_457
    );
  T_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      IA => T_addsub0000_14_CY0F_455,
      IB => T_addsub0000_14_CYINIT_456,
      SEL => T_addsub0000_14_CYSELF_445,
      O => Madd_T_addsub0000_cy_14_Q
    );
  T_addsub0000_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      IA => T_addsub0000_14_CY0F_455,
      IB => T_addsub0000_14_CY0F_455,
      SEL => T_addsub0000_14_CYSELF_445,
      O => T_addsub0000_14_CYMUXF2_440
    );
  T_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_13_Q,
      O => T_addsub0000_14_CYINIT_456
    );
  T_addsub0000_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(14),
      O => T_addsub0000_14_CY0F_455
    );
  T_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(14),
      O => T_addsub0000_14_CYSELF_445
    );
  T_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_14_XORG_447,
      O => T_addsub0000(15)
    );
  T_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_14_Q,
      I1 => Madd_T_addsub0000_lut(15),
      O => T_addsub0000_14_XORG_447
    );
  T_addsub0000_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_14_CYMUXFAST_444,
      O => Madd_T_addsub0000_cy_15_Q
    );
  T_addsub0000_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_13_Q,
      O => T_addsub0000_14_FASTCARRY_442
    );
  T_addsub0000_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      I0 => T_addsub0000_14_CYSELG_433,
      I1 => T_addsub0000_14_CYSELF_445,
      O => T_addsub0000_14_CYAND_443
    );
  T_addsub0000_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      IA => T_addsub0000_14_CYMUXG2_441,
      IB => T_addsub0000_14_FASTCARRY_442,
      SEL => T_addsub0000_14_CYAND_443,
      O => T_addsub0000_14_CYMUXFAST_444
    );
  T_addsub0000_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y3"
    )
    port map (
      IA => T_addsub0000_14_CY0G_439,
      IB => T_addsub0000_14_CYMUXF2_440,
      SEL => T_addsub0000_14_CYSELG_433,
      O => T_addsub0000_14_CYMUXG2_441
    );
  T_addsub0000_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(15),
      O => T_addsub0000_14_CY0G_439
    );
  T_addsub0000_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X42Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(15),
      O => T_addsub0000_14_CYSELG_433
    );
  Madd_T_addsub0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X42Y3"
    )
    port map (
      ADR0 => T(15),
      ADR1 => SEL_B_1_IBUF_263,
      ADR2 => SEL_B_2_IBUF_260,
      ADR3 => SEL_B_0_IBUF_261,
      O => Madd_T_addsub0000_lut(15)
    );
  T_addsub0000_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_16_XORF_496,
      O => T_addsub0000(16)
    );
  T_addsub0000_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      I0 => T_addsub0000_16_CYINIT_495,
      I1 => Madd_T_addsub0000_lut(16),
      O => T_addsub0000_16_XORF_496
    );
  T_addsub0000_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      IA => T_addsub0000_16_CY0F_494,
      IB => T_addsub0000_16_CYINIT_495,
      SEL => T_addsub0000_16_CYSELF_484,
      O => Madd_T_addsub0000_cy_16_Q
    );
  T_addsub0000_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      IA => T_addsub0000_16_CY0F_494,
      IB => T_addsub0000_16_CY0F_494,
      SEL => T_addsub0000_16_CYSELF_484,
      O => T_addsub0000_16_CYMUXF2_479
    );
  T_addsub0000_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_15_Q,
      O => T_addsub0000_16_CYINIT_495
    );
  T_addsub0000_16_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(16),
      O => T_addsub0000_16_CY0F_494
    );
  T_addsub0000_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(16),
      O => T_addsub0000_16_CYSELF_484
    );
  T_addsub0000_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_16_XORG_486,
      O => T_addsub0000(17)
    );
  T_addsub0000_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_16_Q,
      I1 => Madd_T_addsub0000_lut(17),
      O => T_addsub0000_16_XORG_486
    );
  T_addsub0000_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_cy_15_Q,
      O => T_addsub0000_16_FASTCARRY_481
    );
  T_addsub0000_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      I0 => T_addsub0000_16_CYSELG_472,
      I1 => T_addsub0000_16_CYSELF_484,
      O => T_addsub0000_16_CYAND_482
    );
  T_addsub0000_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      IA => T_addsub0000_16_CYMUXG2_480,
      IB => T_addsub0000_16_FASTCARRY_481,
      SEL => T_addsub0000_16_CYAND_482,
      O => T_addsub0000_16_CYMUXFAST_483
    );
  T_addsub0000_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y4"
    )
    port map (
      IA => T_addsub0000_16_CY0G_478,
      IB => T_addsub0000_16_CYMUXF2_479,
      SEL => T_addsub0000_16_CYSELG_472,
      O => T_addsub0000_16_CYMUXG2_480
    );
  T_addsub0000_16_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(17),
      O => T_addsub0000_16_CY0G_478
    );
  T_addsub0000_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X42Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(17),
      O => T_addsub0000_16_CYSELG_472
    );
  T_addsub0000_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_18_XORF_527,
      O => T_addsub0000(18)
    );
  T_addsub0000_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X42Y5"
    )
    port map (
      I0 => T_addsub0000_18_CYINIT_526,
      I1 => Madd_T_addsub0000_lut(18),
      O => T_addsub0000_18_XORF_527
    );
  T_addsub0000_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X42Y5"
    )
    port map (
      IA => T_addsub0000_18_CY0F_525,
      IB => T_addsub0000_18_CYINIT_526,
      SEL => T_addsub0000_18_CYSELF_519,
      O => Madd_T_addsub0000_cy_18_Q
    );
  T_addsub0000_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X42Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_16_CYMUXFAST_483,
      O => T_addsub0000_18_CYINIT_526
    );
  T_addsub0000_18_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X42Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T(18),
      O => T_addsub0000_18_CY0F_525
    );
  T_addsub0000_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X42Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => Madd_T_addsub0000_lut(18),
      O => T_addsub0000_18_CYSELF_519
    );
  T_addsub0000_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_addsub0000_18_XORG_516,
      O => T_addsub0000(19)
    );
  T_addsub0000_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X42Y5"
    )
    port map (
      I0 => Madd_T_addsub0000_cy_18_Q,
      I1 => Madd_T_addsub0000_lut(19),
      O => T_addsub0000_18_XORG_516
    );
  SEL_B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B(0),
      O => SEL_B_0_INBUF
    );
  SEL_B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B(1),
      O => SEL_B_1_INBUF
    );
  SEL_B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B(2),
      O => SEL_B_2_INBUF
    );
  SEL_B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B_2_INBUF,
      O => SEL_B_2_IBUF_260
    );
  CLK_R_OBUF : X_OBUF
    generic map(
      LOC => "PAD319"
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
      LOC => "PAD328",
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
      O => CLK_IBUF_296
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
  CLK_SEL_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X49Y0"
    )
    port map (
      IA => CLK_SEL_or00001_591,
      IB => RESET_IBUF_rt_601,
      SEL => CLK_SEL_or0000_BXINV_593,
      O => CLK_SEL_or0000_F5MUX_603
    );
  CLK_SEL_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B_2_IBUF_260,
      O => CLK_SEL_or0000_BXINV_593
    );
  CLK_SEL_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_cmp_eq00007_pack_1,
      O => CLK_SEL_cmp_eq00007_298
    );
  CLK_SEL_cmp_eq00007 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X44Y5"
    )
    port map (
      ADR0 => T(19),
      ADR1 => T(18),
      ADR2 => T(16),
      ADR3 => T(17),
      O => CLK_SEL_cmp_eq00007_pack_1
    );
  T_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(0),
      O => T_19_DXMUX_657
    );
  T_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_cmp_eq000032_pack_1,
      O => CLK_SEL_cmp_eq000032_300
    );
  T_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_19_CLKINV_642
    );
  T_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_19_CEINV_641
    );
  T_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(1),
      O => T_18_DXMUX_690
    );
  T_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_cmp_eq000019_pack_1,
      O => CLK_SEL_cmp_eq000019_299
    );
  T_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_18_CLKINV_675
    );
  T_18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_18_CEINV_674
    );
  U1_TY_2_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X54Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_294,
      O => U1_TY_2_FFY_RST
    );
  U1_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y0",
      INIT => '0'
    )
    port map (
      I => U1_TY_2_DYMUX_711,
      CE => VCC,
      CLK => U1_TY_2_CLKINV_701,
      SET => GND,
      RST => U1_TY_2_FFY_RST,
      O => U1_TY(2)
    );
  U1_TY_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => Result(2),
      O => U1_TY_2_DYMUX_711
    );
  U1_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_291,
      O => U1_TY_2_CLKINV_701
    );
  T_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(10),
      O => T_9_DXMUX_751
    );
  T_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(11),
      O => T_9_DYMUX_739
    );
  T_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_9_CLKINV_731
    );
  T_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_9_CEINV_730
    );
  T_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(8),
      O => T_11_DXMUX_789
    );
  T_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(9),
      O => T_11_DYMUX_777
    );
  T_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_11_CLKINV_769
    );
  T_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_11_CEINV_768
    );
  T_12 : X_FF
    generic map(
      LOC => "SLICE_X45Y4",
      INIT => '0'
    )
    port map (
      I => T_13_DYMUX_815,
      CE => T_13_CEINV_806,
      CLK => T_13_CLKINV_807,
      SET => GND,
      RST => GND,
      O => T(12)
    );
  T_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(6),
      O => T_13_DXMUX_827
    );
  T_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(7),
      O => T_13_DYMUX_815
    );
  T_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_13_CLKINV_807
    );
  T_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y4",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_13_CEINV_806
    );
  T_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X45Y4"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000019_299,
      ADR1 => CLK_SEL_cmp_eq00007_298,
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => T_addsub0000(12),
      O => T_mux0001(7)
    );
  T_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(4),
      O => T_15_DXMUX_865
    );
  T_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(5),
      O => T_15_DYMUX_853
    );
  T_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_15_CLKINV_845
    );
  T_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y2",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_15_CEINV_844
    );
  T_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(2),
      O => T_17_DXMUX_903
    );
  T_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_mux0001(3),
      O => T_17_DYMUX_891
    );
  T_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => T_17_CLKINV_883
    );
  T_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y5",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001_0,
      O => T_17_CEINV_882
    );
  T_17 : X_FF
    generic map(
      LOC => "SLICE_X43Y5",
      INIT => '0'
    )
    port map (
      I => T_17_DXMUX_903,
      CE => T_17_CEINV_882,
      CLK => T_17_CLKINV_883,
      SET => GND,
      RST => GND,
      O => T(17)
    );
  T_and00011 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => SEL_B_1_IBUF_263,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => RESET_IBUF_294,
      O => T_and0001
    );
  T_and0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => T_and0001,
      O => T_and0001_0
    );
  CLK_SEL_and00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X48Y0"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => CLK_IBUF1,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => CLK_SEL_and0000
    );
  CLK_SEL_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_291,
      O => CLK_SEL_DXMUX_944
    );
  CLK_SEL_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_IBUF_296,
      O => CLK_SEL_CLKINV_939
    );
  CLK_SEL_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_cmp_eq0000,
      O => CLK_SEL_CEINV_938
    );
  U1_TY_0_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X54Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => U1_TY_0_SRINV_962,
      O => U1_TY_0_FFX_RST
    );
  U1_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y1",
      INIT => '0'
    )
    port map (
      I => U1_TY_0_DXMUX_980,
      CE => VCC,
      CLK => U1_TY_0_CLKINV_961,
      SET => GND,
      RST => U1_TY_0_FFX_RST,
      O => U1_TY(0)
    );
  U1_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X54Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => U1_TY(0),
      O => U1_TY_0_DXMUX_980
    );
  U1_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => Result(1),
      O => U1_TY_0_DYMUX_972
    );
  U1_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_IBUF_294,
      O => U1_TY_0_SRINV_962
    );
  U1_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_291,
      O => U1_TY_0_CLKINV_961
    );
  Madd_T_addsub0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"C66C",
      LOC => "SLICE_X42Y1"
    )
    port map (
      ADR0 => SEL_B_1_IBUF_263,
      ADR1 => T(10),
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_2_IBUF_260,
      O => Madd_T_addsub0000_lut(10)
    );
  CLK_SEL_cmp_eq000045 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X44Y5"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000032_300,
      ADR1 => VCC,
      ADR2 => CLK_SEL_cmp_eq00007_298,
      ADR3 => CLK_SEL_cmp_eq000019_299,
      O => CLK_SEL_cmp_eq0000
    );
  T_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X45Y4"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000019_299,
      ADR1 => CLK_SEL_cmp_eq00007_298,
      ADR2 => T_addsub0000(13),
      ADR3 => CLK_SEL_cmp_eq000032_300,
      O => T_mux0001(6)
    );
  Madd_T_addsub0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"66A6",
      LOC => "SLICE_X42Y0"
    )
    port map (
      ADR0 => T(9),
      ADR1 => SEL_B_2_IBUF_260,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => Madd_T_addsub0000_lut(9)
    );
  Madd_T_addsub0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X42Y0"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => T(8),
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => VCC,
      O => Madd_T_addsub0000_lut(8)
    );
  Madd_T_addsub0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X42Y1"
    )
    port map (
      ADR0 => T(11),
      ADR1 => SEL_B_1_IBUF_263,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_2_IBUF_260,
      O => Madd_T_addsub0000_lut(11)
    );
  Madd_T_addsub0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"AA6A",
      LOC => "SLICE_X42Y2"
    )
    port map (
      ADR0 => T(13),
      ADR1 => SEL_B_2_IBUF_260,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => Madd_T_addsub0000_lut(13)
    );
  Madd_T_addsub0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"C96C",
      LOC => "SLICE_X42Y2"
    )
    port map (
      ADR0 => SEL_B_1_IBUF_263,
      ADR1 => T(12),
      ADR2 => SEL_B_2_IBUF_260,
      ADR3 => SEL_B_0_IBUF_261,
      O => Madd_T_addsub0000_lut(12)
    );
  Madd_T_addsub0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"6C66",
      LOC => "SLICE_X42Y3"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => T(14),
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => Madd_T_addsub0000_lut(14)
    );
  Madd_T_addsub0000_lut_17_Q : X_LUT4
    generic map(
      INIT => X"999C",
      LOC => "SLICE_X42Y4"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => T(17),
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => Madd_T_addsub0000_lut(17)
    );
  Madd_T_addsub0000_lut_16_Q : X_LUT4
    generic map(
      INIT => X"A966",
      LOC => "SLICE_X42Y4"
    )
    port map (
      ADR0 => T(16),
      ADR1 => SEL_B_1_IBUF_263,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_2_IBUF_260,
      O => Madd_T_addsub0000_lut(16)
    );
  Madd_T_addsub0000_lut_19_Q : X_LUT4
    generic map(
      INIT => X"AA9A",
      LOC => "SLICE_X42Y5"
    )
    port map (
      ADR0 => T(19),
      ADR1 => SEL_B_1_IBUF_263,
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_2_IBUF_260,
      O => Madd_T_addsub0000_lut(19)
    );
  Madd_T_addsub0000_lut_18_Q : X_LUT4
    generic map(
      INIT => X"C99C",
      LOC => "SLICE_X42Y5"
    )
    port map (
      ADR0 => SEL_B_2_IBUF_260,
      ADR1 => T(18),
      ADR2 => SEL_B_0_IBUF_261,
      ADR3 => SEL_B_1_IBUF_263,
      O => Madd_T_addsub0000_lut(18)
    );
  SEL_B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B_0_INBUF,
      O => SEL_B_0_IBUF_261
    );
  SEL_B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 658 ps
    )
    port map (
      I => SEL_B_1_INBUF,
      O => SEL_B_1_IBUF_263
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
      LOC => "PAD328",
      PATHPULSE => 658 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_294
    );
  CLK_SEL_or00001 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X49Y0"
    )
    port map (
      ADR0 => CLK_IBUF1,
      ADR1 => SEL_B_0_IBUF_261,
      ADR2 => SEL_B_1_IBUF_263,
      ADR3 => RESET_IBUF_294,
      O => CLK_SEL_or00001_591
    );
  RESET_IBUF_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RESET_IBUF_294,
      O => RESET_IBUF_rt_601
    );
  CLK_SEL_cmp_eq000032 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X43Y3"
    )
    port map (
      ADR0 => T(11),
      ADR1 => T(8),
      ADR2 => T(10),
      ADR3 => T(9),
      O => CLK_SEL_cmp_eq000032_pack_1
    );
  T_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X43Y3"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq00007_298,
      ADR1 => CLK_SEL_cmp_eq000019_299,
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => T_addsub0000(19),
      O => T_mux0001(0)
    );
  T_19 : X_FF
    generic map(
      LOC => "SLICE_X43Y3",
      INIT => '0'
    )
    port map (
      I => T_19_DXMUX_657,
      CE => T_19_CEINV_641,
      CLK => T_19_CLKINV_642,
      SET => GND,
      RST => GND,
      O => T(19)
    );
  CLK_SEL_cmp_eq000019 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X44Y4"
    )
    port map (
      ADR0 => T(13),
      ADR1 => T(12),
      ADR2 => T(14),
      ADR3 => T(15),
      O => CLK_SEL_cmp_eq000019_pack_1
    );
  T_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X44Y4"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq00007_298,
      ADR1 => CLK_SEL_cmp_eq000032_300,
      ADR2 => T_addsub0000(18),
      ADR3 => CLK_SEL_cmp_eq000019_299,
      O => T_mux0001(1)
    );
  T_18 : X_FF
    generic map(
      LOC => "SLICE_X44Y4",
      INIT => '0'
    )
    port map (
      I => T_18_DXMUX_690,
      CE => T_18_CEINV_674,
      CLK => T_18_CLKINV_675,
      SET => GND,
      RST => GND,
      O => T(18)
    );
  U1_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3CCC",
      LOC => "SLICE_X54Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_TY(2),
      ADR2 => U1_TY(1),
      ADR3 => U1_TY(0),
      O => Result(2)
    );
  T_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X43Y0"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000019_299,
      ADR1 => CLK_SEL_cmp_eq00007_298,
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => T_addsub0000(8),
      O => T_mux0001(11)
    );
  T_13 : X_FF
    generic map(
      LOC => "SLICE_X45Y4",
      INIT => '0'
    )
    port map (
      I => T_13_DXMUX_827,
      CE => T_13_CEINV_806,
      CLK => T_13_CLKINV_807,
      SET => GND,
      RST => GND,
      O => T(13)
    );
  T_8 : X_FF
    generic map(
      LOC => "SLICE_X43Y0",
      INIT => '0'
    )
    port map (
      I => T_9_DYMUX_739,
      CE => T_9_CEINV_730,
      CLK => T_9_CLKINV_731,
      SET => GND,
      RST => GND,
      O => T(8)
    );
  T_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X43Y0"
    )
    port map (
      ADR0 => T_addsub0000(9),
      ADR1 => CLK_SEL_cmp_eq000019_299,
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => CLK_SEL_cmp_eq00007_298,
      O => T_mux0001(10)
    );
  T_9 : X_FF
    generic map(
      LOC => "SLICE_X43Y0",
      INIT => '0'
    )
    port map (
      I => T_9_DXMUX_751,
      CE => T_9_CEINV_730,
      CLK => T_9_CLKINV_731,
      SET => GND,
      RST => GND,
      O => T(9)
    );
  T_10 : X_FF
    generic map(
      LOC => "SLICE_X43Y1",
      INIT => '0'
    )
    port map (
      I => T_11_DYMUX_777,
      CE => T_11_CEINV_768,
      CLK => T_11_CLKINV_769,
      SET => GND,
      RST => GND,
      O => T(10)
    );
  T_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X43Y1"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000032_300,
      ADR1 => CLK_SEL_cmp_eq000019_299,
      ADR2 => T_addsub0000(10),
      ADR3 => CLK_SEL_cmp_eq00007_298,
      O => T_mux0001(9)
    );
  T_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X43Y1"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq00007_298,
      ADR1 => T_addsub0000(11),
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => CLK_SEL_cmp_eq000019_299,
      O => T_mux0001(8)
    );
  T_11 : X_FF
    generic map(
      LOC => "SLICE_X43Y1",
      INIT => '0'
    )
    port map (
      I => T_11_DXMUX_789,
      CE => T_11_CEINV_768,
      CLK => T_11_CLKINV_769,
      SET => GND,
      RST => GND,
      O => T(11)
    );
  T_14 : X_FF
    generic map(
      LOC => "SLICE_X43Y2",
      INIT => '0'
    )
    port map (
      I => T_15_DYMUX_853,
      CE => T_15_CEINV_844,
      CLK => T_15_CLKINV_845,
      SET => GND,
      RST => GND,
      O => T(14)
    );
  T_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X43Y2"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq00007_298,
      ADR1 => CLK_SEL_cmp_eq000019_299,
      ADR2 => T_addsub0000(14),
      ADR3 => CLK_SEL_cmp_eq000032_300,
      O => T_mux0001(5)
    );
  T_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X43Y2"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq00007_298,
      ADR1 => T_addsub0000(15),
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => CLK_SEL_cmp_eq000019_299,
      O => T_mux0001(4)
    );
  T_15 : X_FF
    generic map(
      LOC => "SLICE_X43Y2",
      INIT => '0'
    )
    port map (
      I => T_15_DXMUX_865,
      CE => T_15_CEINV_844,
      CLK => T_15_CLKINV_845,
      SET => GND,
      RST => GND,
      O => T(15)
    );
  T_16 : X_FF
    generic map(
      LOC => "SLICE_X43Y5",
      INIT => '0'
    )
    port map (
      I => T_17_DYMUX_891,
      CE => T_17_CEINV_882,
      CLK => T_17_CLKINV_883,
      SET => GND,
      RST => GND,
      O => T(16)
    );
  T_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X43Y5"
    )
    port map (
      ADR0 => CLK_SEL_cmp_eq000019_299,
      ADR1 => CLK_SEL_cmp_eq00007_298,
      ADR2 => CLK_SEL_cmp_eq000032_300,
      ADR3 => T_addsub0000(16),
      O => T_mux0001(3)
    );
  T_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X43Y5"
    )
    port map (
      ADR0 => T_addsub0000(17),
      ADR1 => CLK_SEL_cmp_eq00007_298,
      ADR2 => CLK_SEL_cmp_eq000019_299,
      ADR3 => CLK_SEL_cmp_eq000032_300,
      O => T_mux0001(2)
    );
  CLK_SEL : X_FF
    generic map(
      LOC => "SLICE_X49Y3",
      INIT => '0'
    )
    port map (
      I => CLK_SEL_DXMUX_944,
      CE => CLK_SEL_CEINV_938,
      CLK => CLK_SEL_CLKINV_939,
      SET => CLK_SEL_FFX_SET,
      RST => CLK_SEL_FFX_RSTAND_951,
      O => CLK_SEL_291
    );
  CLK_SEL_FFX_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_and0000,
      O => CLK_SEL_FFX_SET
    );
  CLK_SEL_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X49Y3",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_or0000_F5MUX_603,
      O => CLK_SEL_FFX_RSTAND_951
    );
  U1_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X54Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U1_TY(1),
      ADR3 => U1_TY(0),
      O => Result(1)
    );
  U1_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y1",
      INIT => '0'
    )
    port map (
      I => U1_TY_0_DYMUX_972,
      CE => VCC,
      CLK => U1_TY_0_CLKINV_961,
      SET => GND,
      RST => U1_TY_0_SRINV_962,
      O => U1_TY(1)
    );
  CLK_R_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD319",
      PATHPULSE => 658 ps
    )
    port map (
      I => CLK_SEL_291,
      O => CLK_R_O
    );
  CLK_T_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 658 ps
    )
    port map (
      I => U1_TY(2),
      O => CLK_T_O
    );
  NlwBlock_BAUD_GEN_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_BAUD_GEN_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

