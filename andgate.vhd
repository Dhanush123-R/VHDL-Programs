library ieee;
use ieee.std_logic_1164.all;

entity andgt is
port(
A : in std_logic;   
B : in std_logic;      
Y : out std_logic
);
end andgt;

architecture dataflow of andgt is
 begin
Y <= A AND B;
end dataflow; 
