library ieee;
use ieee.std_logic_1164.all;

entity with_select is
port(
  A : in std_logic;
  B : in std_logic;
  C : in std_logic;
  D : in std_logic;
  control : in std_logic_vector(1 downto 0);
  Z : out std_logic);

end with_select;

architecture behav of with_select is

signal control_signal : std_logic_vector(1 downto 0);
begin

control_signal <= control;
with control_signal select 
 Z <= A when "00",
      B when "01",
      C when "10",
      D when "11",
      '0' when others;

end behav;
