library ieee;
use ieee.std_logic_1164.all;

entity halfsub is
port(
A,B : IN STD_LOGIC;
D,BO : OUT STD_LOGIC
);
end halfsub;

architecture Dataflow of halfsub is
begin
D <= A XOR B;
BO <= (NOT A) AND B;
END Dataflow;
