-- and_gate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity and_gate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end and_gate;

-- Architecture body
architecture Behavioral of and_gate is
begin
    Y <= A and B;
end Behavioral;