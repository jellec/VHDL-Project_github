----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- Hiermee worden de juiste segmenten aangestuurd van het 7segment display
-- de inkomende BCD code wordt vertaald naar de juiste segmenten
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Segment is
    Port (seg_out   : out std_logic_vector(7 downto 0);  -- segmenten  7=DP 6=CG 5=CF 4=CE 3=CD 2=CC 1=CB 0=CA
          BCD_in    : in std_logic_vector(3 downto 0)        
    );
end Segment;

architecture Segment of Segment is
begin
    With BCD_in SELECT
        seg_out <=  "11000000" WHEN x"0", -- 0     
                    "11111001" WHEN x"1", -- 1
                    "10100100" WHEN x"2", -- 2
                    "10110000" WHEN x"3", -- 3
                    "10011001" WHEN x"4", -- 4
                    "10010010" WHEN x"5", -- 5
                    "10000010" WHEN x"6", -- 6
                    "11111000" WHEN x"7", -- 7
                    "10000000" WHEN x"8", -- 8
                    "10010000" WHEN x"9", -- 9
                    "11111111" WHEN x"E", -- E --> onderdrukking leidende nullen = alles uit
                    "00000000" WHEN x"F", -- F --> Display test = alles aan
                    "10111111" WHEN others; -- streep - als foutcode
end Segment;
