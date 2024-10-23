
library ieee;
use ieee.std_logic_1164.all;

entity demux8x1 is
port(
A : in std_logic;
S : in std_logic_vector(2 downto 0);
Y : out std_logic_vector(7 downto 0)
);
end demux8x1;

architecture behav of demux8x1 is
begin
process(A,S)
begin

if s="000" then
   Y(0) <='1';
   Y(1) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="001" then
   Y(1) <='1';
   Y(0) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="010" then
   Y(2) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="011" then
   Y(3) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(2) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="100" then
   Y(4) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(5) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="101" then
   Y(5) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(6) <='0';
   Y(7) <='0';
elsif s="110" then
   Y(6) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(7) <='0';
elsif s="111" then
   Y(7) <='1';
   Y(0) <='0';
   Y(1) <='0';
   Y(2) <='0';
   Y(3) <='0';
   Y(4) <='0';
   Y(5) <='0';
   Y(6) <='0';
else
   Y <= "00000000";
end if;

end process;
end behav;
