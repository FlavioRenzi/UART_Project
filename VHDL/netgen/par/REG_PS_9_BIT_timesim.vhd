--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: REG_PS_9_BIT_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 25 17:10:19 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf REG_PS_9_BIT.pcf -rpw 100 -tpw 0 -ar Structure -tm REG_PS_9_BIT -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim REG_PS_9_BIT.ncd REG_PS_9_BIT_timesim.vhd 
-- Device	: 3s1500fg320-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: REG_PS_9_BIT.ncd
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\par\REG_PS_9_BIT_timesim.vhd
-- # of Entities	: 1
-- Design Name	: REG_PS_9_BIT
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

entity REG_PS_9_BIT is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    Y : out STD_LOGIC; 
    LOAD : in STD_LOGIC := 'X'; 
    XP : in STD_LOGIC_VECTOR ( 8 downto 0 ) 
  );
end REG_PS_9_BIT;

architecture Structure of REG_PS_9_BIT is
  signal LOAD_IBUF_100 : STD_LOGIC; 
  signal XP_0_IBUF_101 : STD_LOGIC; 
  signal XP_1_IBUF_102 : STD_LOGIC; 
  signal XP_2_IBUF_103 : STD_LOGIC; 
  signal XP_3_IBUF_104 : STD_LOGIC; 
  signal XP_4_IBUF_105 : STD_LOGIC; 
  signal XP_5_IBUF_106 : STD_LOGIC; 
  signal XP_6_IBUF_107 : STD_LOGIC; 
  signal XP_7_IBUF_108 : STD_LOGIC; 
  signal XP_8_IBUF_109 : STD_LOGIC; 
  signal RESET_IBUF_112 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal LOAD_INBUF : STD_LOGIC; 
  signal XP_0_INBUF : STD_LOGIC; 
  signal XP_1_INBUF : STD_LOGIC; 
  signal XP_2_INBUF : STD_LOGIC; 
  signal XP_3_INBUF : STD_LOGIC; 
  signal XP_4_INBUF : STD_LOGIC; 
  signal XP_5_INBUF : STD_LOGIC; 
  signal XP_6_INBUF : STD_LOGIC; 
  signal XP_7_INBUF : STD_LOGIC; 
  signal XP_8_INBUF : STD_LOGIC; 
  signal Y_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal Y_OBUF_240 : STD_LOGIC; 
  signal Z_8_DYMUX_228 : STD_LOGIC; 
  signal Z_8_mux0001 : STD_LOGIC; 
  signal Z_8_CLKINV_217 : STD_LOGIC; 
  signal Z_1_DXMUX_277 : STD_LOGIC; 
  signal Z_1_mux0001 : STD_LOGIC; 
  signal Z_1_DYMUX_263 : STD_LOGIC; 
  signal Z_0_mux0001 : STD_LOGIC; 
  signal Z_1_SRINV_254 : STD_LOGIC; 
  signal Z_1_CLKINV_253 : STD_LOGIC; 
  signal Z_3_DXMUX_317 : STD_LOGIC; 
  signal Z_3_mux0001 : STD_LOGIC; 
  signal Z_3_DYMUX_303 : STD_LOGIC; 
  signal Z_2_mux0001 : STD_LOGIC; 
  signal Z_3_SRINV_294 : STD_LOGIC; 
  signal Z_3_CLKINV_293 : STD_LOGIC; 
  signal Z_5_DXMUX_357 : STD_LOGIC; 
  signal Z_5_mux0001 : STD_LOGIC; 
  signal Z_5_DYMUX_343 : STD_LOGIC; 
  signal Z_4_mux0001 : STD_LOGIC; 
  signal Z_5_SRINV_334 : STD_LOGIC; 
  signal Z_5_CLKINV_333 : STD_LOGIC; 
  signal Z_7_DXMUX_397 : STD_LOGIC; 
  signal Z_7_mux0001 : STD_LOGIC; 
  signal Z_7_DYMUX_383 : STD_LOGIC; 
  signal Z_6_mux0001 : STD_LOGIC; 
  signal Z_7_SRINV_374 : STD_LOGIC; 
  signal Z_7_CLKINV_373 : STD_LOGIC; 
  signal Z_8_FFY_SET : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Z : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  LOAD_IBUF : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 526 ps
    )
    port map (
      I => LOAD,
      O => LOAD_INBUF
    );
  XP_0_IBUF : X_BUF
    generic map(
      LOC => "PAD319",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(0),
      O => XP_0_INBUF
    );
  XP_1_IBUF : X_BUF
    generic map(
      LOC => "PAD318",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(1),
      O => XP_1_INBUF
    );
  XP_2_IBUF : X_BUF
    generic map(
      LOC => "PAD317",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(2),
      O => XP_2_INBUF
    );
  XP_3_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(3),
      O => XP_3_INBUF
    );
  XP_4_IBUF : X_BUF
    generic map(
      LOC => "PAD315",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(4),
      O => XP_4_INBUF
    );
  XP_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD315",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_4_INBUF,
      O => XP_4_IBUF_105
    );
  XP_5_IBUF : X_BUF
    generic map(
      LOC => "PAD313",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(5),
      O => XP_5_INBUF
    );
  XP_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD313",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_5_INBUF,
      O => XP_5_IBUF_106
    );
  XP_6_IBUF : X_BUF
    generic map(
      LOC => "PAD312",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(6),
      O => XP_6_INBUF
    );
  XP_7_IBUF : X_BUF
    generic map(
      LOC => "PAD311",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(7),
      O => XP_7_INBUF
    );
  XP_8_IBUF : X_BUF
    generic map(
      LOC => "PAD310",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP(8),
      O => XP_8_INBUF
    );
  Y_OBUF : X_OBUF
    generic map(
      LOC => "PAD316"
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
      LOC => "PAD321",
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
  Z_8_mux00011 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X58Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XP_8_IBUF_109,
      ADR2 => VCC,
      ADR3 => LOAD_IBUF_100,
      O => Z_8_mux0001
    );
  Z_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_8_mux0001,
      O => Z_8_DYMUX_228
    );
  Z_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Z_8_CLKINV_217
    );
  Z_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_1_mux0001,
      O => Z_1_DXMUX_277
    );
  Z_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_0_mux0001,
      O => Z_1_DYMUX_263
    );
  Z_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_112,
      O => Z_1_SRINV_254
    );
  Z_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Z_1_CLKINV_253
    );
  Z_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_3_mux0001,
      O => Z_3_DXMUX_317
    );
  Z_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_2_mux0001,
      O => Z_3_DYMUX_303
    );
  Z_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_112,
      O => Z_3_SRINV_294
    );
  Z_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Z_3_CLKINV_293
    );
  Z_5 : X_FF
    generic map(
      LOC => "SLICE_X59Y1",
      INIT => '1'
    )
    port map (
      I => Z_5_DXMUX_357,
      CE => VCC,
      CLK => Z_5_CLKINV_333,
      SET => Z_5_SRINV_334,
      RST => GND,
      O => Z(5)
    );
  Z_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_5_mux0001,
      O => Z_5_DXMUX_357
    );
  Z_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_4_mux0001,
      O => Z_5_DYMUX_343
    );
  Z_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_112,
      O => Z_5_SRINV_334
    );
  Z_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Z_5_CLKINV_333
    );
  Z_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_7_mux0001,
      O => Z_7_DXMUX_397
    );
  Z_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Z_6_mux0001,
      O => Z_7_DYMUX_383
    );
  Z_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_112,
      O => Z_7_SRINV_374
    );
  Z_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Z_7_CLKINV_373
    );
  LOAD_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD320",
      PATHPULSE => 526 ps
    )
    port map (
      I => LOAD_INBUF,
      O => LOAD_IBUF_100
    );
  XP_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD319",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_0_INBUF,
      O => XP_0_IBUF_101
    );
  XP_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD318",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_1_INBUF,
      O => XP_1_IBUF_102
    );
  XP_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD317",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_2_INBUF,
      O => XP_2_IBUF_103
    );
  XP_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_3_INBUF,
      O => XP_3_IBUF_104
    );
  XP_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD312",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_6_INBUF,
      O => XP_6_IBUF_107
    );
  Z_8 : X_FF
    generic map(
      LOC => "SLICE_X58Y1",
      INIT => '1'
    )
    port map (
      I => Z_8_DYMUX_228,
      CE => VCC,
      CLK => Z_8_CLKINV_217,
      SET => Z_8_FFY_SET,
      RST => GND,
      O => Z(8)
    );
  Z_8_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X58Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_IBUF_112,
      O => Z_8_FFY_SET
    );
  XP_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD311",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_7_INBUF,
      O => XP_7_IBUF_108
    );
  XP_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD310",
      PATHPULSE => 526 ps
    )
    port map (
      I => XP_8_INBUF,
      O => XP_8_IBUF_109
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_112
    );
  Y1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X58Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Z(0),
      ADR2 => VCC,
      ADR3 => LOAD_IBUF_100,
      O => Y_OBUF_240
    );
  Z_0_mux00011 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X57Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LOAD_IBUF_100,
      ADR2 => XP_0_IBUF_101,
      ADR3 => Z(1),
      O => Z_0_mux0001
    );
  Z_0 : X_FF
    generic map(
      LOC => "SLICE_X57Y0",
      INIT => '1'
    )
    port map (
      I => Z_1_DYMUX_263,
      CE => VCC,
      CLK => Z_1_CLKINV_253,
      SET => Z_1_SRINV_254,
      RST => GND,
      O => Z(0)
    );
  Z_1_mux00011 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X57Y0"
    )
    port map (
      ADR0 => LOAD_IBUF_100,
      ADR1 => XP_1_IBUF_102,
      ADR2 => VCC,
      ADR3 => Z(2),
      O => Z_1_mux0001
    );
  Z_1 : X_FF
    generic map(
      LOC => "SLICE_X57Y0",
      INIT => '1'
    )
    port map (
      I => Z_1_DXMUX_277,
      CE => VCC,
      CLK => Z_1_CLKINV_253,
      SET => Z_1_SRINV_254,
      RST => GND,
      O => Z(1)
    );
  Z_2_mux00011 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X59Y0"
    )
    port map (
      ADR0 => LOAD_IBUF_100,
      ADR1 => XP_2_IBUF_103,
      ADR2 => VCC,
      ADR3 => Z(3),
      O => Z_2_mux0001
    );
  Z_2 : X_FF
    generic map(
      LOC => "SLICE_X59Y0",
      INIT => '1'
    )
    port map (
      I => Z_3_DYMUX_303,
      CE => VCC,
      CLK => Z_3_CLKINV_293,
      SET => Z_3_SRINV_294,
      RST => GND,
      O => Z(2)
    );
  Z_3_mux00011 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X59Y0"
    )
    port map (
      ADR0 => LOAD_IBUF_100,
      ADR1 => XP_3_IBUF_104,
      ADR2 => Z(4),
      ADR3 => VCC,
      O => Z_3_mux0001
    );
  Z_3 : X_FF
    generic map(
      LOC => "SLICE_X59Y0",
      INIT => '1'
    )
    port map (
      I => Z_3_DXMUX_317,
      CE => VCC,
      CLK => Z_3_CLKINV_293,
      SET => Z_3_SRINV_294,
      RST => GND,
      O => Z(3)
    );
  Z_4_mux00011 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X59Y1"
    )
    port map (
      ADR0 => XP_4_IBUF_105,
      ADR1 => VCC,
      ADR2 => LOAD_IBUF_100,
      ADR3 => Z(5),
      O => Z_4_mux0001
    );
  Z_4 : X_FF
    generic map(
      LOC => "SLICE_X59Y1",
      INIT => '1'
    )
    port map (
      I => Z_5_DYMUX_343,
      CE => VCC,
      CLK => Z_5_CLKINV_333,
      SET => Z_5_SRINV_334,
      RST => GND,
      O => Z(4)
    );
  Z_5_mux00011 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X59Y1"
    )
    port map (
      ADR0 => LOAD_IBUF_100,
      ADR1 => XP_5_IBUF_106,
      ADR2 => Z(6),
      ADR3 => VCC,
      O => Z_5_mux0001
    );
  Z_6_mux00011 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X58Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LOAD_IBUF_100,
      ADR2 => Z(7),
      ADR3 => XP_6_IBUF_107,
      O => Z_6_mux0001
    );
  Z_6 : X_FF
    generic map(
      LOC => "SLICE_X58Y0",
      INIT => '1'
    )
    port map (
      I => Z_7_DYMUX_383,
      CE => VCC,
      CLK => Z_7_CLKINV_373,
      SET => Z_7_SRINV_374,
      RST => GND,
      O => Z(6)
    );
  Z_7_mux00011 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X58Y0"
    )
    port map (
      ADR0 => XP_7_IBUF_108,
      ADR1 => LOAD_IBUF_100,
      ADR2 => VCC,
      ADR3 => Z(8),
      O => Z_7_mux0001
    );
  Z_7 : X_FF
    generic map(
      LOC => "SLICE_X58Y0",
      INIT => '1'
    )
    port map (
      I => Z_7_DXMUX_397,
      CE => VCC,
      CLK => Z_7_CLKINV_373,
      SET => Z_7_SRINV_374,
      RST => GND,
      O => Z(7)
    );
  Y_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD316",
      PATHPULSE => 526 ps
    )
    port map (
      I => Y_OBUF_240,
      O => Y_O
    );
  NlwBlock_REG_PS_9_BIT_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_REG_PS_9_BIT_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

