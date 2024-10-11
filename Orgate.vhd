library ieee;
use ieee.std_logic_1164.all;

entity orgt is
port(
A : in std_logic;   
B : in std_logic;      
Y : out std_logic
);
end orgt;

architecture dataflow of orgt is
 begin
Y <= A OR B;
end dataflow;
