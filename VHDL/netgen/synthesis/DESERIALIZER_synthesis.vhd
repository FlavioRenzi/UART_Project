--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: DESERIALIZER_synthesis.vhd
-- /___/   /\     Timestamp: Sun Aug 22 18:34:05 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm DESERIALIZER -w -dir netgen/synthesis -ofmt vhdl -sim DESERIALIZER.ngc DESERIALIZER_synthesis.vhd 
-- Device	: xc3s1500-5-fg320
-- Input file	: DESERIALIZER.ngc
-- Output file	: C:\Users\Flavio\OneDrive - Politecnico di Milano\06_Prog_RL\UART_Project\VHDL\netgen\synthesis\DESERIALIZER_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity DESERIALIZER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    RX : in STD_LOGIC := 'X'; 
    READY : out STD_LOGIC; 
    BUS_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end DESERIALIZER;

architecture Structure of DESERIALIZER is
  signal CLK_BUFGP_9 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal RD_12 : STD_LOGIC; 
  signal RD_0_not0000 : STD_LOGIC; 
  signal RD_1_14 : STD_LOGIC; 
  signal RD_or0000 : STD_LOGIC; 
  signal RESET_IBUF_18 : STD_LOGIC; 
  signal RESET_IBUF_shift1_19 : STD_LOGIC; 
  signal RESET_IBUF_shift2_20 : STD_LOGIC; 
  signal RESET_IBUF_shift3_21 : STD_LOGIC; 
  signal RESET_IBUF_shift4_22 : STD_LOGIC; 
  signal RX_IBUF_24 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal T_END : STD_LOGIC; 
  signal T_START : STD_LOGIC; 
  signal U3_Mshreg_Y_49 : STD_LOGIC; 
  signal U3_Y_50 : STD_LOGIC; 
  signal U3_Y1_51 : STD_LOGIC; 
  signal U3_Y11_52 : STD_LOGIC; 
  signal U3_not0000 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U1_Y : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_T : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U5_TY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  RD : LDPE
    port map (
      D => N0,
      G => T_START,
      GE => RD_0_not0000,
      PRE => RD_or0000,
      Q => RD_12
    );
  U5_TY_0 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => Result(0),
      Q => U5_TY(0)
    );
  U5_TY_1 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => Result(1),
      Q => U5_TY(1)
    );
  U5_TY_2 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => Result(2),
      Q => U5_TY(2)
    );
  U4_TY_0 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => T_START,
      D => Result_0_1,
      Q => U4_TY(0)
    );
  U4_TY_1 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => T_START,
      D => Result_1_1,
      Q => U4_TY(1)
    );
  U4_TY_2 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => T_START,
      D => Result_2_1,
      Q => U4_TY(2)
    );
  U1_Y_7 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(0),
      Q => U1_Y(7)
    );
  U1_Y_6 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(1),
      Q => U1_Y(6)
    );
  U1_Y_5 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(2),
      Q => U1_Y(5)
    );
  U1_Y_4 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(3),
      Q => U1_Y(4)
    );
  U1_Y_3 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(4),
      Q => U1_Y(3)
    );
  U1_Y_2 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(5),
      Q => U1_Y(2)
    );
  U1_Y_1 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(6),
      Q => U1_Y(1)
    );
  U1_Y_0 : FDC
    port map (
      C => T_END,
      CLR => RESET_IBUF_18,
      D => U2_T(7),
      Q => U1_Y(0)
    );
  U2_T_7 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(6),
      Q => U2_T(7)
    );
  U2_T_6 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(5),
      Q => U2_T(6)
    );
  U2_T_5 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(4),
      Q => U2_T(5)
    );
  U2_T_4 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(3),
      Q => U2_T(4)
    );
  U2_T_3 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(2),
      Q => U2_T(3)
    );
  U2_T_2 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(1),
      Q => U2_T(2)
    );
  U2_T_1 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => U2_T(0),
      Q => U2_T(1)
    );
  U2_T_0 : FDC
    port map (
      C => U4_TY(2),
      CLR => RESET_IBUF_18,
      D => RX_IBUF_24,
      Q => U2_T(0)
    );
  T_START1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_Y_50,
      I1 => RD_12,
      O => T_START
    );
  T_END1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U5_TY(2),
      I1 => U5_TY(1),
      I2 => U5_TY(0),
      O => T_END
    );
  U5_Mcount_TY_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U5_TY(1),
      I1 => U5_TY(0),
      O => Result(1)
    );
  U4_Mcount_TY_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U4_TY(1),
      I1 => U4_TY(0),
      O => Result_1_1
    );
  U5_Mcount_TY_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U5_TY(2),
      I1 => U5_TY(1),
      I2 => U5_TY(0),
      O => Result(2)
    );
  U4_Mcount_TY_xor_2_11 : LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => U4_TY(1),
      I1 => U4_TY(0),
      I2 => U4_TY(2),
      O => Result_2_1
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_18
    );
  RX_IBUF : IBUF
    port map (
      I => RX,
      O => RX_IBUF_24
    );
  READY_OBUF : OBUF
    port map (
      I => RD_1_14,
      O => READY
    );
  BUS_OUT_7_OBUF : OBUF
    port map (
      I => U1_Y(7),
      O => BUS_OUT(7)
    );
  BUS_OUT_6_OBUF : OBUF
    port map (
      I => U1_Y(6),
      O => BUS_OUT(6)
    );
  BUS_OUT_5_OBUF : OBUF
    port map (
      I => U1_Y(5),
      O => BUS_OUT(5)
    );
  BUS_OUT_4_OBUF : OBUF
    port map (
      I => U1_Y(4),
      O => BUS_OUT(4)
    );
  BUS_OUT_3_OBUF : OBUF
    port map (
      I => U1_Y(3),
      O => BUS_OUT(3)
    );
  BUS_OUT_2_OBUF : OBUF
    port map (
      I => U1_Y(2),
      O => BUS_OUT(2)
    );
  BUS_OUT_1_OBUF : OBUF
    port map (
      I => U1_Y(1),
      O => BUS_OUT(1)
    );
  BUS_OUT_0_OBUF : OBUF
    port map (
      I => U1_Y(0),
      O => BUS_OUT(0)
    );
  RD_0_not00001 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U5_TY(2),
      I1 => U5_TY(1),
      I2 => U5_TY(0),
      O => RD_0_not0000
    );
  RD_or00001 : LUT4
    generic map(
      INIT => X"F2FA"
    )
    port map (
      I0 => T_END,
      I1 => U3_Y_50,
      I2 => RESET_IBUF_18,
      I3 => RD_12,
      O => RD_or0000
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_9
    );
  U3_not00001_INV_0 : INV
    port map (
      I => RX_IBUF_24,
      O => U3_not0000
    );
  U5_Mcount_TY_xor_0_11_INV_0 : INV
    port map (
      I => U5_TY(0),
      O => Result(0)
    );
  U4_Mcount_TY_xor_0_11_INV_0 : INV
    port map (
      I => U4_TY(0),
      O => Result_0_1
    );
  RD_1 : LDPE
    port map (
      D => N0,
      G => T_START,
      GE => RD_0_not0000,
      PRE => RD_or0000,
      Q => RD_1_14
    );
  XST_VCC : VCC
    port map (
      P => N01
    );
  U3_Mshreg_Y : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => N01,
      A2 => N0,
      A3 => N0,
      CLK => CLK_BUFGP_9,
      D => U3_not0000,
      Q => U3_Mshreg_Y_49
    );
  U3_Y1 : FD
    port map (
      C => CLK_BUFGP_9,
      D => U3_Mshreg_Y_49,
      Q => U3_Y1_51
    );
  RESET_IBUF_shift1 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => N01,
      Q => RESET_IBUF_shift1_19
    );
  RESET_IBUF_shift2 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => RESET_IBUF_shift1_19,
      Q => RESET_IBUF_shift2_20
    );
  RESET_IBUF_shift3 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => RESET_IBUF_shift2_20,
      Q => RESET_IBUF_shift3_21
    );
  RESET_IBUF_shift4 : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => RESET_IBUF_shift3_21,
      Q => RESET_IBUF_shift4_22
    );
  U3_Y11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_Y1_51,
      I1 => RESET_IBUF_shift4_22,
      O => U3_Y11_52
    );
  U3_Y : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => RESET_IBUF_18,
      D => U3_Y11_52,
      Q => U3_Y_50
    );

end Structure;

