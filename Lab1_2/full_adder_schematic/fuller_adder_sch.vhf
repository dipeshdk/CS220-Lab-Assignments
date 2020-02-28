--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : fuller_adder_sch.vhf
-- /___/   /\     Timestamp : 01/13/2020 15:39:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /media/dipeshk/hacker/CS220Labs/Lab1_2/full_adder_schematic/fuller_adder_sch.vhf -w /media/dipeshk/hacker/CS220Labs/Lab1_2/full_adder_schematic/fuller_adder_sch.sch
--Design Name: fuller_adder_sch
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity fuller_adder_sch is
   port ( );
end fuller_adder_sch;

architecture BEHAVIORAL of fuller_adder_sch is
   attribute BOX_TYPE   : string ;
   signal a       : std_logic;
   signal b       : std_logic;
   signal cin     : std_logic;
   signal cout    : std_logic;
   signal Sum     : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_15 : std_logic;
   component myxor
      port ( x : in    std_logic; 
             y : in    std_logic; 
             z : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_2 : myxor
      port map (x=>a,
                y=>b,
                z=>XLXN_15);
   
   XLXI_3 : myxor
      port map (x=>XLXN_15,
                y=>cin,
                z=>Sum);
   
   XLXI_4 : AND2
      port map (I0=>cin,
                I1=>b,
                O=>XLXN_12);
   
   XLXI_5 : AND2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_13);
   
   XLXI_6 : AND2
      port map (I0=>cin,
                I1=>a,
                O=>XLXN_11);
   
   XLXI_7 : OR3
      port map (I0=>XLXN_11,
                I1=>XLXN_12,
                I2=>XLXN_13,
                O=>cout);
   
end BEHAVIORAL;


