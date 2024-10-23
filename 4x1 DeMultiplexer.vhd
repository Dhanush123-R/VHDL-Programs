library ieee;
use ieee.std_logic_1164.all;

entity demux4x1 is
port(
A : in std_logic;
S : in std_logic_vector(1 downto 0);
Y : out std_logic_vector(3 downto 0)
);
end demux4x1;

architecture behav of demux4x1 is
begin
process(A,S)
begin

case S is

when "00" =>
   Y(0) <= A;
   Y(1) <= '0';
   Y(2) <= '0';
   Y(3) <= '0';
when "01" =>
   Y(1) <= A;
   Y(0) <= '0';
   Y(2) <= '0';
   Y(3) <= '0';
when "10" =>
   Y(2) <= A;
   Y(0) <= '0';
   Y(1) <= '0';
   Y(3) <= '0';
when "11" =>
   Y(3) <= A;
   Y(0) <= '0';
   Y(1) <= '0';
   Y(2) <= '0';
when others =>
   Y <= "0000";

end case;

end process;
end behav;
