                                                         VHDL
//UART ENTITY - TOP LEVEL
use IEEE.std_logic_1164.all
entity UART is
port(
     BUS_IN: in std_logic_vector(7 down to 0);
     START: in std_logic;
     CTS: in std_logic;       
     RESET: in std_logic;
     SEL: in std_logic_vector(2 down to 0);
     CLK: in std_logic;
     BUFFER_FULL: in std_logic;
     ONE: in std_logic:= '1';
     ZERO: in std_logic:= '0';
     RX: in std_logic_vector(7 down to 0);
     TX: out std_logic_vector(7 down to 0);
     RTS: out std_logic;
     READY: out std_logic;
     BUS_OUT: out std_logic_vector(7 down to 0)
     );
end UART;
architecture STRUCT of UART is
     component BAUD_GEN is
               ...
     end component;
     component SERIALIZER is
               ...
     end component;
     component DESERIALIZER is
               ...
     end component;
     signal T0: std_logic;
     signal T1: std_logic;
     signal CLK_S: std_logic;
     signal CLK_D: std_logic;
begin
 ...
end STRUCT;

//SERIALIZER ENTITY --> shift-parallel register
use IEEE.std_logic_1164.all

//DESERIALIZER ENTITY
use IEEE.std_logic_1164.all
entity DESERIALIZER is
port( 
     RESET: in std_logic;
     CLK: in std_logic;
     RX: in std_logic_vector(7 down to 0);
     READY: out std_logic;
     BUS_OUT: out std_logic_vector(7 down to 0)
     );
end DESERIALIZER;
architecture STRUCT of DESERIALIZER is
     component REG_PP_8_BIT is
               ...
     end component;
     component REG_SP_8_BIT is
               ...
     end component;
     component CLK_DELAYER_4 is
               ...
     end component;
     component CLK_DIVIDER_8 is
               ...
     end component;
     signal T0: std_logic;
     signal T1: std_logic;
     signal T2: std_logic;
     signal T3: std_logic;
     signal T4: std_logic_vector(7 down to 0);
 begin
  U1: REG_PP_8_BIT
    port map(
             CLK => T3; 
             RESET => RESET;
             X =>  T4;
             Y => BUS_OUT
             );
  U2: REG_SP_8_BIT
    port map(
             CLK => T3; 
             RESET => RESET;
             X =>  RX;
             Y => T4
             );
  U3: CLK_DELAYER_4
    port map(
             CLK => CLK; 
             RESET => RESET;
             X =>  T0;
             Y => T1
             ); 
  U4: CLK_DIVIDER_8
    port map(
             RESET => T2;
             Y => T3;
             );
 T2 <= T1 and T3;
 T0 <= not RX;
end STRUCT;
 
//BAUD GENERATOR ENTITY
use IEEE.std_logic_1164.all
entity BAUD_GEN is
port( 
     CLK: in std_logic;
     CLK_T: out std_logic;
     CLK_R: out std_logic;
     SEL_B: in std_logic_vector(2 down to 0);
     );
architecture rtl of BAUD_GEN is
     component CLK_GEN is
               ...
     end component;
     component CLK_DIVIDER_8 is
               ...
     end component;
     signal T: std_logic_vector(7 down to 0);
     signal M: std_logic;
 begin
    U1: CLK_DIVIDER_8
    port map(
             RESET => M;
             Y => CLK_R;
             );
    CLK_R <= T(7) when SEL_B is'000';
             T(6) when SEL_B is'001'; 
             T(5) when SEL_B is'010'; 
             T(4) when SEL_B is'011'; 
             T(3) when SEL_B is'100'; 
             T(2) when SEL_B is'101'; 
             T(1) when SEL_B is'110'; 
             T(0) when SEL_B is'111'; 
end STRUCT;
 
//CLOCK DIVIDER 8 ENTITY 
use IEEE.std_logic_1164.all
entity CLK_DIVIDER_8 is
port(
     ONE: in std_logic:= '1';
     RESET: in std_logic; 
     Y: out std_logic
     );
end CLK_DIVIDER_8;
architecture rtl of CLK_DIVIDER_8 is
   signal T: std_logic_vector(2 down to 0);
 begin
  T(3)<= T(1) and T(2);
  count: process( CLK, RESET ) 
   begin 
    if( RESET = ’1’ ) then 
    T <= ”00”; 
    Y <= ”0”;
    elsif( CLK’event and CLK = '1' ) then 
      if(T(1) = '0') then
        T(1) = '1';
      else T(1) = '0';
      end if;
      if(T(1) = '1') then
         if(T(2) = '0') then
           T(2) = '1';
         else T(1) = '0';
         end if;
      end if;
      if(T(3) = '1') then
         if(Y = '0') then
           Y = '1';
         else Y = '0';
         end if;
    end if; 
   end process; 
end rtl;


//CLOCK GENERATOR ENTITY 
use IEEE.std_logic_1164.all

//COUNTER mod4 ENTITY
use IEEE.std_logic_1164.all
entity CLK_DELAYER_4 is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic; 
     Y: out std_logic 
     ); 
end CLK_DELAYER_4; 
architetcture rtl of CLK_DELAYER_4 is 
 signal T1, T2, T3: std_logic; 
begin 
 reg: process( CLK, RESET ) 
  begin 
   if( RESET = ’1’ ) then 
    T1 <= ’0’; 
    T2 <= ’0’; 
    T3 <= ’0’; 
    Y <= ’0’; 
  elsif( CLK’event and CLK = '1' ) then 
   T1 <= X; 
   T2 <= T1; 
   T3 <= T2; 
   Y <= T3; 
  end if; 
 end process; 
end rtl;

//COUNTER mod8 ENTITY
use IEEE.std_logic_1164.all
entity COUNTER_8_BIT is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     Y: out std_logic_vector(7 down to 0)
     ); 
end COUNTER_8_BIT;
architetcture rtl of COUNTER_8_BIT is 
 signal TY: std_logic_vector((7 down to 0);
begin 
 count: process( CLK, RESET ) 
  begin 
   if( RESET = ’1’ ) then 
   TY <= ”0000000”; 
  elsif( CLK’event and CLK = '1' ) then 
   TY <= TY + ”0000001”; 
  end if; 
 end process; 
 Y <= TY; 
end rtl;

// SHIFT-PARALLEL REGISTER ENTITY
use IEEE.std_logic_1164.all
entity REG_SP_8_BIT is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic; 
     Y: out std_logic_vector(7 down to 0)
     ); 
end REG_SP_8_BIT; 
architetcture rtl of REG_SP_8_BIT is 
 signal T1, T2, T3, T4, T5, T6, T7: std_logic; 
begin 
 reg: process( CLK, RESET ) 
  begin 
   if( RESET = ’1’ ) then 
    T1 <= ’0’; 
    T2 <= ’0’; 
    T3 <= ’0’;
    T4 <= ’0’; 
    T5 <= ’0’; 
    T6 <= ’0’; 
    T7 <= ’0’;  
    Y(0) <= ’0’; 
   elsif( CLK’event and CLK = '1' ) then 
    T1 <= X; 
    T2 <= T1; 
    T3 <= T2;
    T4 <= T3; 
    T5 <= T4; 
    T6 <= T5; 
    T7 <= T6;  
    Y(0) <= T7; 
   end if;
   Y(1)<= X; 
   Y(2)<= T1; 
   Y(3)<= T2;
   Y(4)<= T3; 
   Y(5)<= T4; 
   Y(6) <= T5; 
   Y(7) <= T6; 
 end process; 
end rtl; 

//PARALLEL REGISTER ENTITY
use IEEE.std_logic_1164.all
entity REG_PP_8_BIT is 
port(
     CLK: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic_vector(7 down to 0); 
     Y: out std_logic_vector(7 down to 0) 
     ); 
end REG_PP_8_BIT;
architetcture rtl of REG_PP_4_BIT is 
begin 
 reg: process( CLK, RESET ) 
  begin 
   if( RESET = ’1’ ) then 
    Y(0) <= ’0’; 
    Y(1) <= ’0’; 
    Y(2) <= ’0’; 
    Y(3) <= ’0’; 
   elsif( CLK’event and CLK = '1' ) then 
    Y(0) <= X(0); 
    Y(1) <= X(1); 
    Y(2) <= X(2); 
    Y(3) <= X(3); 
   end if; 
 end process; 
end rtl;

//PARALLEL-SHIFT REGISTER ENTITY
use IEEE.std_logic_1164.all
entity REG_PS_9_BIT is 
 port( 
      CLK: in std_logic; 
      RESET: in std_logic; 
      LOAD: in std_logic; 
      XP: in std_logic_vector(8 down to 0); 
      Y: out std_logic_vector(8 down to 0); 
end REG_PS_9_BIT;
architetcture rtl of REG_PS_9_BIT is 
 signal T: std_logic_vector(8 down to 0); 
 signal Z: std_logic_vector(8 down to 0); 
begin  
 T <= XP when LOAD = ’1’ else 
 ’1’ & Z(7 down to 0) when LOAD = ’0’ else 
 ”111111111”; 
 reg: process( CLK, RESET ) 
 begin 
 if( RESET = ’1’ ) then 
 T <= ”111111111”; 
 elsif( CLK’event and CLK = '1' ) then 
 Z <= T; 
 end if; 
 end process; 
 Y <= Z(0); 
end rtl;
     