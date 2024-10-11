library ieee;
use ieee.std_logic_1164.all;

entity halfadd is
port(
a,b,Cin : in std_logic;
S,Cout : out std_logic
);
end halfadd;

architecture dataflow of halfadd is
begin

S <= a xor b xor Cin;
Cout <= (a and b) or (Cin and a) or (Cin and b);

end dataflow;
