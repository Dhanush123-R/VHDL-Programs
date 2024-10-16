library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
port(
a : in std_logic_vector(3 downto 0);
s : in std_logic_vector(1 downto 0);
y : out std_logic
);
end mux4to1;

architecture dataflow of mux4to1 is
begin
  process(a,s)
    begin
        ------------- IF CONDITION-------------
          if s="00" then
             y <= a(0);
          elsif s="01" then
             y <= a(1);
          elsif s="10" then
             y <= a(2);
          elsif s="11" then
             y <= a(3);
          else 
             y <='0'; -- optional
         end if;
    end process;
end dataflow;
     -------------------------------------------
      ----------------SWITCH CONDITION-------------
         case s is
              when "00" =>
                   y <= a(0);
              when "01" =>
                   y <= a(1);
              when "10" =>
                   y <= a(2);
              when "11" =>
                   y <= a(3);
              when others =>
                   y <='0';
        end case;
    end process;
end dataflow; 
------------------------------------------------
