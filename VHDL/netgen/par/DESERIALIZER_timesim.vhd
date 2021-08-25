--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: DESERIALIZER_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 25 17:51:07 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf DESERIALIZER.pcf -rpw 100 -tpw 0 -ar Structure -tm DESERIALIZER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim DESERIALIZER.ncd DESERIALIZER_timesim.vhd 
-- Device	: 3s1500fg320-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: DESERIALIZER.ncd
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\par\DESERIALIZER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: DESERIALIZER
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

entity DESERIALIZER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    RX_READY : out STD_LOGIC; 
    RX : in STD_LOGIC := 'X'; 
    BUS_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end DESERIALIZER;

architecture Structure of DESERIALIZER is
  signal RD_or0000_0 : STD_LOGIC; 
  signal T_START_0 : STD_LOGIC; 
  signal RD_0_not0000_0 : STD_LOGIC; 
  signal RX_IBUF_179 : STD_LOGIC; 
  signal RESET_IBUF_180 : STD_LOGIC; 
  signal T_END : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal RD_197 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U3_Y_202 : STD_LOGIC; 
  signal RX_READY_O : STD_LOGIC; 
  signal RX_INBUF : STD_LOGIC; 
  signal BUS_OUT_0_O : STD_LOGIC; 
  signal BUS_OUT_1_O : STD_LOGIC; 
  signal BUS_OUT_2_O : STD_LOGIC; 
  signal BUS_OUT_3_O : STD_LOGIC; 
  signal BUS_OUT_4_O : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_OFF1_RST : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OFF_O1INV_352 : STD_LOGIC; 
  signal BUS_OUT_4_OUTPUT_OTCLK1INV_348 : STD_LOGIC; 
  signal BUS_OUT_5_O : STD_LOGIC; 
  signal BUS_OUT_6_O : STD_LOGIC; 
  signal BUS_OUT_7_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal T_END_F5MUX_473 : STD_LOGIC; 
  signal T_END1_471 : STD_LOGIC; 
  signal T_END_BXINV_466 : STD_LOGIC; 
  signal T_END_G : STD_LOGIC; 
  signal U4_TY_2_DYMUX_491 : STD_LOGIC; 
  signal U4_TY_2_CLKINV_481 : STD_LOGIC; 
  signal U5_TY_3_DXMUX_533 : STD_LOGIC; 
  signal U5_TY_3_DYMUX_519 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal U5_TY_3_SRINV_510 : STD_LOGIC; 
  signal U5_TY_3_CLKINV_509 : STD_LOGIC; 
  signal RD_or0000_561 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal U2_T_1_DXMUX_581 : STD_LOGIC; 
  signal U2_T_1_DYMUX_573 : STD_LOGIC; 
  signal U2_T_1_SRINV_571 : STD_LOGIC; 
  signal U2_T_1_CLKINV_570 : STD_LOGIC; 
  signal U2_T_3_DXMUX_605 : STD_LOGIC; 
  signal U2_T_3_DYMUX_597 : STD_LOGIC; 
  signal U2_T_3_SRINV_595 : STD_LOGIC; 
  signal U2_T_3_CLKINV_594 : STD_LOGIC; 
  signal U2_T_5_DXMUX_629 : STD_LOGIC; 
  signal U2_T_5_DYMUX_621 : STD_LOGIC; 
  signal U2_T_5_SRINV_619 : STD_LOGIC; 
  signal U2_T_5_CLKINV_618 : STD_LOGIC; 
  signal RD_DYMUX_645 : STD_LOGIC; 
  signal RD_BYINV_644 : STD_LOGIC; 
  signal RD_CLKINVNOT : STD_LOGIC; 
  signal RD_CEINV_641 : STD_LOGIC; 
  signal U2_T_7_DXMUX_669 : STD_LOGIC; 
  signal U2_T_7_DYMUX_661 : STD_LOGIC; 
  signal U2_T_7_SRINV_659 : STD_LOGIC; 
  signal U2_T_7_CLKINV_658 : STD_LOGIC; 
  signal U4_TY_0_DXMUX_702 : STD_LOGIC; 
  signal U4_TY_0_DYMUX_694 : STD_LOGIC; 
  signal U4_TY_0_SRINV_684 : STD_LOGIC; 
  signal U4_TY_0_CLKINV_683 : STD_LOGIC; 
  signal U3_T_1_DXMUX_726 : STD_LOGIC; 
  signal U3_T_1_DYMUX_718 : STD_LOGIC; 
  signal U3_T_1_SRINV_716 : STD_LOGIC; 
  signal U3_T_1_CLKINV_715 : STD_LOGIC; 
  signal U3_T_3_DXMUX_750 : STD_LOGIC; 
  signal U3_T_3_DYMUX_742 : STD_LOGIC; 
  signal U3_T_3_SRINV_740 : STD_LOGIC; 
  signal U3_T_3_CLKINV_739 : STD_LOGIC; 
  signal U3_Y_DYMUX_764 : STD_LOGIC; 
  signal U3_Y_CLKINV_761 : STD_LOGIC; 
  signal U5_TY_0_DXMUX_809 : STD_LOGIC; 
  signal RD_0_not0000 : STD_LOGIC; 
  signal U5_TY_0_DYMUX_794 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal U5_TY_0_SRINV_784 : STD_LOGIC; 
  signal U5_TY_0_CLKINV_783 : STD_LOGIC; 
  signal T_START : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_O2INV_225 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OCEINV_227 : STD_LOGIC; 
  signal RD_1_232 : STD_LOGIC; 
  signal RX_READY_OUTPUT_OFF_OFF2_SET : STD_LOGIC; 
  signal RX_READY_OUTPUT_OTCLK2INVNOT : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_O1INV_256 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_263 : STD_LOGIC; 
  signal BUS_OUT_0_OUTPUT_OTCLK1INV_252 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_O1INV_280 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_287 : STD_LOGIC; 
  signal BUS_OUT_1_OUTPUT_OTCLK1INV_276 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OTCLK1INV_300 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_O1INV_304 : STD_LOGIC; 
  signal BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_311 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_O1INV_328 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_335 : STD_LOGIC; 
  signal BUS_OUT_3_OUTPUT_OTCLK1INV_324 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_O1INV_376 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_383 : STD_LOGIC; 
  signal BUS_OUT_5_OUTPUT_OTCLK1INV_372 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_O1INV_400 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_407 : STD_LOGIC; 
  signal BUS_OUT_6_OUTPUT_OTCLK1INV_396 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OTCLK1INV_420 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_O1INV_424 : STD_LOGIC; 
  signal BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_431 : STD_LOGIC; 
  signal U4_TY_2_FFY_RSTAND_496 : STD_LOGIC; 
  signal RD_FFY_SET : STD_LOGIC; 
  signal U3_Y_FFY_RSTAND_769 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_RD_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_RD_CLK : STD_LOGIC; 
  signal U2_T : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U5_TY : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U4_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U3_T : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_Y : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  RX_READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => RX_READY_O,
      O => RX_READY
    );
  RX_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 526 ps
    )
    port map (
      I => RX,
      O => RX_INBUF
    );
  BUS_OUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => BUS_OUT_0_O,
      O => BUS_OUT(0)
    );
  BUS_OUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => BUS_OUT_1_O,
      O => BUS_OUT(1)
    );
  BUS_OUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => BUS_OUT_2_O,
      O => BUS_OUT(2)
    );
  BUS_OUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => BUS_OUT_3_O,
      O => BUS_OUT(3)
    );
  BUS_OUT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => BUS_OUT_4_O,
      O => BUS_OUT(4)
    );
  BUS_OUT_4_OUTPUT_OFF_OFF1_RSTOR : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_4_OUTPUT_OFF_OFF1_RST
    );
  U1_Y_4 : X_FF
    generic map(
      LOC => "PAD53",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_4_OUTPUT_OFF_O1INV_352,
      CE => VCC,
      CLK => BUS_OUT_4_OUTPUT_OTCLK1INV_348,
      SET => GND,
      RST => BUS_OUT_4_OUTPUT_OFF_OFF1_RST,
      O => U1_Y(4)
    );
  BUS_OUT_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(3),
      O => BUS_OUT_4_OUTPUT_OFF_O1INV_352
    );
  BUS_OUT_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(4),
      O => BUS_OUT_4_O
    );
  BUS_OUT_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_4_OUTPUT_OTCLK1INV_348
    );
  BUS_OUT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => BUS_OUT_5_O,
      O => BUS_OUT(5)
    );
  BUS_OUT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => BUS_OUT_6_O,
      O => BUS_OUT(6)
    );
  BUS_OUT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => BUS_OUT_7_O,
      O => BUS_OUT(7)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  T_END1 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X48Y113"
    )
    port map (
      ADR0 => RD_197,
      ADR1 => U5_TY(1),
      ADR2 => U5_TY(2),
      ADR3 => U5_TY(0),
      O => T_END1_471
    );
  T_END_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y113",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END_F5MUX_473,
      O => T_END
    );
  T_END_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y113"
    )
    port map (
      IA => T_END_G,
      IB => T_END1_471,
      SEL => T_END_BXINV_466,
      O => T_END_F5MUX_473
    );
  T_END_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y113",
      PATHPULSE => 526 ps
    )
    port map (
      I => U5_TY(3),
      O => T_END_BXINV_466
    );
  U4_TY_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(2),
      O => U4_TY_2_DYMUX_491
    );
  U4_TY_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U4_TY_2_CLKINV_481
    );
  U4_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AF0",
      LOC => "SLICE_X48Y89"
    )
    port map (
      ADR0 => U4_TY(1),
      ADR1 => VCC,
      ADR2 => U4_TY(2),
      ADR3 => U4_TY(0),
      O => Result(2)
    );
  U5_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(3),
      O => U5_TY_3_DXMUX_533
    );
  U5_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result_2_1,
      O => U5_TY_3_DYMUX_519
    );
  U5_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => U5_TY_3_SRINV_510
    );
  U5_TY_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U5_TY_3_CLKINV_509
    );
  RD_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_or0000_561,
      O => RD_or0000_0
    );
  RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  U2_T_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y127",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(0),
      O => U2_T_1_DXMUX_581
    );
  U2_T_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y127",
      PATHPULSE => 526 ps
    )
    port map (
      I => RX_IBUF_179,
      O => U2_T_1_DYMUX_573
    );
  U2_T_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y127",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U2_T_1_SRINV_571
    );
  U2_T_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y127",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U2_T_1_CLKINV_570
    );
  U2_T_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(2),
      O => U2_T_3_DXMUX_605
    );
  U2_T_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(1),
      O => U2_T_3_DYMUX_597
    );
  U2_T_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U2_T_3_SRINV_595
    );
  U2_T_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U2_T_3_CLKINV_594
    );
  U2_T_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(4),
      O => U2_T_5_DXMUX_629
    );
  U2_T_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(3),
      O => U2_T_5_DYMUX_621
    );
  U2_T_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U2_T_5_SRINV_619
    );
  U2_T_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U2_T_5_CLKINV_618
    );
  RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_BYINV_644,
      O => RD_DYMUX_645
    );
  RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => RD_BYINV_644
    );
  RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X49Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => RD_CLKINVNOT
    );
  RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_0_not0000_0,
      O => RD_CEINV_641
    );
  U2_T_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(6),
      O => U2_T_7_DXMUX_669
    );
  U2_T_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(5),
      O => U2_T_7_DYMUX_661
    );
  U2_T_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U2_T_7_SRINV_659
    );
  U2_T_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U2_T_7_CLKINV_658
    );
  U4_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X48Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(0),
      O => U4_TY_0_DXMUX_702
    );
  U4_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(1),
      O => U4_TY_0_DYMUX_694
    );
  U4_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => U4_TY_0_SRINV_684
    );
  U4_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U4_TY_0_CLKINV_683
    );
  U4_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X48Y88",
      INIT => '0'
    )
    port map (
      I => U4_TY_0_DXMUX_702,
      CE => VCC,
      CLK => U4_TY_0_CLKINV_683,
      SET => GND,
      RST => U4_TY_0_SRINV_684,
      O => U4_TY(0)
    );
  U3_T_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => U3_T(0),
      O => U3_T_1_DXMUX_726
    );
  U3_T_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => RX_IBUF_179,
      O => U3_T_1_DYMUX_718
    );
  U3_T_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U3_T_1_SRINV_716
    );
  U3_T_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U3_T_1_CLKINV_715
    );
  U3_T_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => U3_T(2),
      O => U3_T_3_DXMUX_750
    );
  U3_T_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => U3_T(1),
      O => U3_T_3_DYMUX_742
    );
  U3_T_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U3_T_3_SRINV_740
    );
  U3_T_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U3_T_3_CLKINV_739
    );
  U3_Y_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => U3_T(3),
      O => U3_Y_DYMUX_764
    );
  U3_Y_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U3_Y_CLKINV_761
    );
  U5_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X49Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => U5_TY(0),
      O => U5_TY_0_DXMUX_809
    );
  U5_TY_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_0_not0000,
      O => RD_0_not0000_0
    );
  U5_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result_1_1,
      O => U5_TY_0_DYMUX_794
    );
  U5_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => U5_TY_0_SRINV_784
    );
  U5_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_TY(2),
      O => U5_TY_0_CLKINV_783
    );
  T_START_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y108",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START,
      O => T_START_0
    );
  RD_or0000 : X_LUT4
    generic map(
      INIT => X"BAAA",
      LOC => "SLICE_X48Y111"
    )
    port map (
      ADR0 => RESET_IBUF_180,
      ADR1 => U5_TY(2),
      ADR2 => N2,
      ADR3 => U5_TY(3),
      O => RD_or0000_561
    );
  U5_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y110",
      INIT => '0'
    )
    port map (
      I => U5_TY_0_DXMUX_809,
      CE => VCC,
      CLK => U5_TY_0_CLKINV_783,
      SET => GND,
      RST => U5_TY_0_SRINV_784,
      O => U5_TY(0)
    );
  RX_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 526 ps
    )
    port map (
      I => RX_INBUF,
      O => RX_IBUF_179
    );
  RX_READY_OUTPUT_OFF_O2INV : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => RX_READY_OUTPUT_OFF_O2INV_225
    );
  RX_READY_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_0_not0000_0,
      O => RX_READY_OUTPUT_OFF_OCEINV_227
    );
  RX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_1_232,
      O => RX_READY_O
    );
  RD_1 : X_LATCHE
    generic map(
      LOC => "PAD63",
      INIT => '1'
    )
    port map (
      I => RX_READY_OUTPUT_OFF_O2INV_225,
      GE => RX_READY_OUTPUT_OFF_OCEINV_227,
      CLK => NlwInverterSignal_RD_1_CLK,
      SET => RX_READY_OUTPUT_OFF_OFF2_SET,
      RST => GND,
      O => RD_1_232
    );
  RX_READY_OUTPUT_OFF_OFF2_SETOR : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_or0000_0,
      O => RX_READY_OUTPUT_OFF_OFF2_SET
    );
  RX_READY_OUTPUT_OTCLK2INV : X_INV
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => RX_READY_OUTPUT_OTCLK2INVNOT
    );
  BUS_OUT_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(7),
      O => BUS_OUT_0_OUTPUT_OFF_O1INV_256
    );
  BUS_OUT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(0),
      O => BUS_OUT_0_O
    );
  U1_Y_0 : X_FF
    generic map(
      LOC => "PAD62",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_0_OUTPUT_OFF_O1INV_256,
      CE => VCC,
      CLK => BUS_OUT_0_OUTPUT_OTCLK1INV_252,
      SET => GND,
      RST => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_263,
      O => U1_Y(0)
    );
  BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_0_OUTPUT_OFF_OFF1_RSTAND_263
    );
  BUS_OUT_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_0_OUTPUT_OTCLK1INV_252
    );
  BUS_OUT_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(6),
      O => BUS_OUT_1_OUTPUT_OFF_O1INV_280
    );
  BUS_OUT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(1),
      O => BUS_OUT_1_O
    );
  U1_Y_1 : X_FF
    generic map(
      LOC => "PAD61",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_1_OUTPUT_OFF_O1INV_280,
      CE => VCC,
      CLK => BUS_OUT_1_OUTPUT_OTCLK1INV_276,
      SET => GND,
      RST => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_287,
      O => U1_Y(1)
    );
  BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_1_OUTPUT_OFF_OFF1_RSTAND_287
    );
  BUS_OUT_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_1_OUTPUT_OTCLK1INV_276
    );
  BUS_OUT_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_2_OUTPUT_OTCLK1INV_300
    );
  BUS_OUT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(2),
      O => BUS_OUT_2_O
    );
  BUS_OUT_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(5),
      O => BUS_OUT_2_OUTPUT_OFF_O1INV_304
    );
  U1_Y_2 : X_FF
    generic map(
      LOC => "PAD60",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_2_OUTPUT_OFF_O1INV_304,
      CE => VCC,
      CLK => BUS_OUT_2_OUTPUT_OTCLK1INV_300,
      SET => GND,
      RST => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_311,
      O => U1_Y(2)
    );
  BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_2_OUTPUT_OFF_OFF1_RSTAND_311
    );
  BUS_OUT_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(4),
      O => BUS_OUT_3_OUTPUT_OFF_O1INV_328
    );
  BUS_OUT_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(3),
      O => BUS_OUT_3_O
    );
  U1_Y_3 : X_FF
    generic map(
      LOC => "PAD59",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_3_OUTPUT_OFF_O1INV_328,
      CE => VCC,
      CLK => BUS_OUT_3_OUTPUT_OTCLK1INV_324,
      SET => GND,
      RST => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_335,
      O => U1_Y(3)
    );
  BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_3_OUTPUT_OFF_OFF1_RSTAND_335
    );
  BUS_OUT_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_3_OUTPUT_OTCLK1INV_324
    );
  BUS_OUT_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(2),
      O => BUS_OUT_5_OUTPUT_OFF_O1INV_376
    );
  BUS_OUT_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(5),
      O => BUS_OUT_5_O
    );
  U1_Y_5 : X_FF
    generic map(
      LOC => "PAD57",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_5_OUTPUT_OFF_O1INV_376,
      CE => VCC,
      CLK => BUS_OUT_5_OUTPUT_OTCLK1INV_372,
      SET => GND,
      RST => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_383,
      O => U1_Y(5)
    );
  BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_5_OUTPUT_OFF_OFF1_RSTAND_383
    );
  BUS_OUT_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_5_OUTPUT_OTCLK1INV_372
    );
  BUS_OUT_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(1),
      O => BUS_OUT_6_OUTPUT_OFF_O1INV_400
    );
  BUS_OUT_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(6),
      O => BUS_OUT_6_O
    );
  U1_Y_6 : X_FF
    generic map(
      LOC => "PAD55",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_6_OUTPUT_OFF_O1INV_400,
      CE => VCC,
      CLK => BUS_OUT_6_OUTPUT_OTCLK1INV_396,
      SET => GND,
      RST => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_407,
      O => U1_Y(6)
    );
  BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_6_OUTPUT_OFF_OFF1_RSTAND_407
    );
  BUS_OUT_6_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_6_OUTPUT_OTCLK1INV_396
    );
  BUS_OUT_7_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_END,
      O => BUS_OUT_7_OUTPUT_OTCLK1INV_420
    );
  BUS_OUT_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => U1_Y(7),
      O => BUS_OUT_7_O
    );
  BUS_OUT_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => U2_T(0),
      O => BUS_OUT_7_OUTPUT_OFF_O1INV_424
    );
  U1_Y_7 : X_FF
    generic map(
      LOC => "PAD54",
      INIT => '0'
    )
    port map (
      I => BUS_OUT_7_OUTPUT_OFF_O1INV_424,
      CE => VCC,
      CLK => BUS_OUT_7_OUTPUT_OTCLK1INV_420,
      SET => GND,
      RST => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_431,
      O => U1_Y(7)
    );
  BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => BUS_OUT_7_OUTPUT_OFF_OFF1_RSTAND_431
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_180
    );
  U4_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y89",
      INIT => '0'
    )
    port map (
      I => U4_TY_2_DYMUX_491,
      CE => VCC,
      CLK => U4_TY_2_CLKINV_481,
      SET => GND,
      RST => U4_TY_2_FFY_RSTAND_496,
      O => U4_TY(2)
    );
  U4_TY_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X48Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_START_0,
      O => U4_TY_2_FFY_RSTAND_496
    );
  U5_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X48Y110"
    )
    port map (
      ADR0 => U5_TY(2),
      ADR1 => VCC,
      ADR2 => U5_TY(0),
      ADR3 => U5_TY(1),
      O => Result_2_1
    );
  U5_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y110",
      INIT => '0'
    )
    port map (
      I => U5_TY_3_DYMUX_519,
      CE => VCC,
      CLK => U5_TY_3_CLKINV_509,
      SET => GND,
      RST => U5_TY_3_SRINV_510,
      O => U5_TY(2)
    );
  U5_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X48Y110"
    )
    port map (
      ADR0 => U5_TY(2),
      ADR1 => U5_TY(3),
      ADR2 => U5_TY(0),
      ADR3 => U5_TY(1),
      O => Result(3)
    );
  U5_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X48Y110",
      INIT => '0'
    )
    port map (
      I => U5_TY_3_DXMUX_533,
      CE => VCC,
      CLK => U5_TY_3_CLKINV_509,
      SET => GND,
      RST => U5_TY_3_SRINV_510,
      O => U5_TY(3)
    );
  RD_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"1500",
      LOC => "SLICE_X48Y111"
    )
    port map (
      ADR0 => U5_TY(0),
      ADR1 => RD_197,
      ADR2 => U3_Y_202,
      ADR3 => U5_TY(1),
      O => N2_pack_1
    );
  U2_T_0 : X_FF
    generic map(
      LOC => "SLICE_X44Y127",
      INIT => '0'
    )
    port map (
      I => U2_T_1_DYMUX_573,
      CE => VCC,
      CLK => U2_T_1_CLKINV_570,
      SET => GND,
      RST => U2_T_1_SRINV_571,
      O => U2_T(0)
    );
  U2_T_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y127",
      INIT => '0'
    )
    port map (
      I => U2_T_1_DXMUX_581,
      CE => VCC,
      CLK => U2_T_1_CLKINV_570,
      SET => GND,
      RST => U2_T_1_SRINV_571,
      O => U2_T(1)
    );
  U2_T_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_3_DYMUX_597,
      CE => VCC,
      CLK => U2_T_3_CLKINV_594,
      SET => GND,
      RST => U2_T_3_SRINV_595,
      O => U2_T(2)
    );
  U2_T_3 : X_FF
    generic map(
      LOC => "SLICE_X44Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_3_DXMUX_605,
      CE => VCC,
      CLK => U2_T_3_CLKINV_594,
      SET => GND,
      RST => U2_T_3_SRINV_595,
      O => U2_T(3)
    );
  U2_T_4 : X_FF
    generic map(
      LOC => "SLICE_X47Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_5_DYMUX_621,
      CE => VCC,
      CLK => U2_T_5_CLKINV_618,
      SET => GND,
      RST => U2_T_5_SRINV_619,
      O => U2_T(4)
    );
  U2_T_5 : X_FF
    generic map(
      LOC => "SLICE_X47Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_5_DXMUX_629,
      CE => VCC,
      CLK => U2_T_5_CLKINV_618,
      SET => GND,
      RST => U2_T_5_SRINV_619,
      O => U2_T(5)
    );
  RD : X_LATCHE
    generic map(
      LOC => "SLICE_X49Y111",
      INIT => '1'
    )
    port map (
      I => RD_DYMUX_645,
      GE => RD_CEINV_641,
      CLK => NlwInverterSignal_RD_CLK,
      SET => RD_FFY_SET,
      RST => GND,
      O => RD_197
    );
  RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X49Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_or0000_0,
      O => RD_FFY_SET
    );
  U2_T_6 : X_FF
    generic map(
      LOC => "SLICE_X46Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_7_DYMUX_661,
      CE => VCC,
      CLK => U2_T_7_CLKINV_658,
      SET => GND,
      RST => U2_T_7_SRINV_659,
      O => U2_T(6)
    );
  U2_T_7 : X_FF
    generic map(
      LOC => "SLICE_X46Y126",
      INIT => '0'
    )
    port map (
      I => U2_T_7_DXMUX_669,
      CE => VCC,
      CLK => U2_T_7_CLKINV_658,
      SET => GND,
      RST => U2_T_7_SRINV_659,
      O => U2_T(7)
    );
  U4_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X48Y88"
    )
    port map (
      ADR0 => U4_TY(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U4_TY(0),
      O => Result(1)
    );
  U4_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X48Y88",
      INIT => '0'
    )
    port map (
      I => U4_TY_0_DYMUX_694,
      CE => VCC,
      CLK => U4_TY_0_CLKINV_683,
      SET => GND,
      RST => U4_TY_0_SRINV_684,
      O => U4_TY(1)
    );
  U3_T_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => '0'
    )
    port map (
      I => U3_T_1_DYMUX_718,
      CE => VCC,
      CLK => U3_T_1_CLKINV_715,
      SET => GND,
      RST => U3_T_1_SRINV_716,
      O => U3_T(0)
    );
  U3_T_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => '0'
    )
    port map (
      I => U3_T_1_DXMUX_726,
      CE => VCC,
      CLK => U3_T_1_CLKINV_715,
      SET => GND,
      RST => U3_T_1_SRINV_716,
      O => U3_T(1)
    );
  U3_T_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => '0'
    )
    port map (
      I => U3_T_3_DYMUX_742,
      CE => VCC,
      CLK => U3_T_3_CLKINV_739,
      SET => GND,
      RST => U3_T_3_SRINV_740,
      O => U3_T(2)
    );
  U3_T_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => '0'
    )
    port map (
      I => U3_T_3_DXMUX_750,
      CE => VCC,
      CLK => U3_T_3_CLKINV_739,
      SET => GND,
      RST => U3_T_3_SRINV_740,
      O => U3_T(3)
    );
  U3_Y : X_FF
    generic map(
      LOC => "SLICE_X50Y81",
      INIT => '0'
    )
    port map (
      I => U3_Y_DYMUX_764,
      CE => VCC,
      CLK => U3_Y_CLKINV_761,
      SET => GND,
      RST => U3_Y_FFY_RSTAND_769,
      O => U3_Y_202
    );
  U3_Y_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_180,
      O => U3_Y_FFY_RSTAND_769
    );
  U5_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X49Y110"
    )
    port map (
      ADR0 => U5_TY(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U5_TY(0),
      O => Result_1_1
    );
  U5_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y110",
      INIT => '0'
    )
    port map (
      I => U5_TY_0_DYMUX_794,
      CE => VCC,
      CLK => U5_TY_0_CLKINV_783,
      SET => GND,
      RST => U5_TY_0_SRINV_784,
      O => U5_TY(1)
    );
  RD_0_not00001 : X_LUT4
    generic map(
      INIT => X"FFF7",
      LOC => "SLICE_X49Y110"
    )
    port map (
      ADR0 => U5_TY(1),
      ADR1 => U5_TY(3),
      ADR2 => U5_TY(2),
      ADR3 => U5_TY(0),
      O => RD_0_not0000
    );
  T_START1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X49Y108"
    )
    port map (
      ADR0 => RD_197,
      ADR1 => VCC,
      ADR2 => U3_Y_202,
      ADR3 => VCC,
      O => T_START
    );
  T_END_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X48Y113"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => T_END_G
    );
  NlwBlock_DESERIALIZER_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_DESERIALIZER_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_RD_1_CLK : X_INV
    port map (
      I => RX_READY_OUTPUT_OTCLK2INVNOT,
      O => NlwInverterSignal_RD_1_CLK
    );
  NlwInverterBlock_RD_CLK : X_INV
    port map (
      I => RD_CLKINVNOT,
      O => NlwInverterSignal_RD_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

