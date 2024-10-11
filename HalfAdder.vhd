library ieee;
use ieee.std_logic_1164.all;

entity halfadder is
port(
a : in std_logic;
b : in std_logic;
s : out std_logic;
c : out std_logic
);
end halfadder;

architecture HA of halfadder is
begin
s<=a xor b;
c<=a and b;
end HA;
