----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- Scan teller zorgt voor een frequentie van 400 Hz --> Elk van de 8 displays zal dan 50 x per seconde oplichten
-- Deze levert ook een count_out van 2Hz voor de teller aan te sturen
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Scan_teller is
generic(    Max_cntr1 : natural ;
            Max_cntr2 : natural);  
    Port (rst       : in std_logic;
          clk       : in std_logic;
          scan_out  : out std_logic;
          count_out : out std_logic );
end Scan_teller;

architecture Behavioral of Scan_teller is

begin
    process(rst, clk)
    variable cntr1, cntr2 : integer;
    begin
        if rst = '0' then
            scan_out <= '0';
            count_out <= '0';
            cntr1 := 0;
            cntr2 := 0;
        elsif rising_edge(clk) then
             -----------counter 1 scan -------
             if cntr1 < Max_cntr1 - 1 then
                 cntr1 := cntr1 + 1;
                 scan_out <= '0';
             else 
                 cntr1 := 0;
                 scan_out <= '1';
             end if;
             -----------counter 2 count -------
             if cntr2 < Max_cntr2 - 1 then
                 cntr2 := cntr2 + 1;
                 count_out <= '0';
             else 
                 cntr2 := 0;
                 count_out <= '1';
             end if;                
        end if;
    end process;
end Behavioral;



