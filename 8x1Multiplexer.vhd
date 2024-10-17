library ieee;
use ieee.std_logic_1164.all;

entity mux8to1 is
port(

a : in std_logic_vector(7 downto 0);
s : in std_logic_vector(2 downto 0);
y : out std_logic
);
end mux8to1;

architecture behav of mux8to1 is
begin
   process(a,s)
      begin
-------------SWITCH CONDITION-------------
           case s is
                when "000" =>
                     y <= a(0);
                when "001" =>
                    y <= a(1);
                when "010" =>
                    y <= a(2);
                when "011" =>
                    y <= a(3);
                when "100" =>
                    y <= a(4);
                when "101" =>
                    y <= a(5);
                when "110" =>
                    y <= a(6);
               when "111" =>
                    y <= a(7);
                when others =>
                    y <= '0'; --optional
           end case;
    end process;
------------------------------------------------

--------------IF CONDITION-----------------------
         if s="111" then
             y <= a(7);
         elsif s="110" then
             y <= a(6);
         elsif s="101" then
             y <= a(5);
         elsif s="100" then
             y <= a(4);
         elsif s="011" then
             y <= a(3);
         elsif s="010" then
             y <= a(2);
         elsif s="001" then
             y <= a(1);
         elsif s="000" then
             y <= a(0);
         else
             y <= '0';
         end if;
    end process;
------------------------------------------------
end behav;
