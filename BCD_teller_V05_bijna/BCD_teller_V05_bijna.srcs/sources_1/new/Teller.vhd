----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- Dit is de eigenlijke teller
-- 8 voudige teller met generate van 8x enkelvoudige teller
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity enkele_Teller is
    Port ( 
    count_in    : in std_logic;     -- telpuls
    cnt_dwn     : in std_logic;     -- aftellen
    tel_rst     : in std_logic;     -- teller op nul
    BCD_out : out std_logic_vector ( 3 downto 0);
    carry_out: out std_logic
    );
end enkele_Teller;

architecture Behavioral of enkele_Teller is
begin
    process(count_in, tel_rst)
        variable tempval : std_logic_vector (3 downto 0);
        variable tempcarry : std_logic ;
    begin
        tempcarry := '0';
        if tel_rst = '1' then
            tempval := x"0";
            tempcarry := '0';
        elsif rising_edge(count_in) then   -- telpuls
        
                -----------optellen----------------
                if cnt_dwn = '0' then
                    if tempval = x"9" then
                        tempval := x"0";
                        tempcarry := '1';
                    else
                        tempcarry := '0';
                        CASE tempval IS      
                                WHEN x"0" => tempval := x"1";
                                WHEN x"1" => tempval := x"2";
                                WHEN x"2" => tempval := x"3";
                                WHEN x"3" => tempval := x"4";
                                WHEN x"4" => tempval := x"5";
                                WHEN x"5" => tempval := x"6";
                                WHEN x"6" => tempval := x"7";
                                WHEN x"7" => tempval := x"8";
                                WHEN x"8" => tempval := x"9";
                                WHEN others => tempval := x"F";   -- fout 
                        end CASE;                             
                    end if; 
                -------------------aftellen---------------
                else
                    if tempval = x"0" then
                        tempval := x"9";
                        tempcarry := '1';
                    else
                        tempcarry := '0';
                        CASE tempval IS      
                                WHEN x"1" => tempval := x"0";
                                WHEN x"2" => tempval := x"1";
                                WHEN x"3" => tempval := x"2";
                                WHEN x"4" => tempval := x"3";
                                WHEN x"5" => tempval := x"4";
                                WHEN x"6" => tempval := x"5";
                                WHEN x"7" => tempval := x"6";
                                WHEN x"8" => tempval := x"7";
                                WHEN x"9" => tempval := x"8";
                                WHEN others => tempval := x"F";   -- fout 
                        end CASE;                                                    
                    end if;                 
                end if;
                ---------------------------------------------
                
        end if;
        BCD_out <= tempval;
        carry_out <= tempcarry;
    end process;

end Behavioral;
