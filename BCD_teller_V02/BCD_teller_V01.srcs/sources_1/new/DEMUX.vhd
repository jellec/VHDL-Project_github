----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- Demux stuurt de anode's aan van de 7segment displays naargelang welke van de 8 displays moet oplichten
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX is
    Port (Dispsel_in   :in std_logic_vector(2 downto 0) ;
          an_out       :out std_logic_vector(7 downto 0) );
end DEMUX;

architecture Behavioral of DEMUX is   
begin
    WITH Dispsel_in SELECT      
       an_out  <=   "11111110" WHEN "000",  --Anode 0 --> meest rechts
                    "11111101" WHEN "001",
                    "11111011" WHEN "010",
                    "11110111" WHEN "011",
                    "11101111" WHEN "100",
                    "11011111" WHEN "101",
                    "10111111" WHEN "110",
                    "01111111" WHEN "111";  --Anode 7 --> meest links

end Behavioral;
