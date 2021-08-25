--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SERIALIZER_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 25 17:40:00 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf SERIALIZER.pcf -rpw 100 -tpw 0 -ar Structure -tm SERIALIZER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim SERIALIZER.ncd SERIALIZER_timesim.vhd 
-- Device	: 3s1500fg320-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: SERIALIZER.ncd
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\par\SERIALIZER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: SERIALIZER
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

entity SERIALIZER is
  port (
    TX_READY : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    START : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    CTS : in STD_LOGIC := 'X'; 
    Y : out STD_LOGIC; 
    BUS_IN : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end SERIALIZER;

architecture Structure of SERIALIZER is
  signal BUS_IN_0_IBUF_160 : STD_LOGIC; 
  signal BUS_IN_1_IBUF_161 : STD_LOGIC; 
  signal BUS_IN_2_IBUF_162 : STD_LOGIC; 
  signal BUS_IN_3_IBUF_163 : STD_LOGIC; 
  signal BUS_IN_4_IBUF_164 : STD_LOGIC; 
  signal BUS_IN_5_IBUF_165 : STD_LOGIC; 
  signal BUS_IN_6_IBUF_166 : STD_LOGIC; 
  signal BUS_IN_7_IBUF_167 : STD_LOGIC; 
  signal RD_168 : STD_LOGIC; 
  signal RESET_IBUF_172 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal T_LOAD_175 : STD_LOGIC; 
  signal r0_input_189 : STD_LOGIC; 
  signal r1_input_190 : STD_LOGIC; 
  signal T_RESET_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal CTS_INBUF : STD_LOGIC; 
  signal BUS_IN_0_INBUF : STD_LOGIC; 
  signal BUS_IN_1_INBUF : STD_LOGIC; 
  signal BUS_IN_2_INBUF : STD_LOGIC; 
  signal BUS_IN_3_INBUF : STD_LOGIC; 
  signal BUS_IN_4_INBUF : STD_LOGIC; 
  signal BUS_IN_5_INBUF : STD_LOGIC; 
  signal BUS_IN_6_INBUF : STD_LOGIC; 
  signal BUS_IN_7_INBUF : STD_LOGIC; 
  signal TX_READY_O : STD_LOGIC; 
  signal START_INBUF : STD_LOGIC; 
  signal Y_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal COUNT_TY_3_FFY_RST : STD_LOGIC; 
  signal COUNT_TY_3_DXMUX_325 : STD_LOGIC; 
  signal COUNT_TY_3_DYMUX_311 : STD_LOGIC; 
  signal COUNT_TY_3_SRINV_302 : STD_LOGIC; 
  signal COUNT_TY_3_CLKINV_301 : STD_LOGIC; 
  signal REG_PS_Z_1_DXMUX_366 : STD_LOGIC; 
  signal REG_PS_Z_1_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_1_DYMUX_352 : STD_LOGIC; 
  signal REG_PS_Z_0_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_1_SRINV_342 : STD_LOGIC; 
  signal REG_PS_Z_1_CLKINV_341 : STD_LOGIC; 
  signal REG_PS_Z_3_DXMUX_406 : STD_LOGIC; 
  signal REG_PS_Z_3_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_3_DYMUX_392 : STD_LOGIC; 
  signal REG_PS_Z_2_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_3_SRINV_383 : STD_LOGIC; 
  signal REG_PS_Z_3_CLKINV_382 : STD_LOGIC; 
  signal REG_PS_Z_5_DXMUX_446 : STD_LOGIC; 
  signal REG_PS_Z_5_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_5_DYMUX_432 : STD_LOGIC; 
  signal REG_PS_Z_4_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_5_SRINV_423 : STD_LOGIC; 
  signal REG_PS_Z_5_CLKINV_422 : STD_LOGIC; 
  signal REG_PS_Z_7_DXMUX_486 : STD_LOGIC; 
  signal REG_PS_Z_7_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_7_DYMUX_472 : STD_LOGIC; 
  signal REG_PS_Z_6_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_7_SRINV_463 : STD_LOGIC; 
  signal REG_PS_Z_7_CLKINV_462 : STD_LOGIC; 
  signal Y_OBUF_523 : STD_LOGIC; 
  signal REG_PS_Z_8_DYMUX_511 : STD_LOGIC; 
  signal REG_PS_Z_8_mux0001 : STD_LOGIC; 
  signal REG_PS_Z_8_CLKINV_500 : STD_LOGIC; 
  signal T_RESET : STD_LOGIC; 
  signal RD_or0000_559 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal r0_input_DYMUX_567 : STD_LOGIC; 
  signal r0_input_CLKINV_565 : STD_LOGIC; 
  signal RD_DYMUX_580 : STD_LOGIC; 
  signal RD_BYINV_579 : STD_LOGIC; 
  signal RD_CLKINVNOT : STD_LOGIC; 
  signal RD_CEINV_576 : STD_LOGIC; 
  signal COUNT_TY_0_DXMUX_613 : STD_LOGIC; 
  signal COUNT_TY_0_DYMUX_605 : STD_LOGIC; 
  signal COUNT_TY_0_SRINV_595 : STD_LOGIC; 
  signal COUNT_TY_0_CLKINV_594 : STD_LOGIC; 
  signal T_LOAD_DYMUX_627 : STD_LOGIC; 
  signal T_LOAD_SRINVNOT : STD_LOGIC; 
  signal T_LOAD_CLKINV_624 : STD_LOGIC; 
  signal RD_0_not0000_653 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal r1_input_DYMUX_661 : STD_LOGIC; 
  signal r1_input_CLKINV_659 : STD_LOGIC; 
  signal REG_PS_Z_8_FFY_SET : STD_LOGIC; 
  signal RD_FFY_SET : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_RD_CLK : STD_LOGIC; 
  signal COUNT_TY : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal REG_PS_Z : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  CTS_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 526 ps
    )
    port map (
      I => CTS,
      O => CTS_INBUF
    );
  BUS_IN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(0),
      O => BUS_IN_0_INBUF
    );
  BUS_IN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(1),
      O => BUS_IN_1_INBUF
    );
  BUS_IN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(2),
      O => BUS_IN_2_INBUF
    );
  BUS_IN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(3),
      O => BUS_IN_3_INBUF
    );
  BUS_IN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(4),
      O => BUS_IN_4_INBUF
    );
  BUS_IN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(5),
      O => BUS_IN_5_INBUF
    );
  BUS_IN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(6),
      O => BUS_IN_6_INBUF
    );
  BUS_IN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN(7),
      O => BUS_IN_7_INBUF
    );
  BUS_IN_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_7_INBUF,
      O => BUS_IN_7_IBUF_167
    );
  TX_READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => TX_READY_O,
      O => TX_READY
    );
  START_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 526 ps
    )
    port map (
      I => START,
      O => START_INBUF
    );
  Y_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => Y_O,
      O => Y
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
      LOC => "PAD58",
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
  COUNT_TY_3_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => COUNT_TY_3_SRINV_302,
      O => COUNT_TY_3_FFY_RST
    );
  COUNT_TY_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y81",
      INIT => '0'
    )
    port map (
      I => COUNT_TY_3_DYMUX_311,
      CE => VCC,
      CLK => COUNT_TY_3_CLKINV_301,
      SET => GND,
      RST => COUNT_TY_3_FFY_RST,
      O => COUNT_TY(2)
    );
  COUNT_TY_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(3),
      O => COUNT_TY_3_DXMUX_325
    );
  COUNT_TY_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(2),
      O => COUNT_TY_3_DYMUX_311
    );
  COUNT_TY_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_LOAD_175,
      O => COUNT_TY_3_SRINV_302
    );
  COUNT_TY_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => COUNT_TY_3_CLKINV_301
    );
  COUNT_Mcount_TY_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X50Y81"
    )
    port map (
      ADR0 => COUNT_TY(1),
      ADR1 => COUNT_TY(2),
      ADR2 => COUNT_TY(0),
      ADR3 => VCC,
      O => Result(2)
    );
  REG_PS_Z_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_1_mux0001,
      O => REG_PS_Z_1_DXMUX_366
    );
  REG_PS_Z_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_0_mux0001,
      O => REG_PS_Z_1_DYMUX_352
    );
  REG_PS_Z_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_172,
      O => REG_PS_Z_1_SRINV_342
    );
  REG_PS_Z_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => REG_PS_Z_1_CLKINV_341
    );
  REG_PS_Z_2 : X_FF
    generic map(
      LOC => "SLICE_X47Y116",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_3_DYMUX_392,
      CE => VCC,
      CLK => REG_PS_Z_3_CLKINV_382,
      SET => REG_PS_Z_3_SRINV_383,
      RST => GND,
      O => REG_PS_Z(2)
    );
  REG_PS_Z_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_3_mux0001,
      O => REG_PS_Z_3_DXMUX_406
    );
  REG_PS_Z_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_2_mux0001,
      O => REG_PS_Z_3_DYMUX_392
    );
  REG_PS_Z_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_172,
      O => REG_PS_Z_3_SRINV_383
    );
  REG_PS_Z_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => REG_PS_Z_3_CLKINV_382
    );
  REG_PS_Z_2_mux00011 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X47Y116"
    )
    port map (
      ADR0 => REG_PS_Z(3),
      ADR1 => T_LOAD_175,
      ADR2 => BUS_IN_1_IBUF_161,
      ADR3 => VCC,
      O => REG_PS_Z_2_mux0001
    );
  REG_PS_Z_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_5_mux0001,
      O => REG_PS_Z_5_DXMUX_446
    );
  REG_PS_Z_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_4_mux0001,
      O => REG_PS_Z_5_DYMUX_432
    );
  REG_PS_Z_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_172,
      O => REG_PS_Z_5_SRINV_423
    );
  REG_PS_Z_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => REG_PS_Z_5_CLKINV_422
    );
  REG_PS_Z_6 : X_FF
    generic map(
      LOC => "SLICE_X45Y117",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_7_DYMUX_472,
      CE => VCC,
      CLK => REG_PS_Z_7_CLKINV_462,
      SET => REG_PS_Z_7_SRINV_463,
      RST => GND,
      O => REG_PS_Z(6)
    );
  REG_PS_Z_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_7_mux0001,
      O => REG_PS_Z_7_DXMUX_486
    );
  REG_PS_Z_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_6_mux0001,
      O => REG_PS_Z_7_DYMUX_472
    );
  REG_PS_Z_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_172,
      O => REG_PS_Z_7_SRINV_463
    );
  REG_PS_Z_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y117",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => REG_PS_Z_7_CLKINV_462
    );
  REG_PS_Z_6_mux00011 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X45Y117"
    )
    port map (
      ADR0 => BUS_IN_5_IBUF_165,
      ADR1 => REG_PS_Z(7),
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_6_mux0001
    );
  REG_PS_Z_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => REG_PS_Z_8_mux0001,
      O => REG_PS_Z_8_DYMUX_511
    );
  REG_PS_Z_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => REG_PS_Z_8_CLKINV_500
    );
  T_RESET_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y111",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_RESET,
      O => T_RESET_0
    );
  RD_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  RD_or0000 : X_LUT4
    generic map(
      INIT => X"F4F0",
      LOC => "SLICE_X50Y80"
    )
    port map (
      ADR0 => COUNT_TY(2),
      ADR1 => COUNT_TY(3),
      ADR2 => RESET_IBUF_172,
      ADR3 => N01,
      O => RD_or0000_559
    );
  r0_input_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_LOAD_175,
      O => r0_input_DYMUX_567
    );
  r0_input_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r0_input_CLKINV_565
    );
  RD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_BYINV_579,
      O => RD_DYMUX_580
    );
  RD_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => RD_BYINV_579
    );
  RD_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_RESET_0,
      O => RD_CLKINVNOT
    );
  RD_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_0_not0000_653,
      O => RD_CEINV_576
    );
  COUNT_TY_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y78",
      PATHPULSE => 526 ps
    )
    port map (
      I => COUNT_TY(0),
      O => COUNT_TY_0_DXMUX_613
    );
  COUNT_TY_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y78",
      PATHPULSE => 526 ps
    )
    port map (
      I => Result(1),
      O => COUNT_TY_0_DYMUX_605
    );
  COUNT_TY_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y78",
      PATHPULSE => 526 ps
    )
    port map (
      I => T_LOAD_175,
      O => COUNT_TY_0_SRINV_595
    );
  COUNT_TY_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y78",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => COUNT_TY_0_CLKINV_594
    );
  COUNT_TY_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => '0'
    )
    port map (
      I => COUNT_TY_0_DXMUX_613,
      CE => VCC,
      CLK => COUNT_TY_0_CLKINV_594,
      SET => GND,
      RST => COUNT_TY_0_SRINV_595,
      O => COUNT_TY(0)
    );
  T_LOAD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => CTS_INBUF,
      O => T_LOAD_DYMUX_627
    );
  T_LOAD_SRINV : X_INV
    generic map(
      LOC => "SLICE_X48Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => START_INBUF,
      O => T_LOAD_SRINVNOT
    );
  T_LOAD_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => T_LOAD_CLKINV_624
    );
  RD_0_not0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 526 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  r1_input_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => r0_input_189,
      O => r1_input_DYMUX_661
    );
  r1_input_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y110",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r1_input_CLKINV_659
    );
  BUS_IN_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_0_INBUF,
      O => BUS_IN_0_IBUF_160
    );
  BUS_IN_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_1_INBUF,
      O => BUS_IN_1_IBUF_161
    );
  BUS_IN_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_2_INBUF,
      O => BUS_IN_2_IBUF_162
    );
  BUS_IN_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_3_INBUF,
      O => BUS_IN_3_IBUF_163
    );
  BUS_IN_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_4_INBUF,
      O => BUS_IN_4_IBUF_164
    );
  BUS_IN_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_5_INBUF,
      O => BUS_IN_5_IBUF_165
    );
  BUS_IN_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => BUS_IN_6_INBUF,
      O => BUS_IN_6_IBUF_166
    );
  COUNT_Mcount_TY_xor_3_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X50Y81"
    )
    port map (
      ADR0 => COUNT_TY(1),
      ADR1 => COUNT_TY(2),
      ADR2 => COUNT_TY(0),
      ADR3 => COUNT_TY(3),
      O => Result(3)
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_172
    );
  COUNT_TY_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y81",
      INIT => '0'
    )
    port map (
      I => COUNT_TY_3_DXMUX_325,
      CE => VCC,
      CLK => COUNT_TY_3_CLKINV_301,
      SET => GND,
      RST => COUNT_TY_3_SRINV_302,
      O => COUNT_TY(3)
    );
  REG_PS_Z_0_mux00011 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X46Y117"
    )
    port map (
      ADR0 => VCC,
      ADR1 => REG_PS_Z(1),
      ADR2 => T_LOAD_175,
      ADR3 => VCC,
      O => REG_PS_Z_0_mux0001
    );
  REG_PS_Z_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y117",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_1_DYMUX_352,
      CE => VCC,
      CLK => REG_PS_Z_1_CLKINV_341,
      SET => REG_PS_Z_1_SRINV_342,
      RST => GND,
      O => REG_PS_Z(0)
    );
  REG_PS_Z_1_mux00011 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X46Y117"
    )
    port map (
      ADR0 => REG_PS_Z(2),
      ADR1 => BUS_IN_0_IBUF_160,
      ADR2 => T_LOAD_175,
      ADR3 => VCC,
      O => REG_PS_Z_1_mux0001
    );
  REG_PS_Z_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y117",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_1_DXMUX_366,
      CE => VCC,
      CLK => REG_PS_Z_1_CLKINV_341,
      SET => REG_PS_Z_1_SRINV_342,
      RST => GND,
      O => REG_PS_Z(1)
    );
  REG_PS_Z_3 : X_FF
    generic map(
      LOC => "SLICE_X47Y116",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_3_DXMUX_406,
      CE => VCC,
      CLK => REG_PS_Z_3_CLKINV_382,
      SET => REG_PS_Z_3_SRINV_383,
      RST => GND,
      O => REG_PS_Z(3)
    );
  REG_PS_Z_3_mux00011 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X47Y116"
    )
    port map (
      ADR0 => BUS_IN_2_IBUF_162,
      ADR1 => REG_PS_Z(4),
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_3_mux0001
    );
  REG_PS_Z_4_mux00011 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X44Y116"
    )
    port map (
      ADR0 => REG_PS_Z(5),
      ADR1 => BUS_IN_3_IBUF_163,
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_4_mux0001
    );
  REG_PS_Z_4 : X_FF
    generic map(
      LOC => "SLICE_X44Y116",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_5_DYMUX_432,
      CE => VCC,
      CLK => REG_PS_Z_5_CLKINV_422,
      SET => REG_PS_Z_5_SRINV_423,
      RST => GND,
      O => REG_PS_Z(4)
    );
  REG_PS_Z_5_mux00011 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X44Y116"
    )
    port map (
      ADR0 => VCC,
      ADR1 => REG_PS_Z(6),
      ADR2 => BUS_IN_4_IBUF_164,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_5_mux0001
    );
  REG_PS_Z_5 : X_FF
    generic map(
      LOC => "SLICE_X44Y116",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_5_DXMUX_446,
      CE => VCC,
      CLK => REG_PS_Z_5_CLKINV_422,
      SET => REG_PS_Z_5_SRINV_423,
      RST => GND,
      O => REG_PS_Z(5)
    );
  REG_PS_Z_7 : X_FF
    generic map(
      LOC => "SLICE_X45Y117",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_7_DXMUX_486,
      CE => VCC,
      CLK => REG_PS_Z_7_CLKINV_462,
      SET => REG_PS_Z_7_SRINV_463,
      RST => GND,
      O => REG_PS_Z(7)
    );
  REG_PS_Z_7_mux00011 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X45Y117"
    )
    port map (
      ADR0 => BUS_IN_6_IBUF_166,
      ADR1 => REG_PS_Z(8),
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_7_mux0001
    );
  REG_PS_Z_8_mux00011 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X46Y116"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BUS_IN_7_IBUF_167,
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => REG_PS_Z_8_mux0001
    );
  REG_PS_Z_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y116",
      INIT => '1'
    )
    port map (
      I => REG_PS_Z_8_DYMUX_511,
      CE => VCC,
      CLK => REG_PS_Z_8_CLKINV_500,
      SET => REG_PS_Z_8_FFY_SET,
      RST => GND,
      O => REG_PS_Z(8)
    );
  REG_PS_Z_8_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X46Y116",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_172,
      O => REG_PS_Z_8_FFY_SET
    );
  REG_PS_Y1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X46Y116"
    )
    port map (
      ADR0 => VCC,
      ADR1 => REG_PS_Z(0),
      ADR2 => VCC,
      ADR3 => T_LOAD_175,
      O => Y_OBUF_523
    );
  T_RESET1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X50Y111"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r0_input_189,
      ADR2 => VCC,
      ADR3 => r1_input_190,
      O => T_RESET
    );
  RD_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X50Y80"
    )
    port map (
      ADR0 => T_RESET_0,
      ADR1 => COUNT_TY(1),
      ADR2 => RD_168,
      ADR3 => COUNT_TY(0),
      O => N01_pack_1
    );
  r0_input : X_FF
    generic map(
      LOC => "SLICE_X51Y110",
      INIT => '0'
    )
    port map (
      I => r0_input_DYMUX_567,
      CE => VCC,
      CLK => r0_input_CLKINV_565,
      SET => GND,
      RST => GND,
      O => r0_input_189
    );
  RD : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y81",
      INIT => '1'
    )
    port map (
      I => RD_DYMUX_580,
      GE => RD_CEINV_576,
      CLK => NlwInverterSignal_RD_CLK,
      SET => RD_FFY_SET,
      RST => GND,
      O => RD_168
    );
  RD_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_or0000_559,
      O => RD_FFY_SET
    );
  COUNT_Mcount_TY_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X50Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => COUNT_TY(0),
      ADR2 => VCC,
      ADR3 => COUNT_TY(1),
      O => Result(1)
    );
  COUNT_TY_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => '0'
    )
    port map (
      I => COUNT_TY_0_DYMUX_605,
      CE => VCC,
      CLK => COUNT_TY_0_CLKINV_594,
      SET => GND,
      RST => COUNT_TY_0_SRINV_595,
      O => COUNT_TY(1)
    );
  T_LOAD : X_SFF
    generic map(
      LOC => "SLICE_X48Y116",
      INIT => '0'
    )
    port map (
      I => T_LOAD_DYMUX_627,
      CE => VCC,
      CLK => T_LOAD_CLKINV_624,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => T_LOAD_SRINVNOT,
      O => T_LOAD_175
    );
  RD_0_not0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X51Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => COUNT_TY(0),
      ADR2 => VCC,
      ADR3 => COUNT_TY(1),
      O => N4_pack_1
    );
  RD_0_not0000 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X51Y80"
    )
    port map (
      ADR0 => COUNT_TY(3),
      ADR1 => COUNT_TY(2),
      ADR2 => N4,
      ADR3 => RD_168,
      O => RD_0_not0000_653
    );
  r1_input : X_FF
    generic map(
      LOC => "SLICE_X50Y110",
      INIT => '0'
    )
    port map (
      I => r1_input_DYMUX_661,
      CE => VCC,
      CLK => r1_input_CLKINV_659,
      SET => GND,
      RST => GND,
      O => r1_input_190
    );
  TX_READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 526 ps
    )
    port map (
      I => RD_168,
      O => TX_READY_O
    );
  Y_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => Y_OBUF_523,
      O => Y_O
    );
  NlwBlock_SERIALIZER_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_SERIALIZER_VCC : X_ONE
    port map (
      O => VCC
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

