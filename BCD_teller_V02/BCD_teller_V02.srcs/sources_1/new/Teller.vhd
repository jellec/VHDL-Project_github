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
        variable temp1, temp2 : std_logic_vector (3 downto 0);
    begin
        if tel_rst = '1' then
            temp1 := "0000";
        else
            if rising_edge(count_in) then   -- telpuls
                if cnt_dwn = '0' then   --optellen
                    if temp2 = x"9" then
                        temp1 := x"0";
                        carry_out <= '1';
                    else
                        carry_out <= '0';
                        CASE temp2 IS      
                                WHEN x"0" => temp1 := x"1";
                                WHEN x"1" => temp1 := x"2";
                                WHEN x"2" => temp1 := x"3";
                                WHEN x"3" => temp1 := x"4";
                                WHEN x"4" => temp1 := x"5";
                                WHEN x"5" => temp1 := x"6";
                                WHEN x"6" => temp1 := x"7";
                                WHEN x"7" => temp1 := x"8";
                                WHEN x"8" => temp1 := x"9";
                                WHEN others => temp1 := x"F";   -- fout 
                        end CASE;                             
                    end if; 
                else                    -- aftellen
                    if temp2 = x"0" then
                        temp1 := x"9";
                        carry_out <= '1';
                    else
                        carry_out <= '0';
                        CASE temp2 IS      
                                WHEN x"1" => temp1 := x"0";
                                WHEN x"2" => temp1 := x"1";
                                WHEN x"3" => temp1 := x"2";
                                WHEN x"4" => temp1 := x"3";
                                WHEN x"5" => temp1 := x"4";
                                WHEN x"6" => temp1 := x"5";
                                WHEN x"7" => temp1 := x"6";
                                WHEN x"8" => temp1 := x"7";
                                WHEN x"9" => temp1 := x"8";
                                WHEN others => temp1 := x"F";   -- fout 
                        end CASE;                                                    
                    end if;                 
                end if;
            end if;
        end if;
        temp2 := temp1; -- onhouden voor volgende cyclus
        BCD_out <= temp1;
    end process;

end Behavioral;
