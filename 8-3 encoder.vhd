library ieee;
use ieee.std_logic_1164.all;

entity encoder8to3 is
port(
Y : in std_logic_vector(7 downto 0);
A : out std_logic_vector(2 downto 0)
);
end encoder8to3;

architecture behav of encoder8to3 is
begin
 process(Y)
  begin
    case Y is
      when "000" =>
          A <= "00000000";
      when "001" =>
          A <= "00000010";
      when "010" =>
          A <= "00000100";
      when "011" =>
          A <= "00001000";
      when "100" =>
          A <= "00010000";
      when "101" =>
          A <= "00100000";
      when "110" =>
          A <= "01000000";
      when "111" =>
          A <= "10000000";
      when others =>
          A <= "000";
     end case;
   end process;
end behav;
