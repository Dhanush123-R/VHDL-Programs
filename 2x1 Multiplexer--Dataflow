library ieee;
use ieee.std_logic_1164.all;

entity mux is
port(
a,b,c,d : in std_logic;
s0,s1 : in std_logic;
y : out std_logic
);
end mux;

architecture behav of mux is
begin
process(a,b,c,d,s0,s1) is
begin
  if(s0 <='0' and s1 <= '0') then
       y <= a;
  elsif(s0 <= '0' and s1 <= '1') then
       y <=b;
  elsif(s0 <='1' and s1 <= '0') then
       y <=c;
  else
       y <= d;
  end if;
end process;
end behav;
