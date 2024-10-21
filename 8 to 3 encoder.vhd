library ieee;
use ieee.std_logic_1164.all;

entity encoder8to3 is
port(
A : in std_logic_vector(7 downto 0);
Y : out std_logic_vector(2 downto 0)
);
end encoder8to3;

architecture behav of encoder8to3 is
begin
 process(A)
  begin
----------------
    case A is
      when "00000001" =>
          Y <= "000";
      when "00000010" =>
          Y <= "001";
      when "00000100" =>
          Y <= "010";
      when "00001000" =>
          Y <= "011";
      when "00010000" =>
          Y <= "100";
      when "00100000" =>
          Y <= "101";
      when "01000000" =>
          Y <= "110";
      when "10000000" =>
          Y <= "111";
      when others =>
           Y <= "000";
     end case;
end process;
end behav;
