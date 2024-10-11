library ieee;
use ieee.std_logic_1164.all;

entity notgt is
port(
A : in std_logic;    
Y : out std_logic
);
end notgt;

architecture dataflow of notgt is
 begin
Y <= NOT A;
end dataflow;
