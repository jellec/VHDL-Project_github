----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- MUX combineert de 8 BCD tellers en stuurt de juiste code uit voor decodering door segment en demux
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity MUX is
    Port (scan_in       : in std_logic;
          rst           : in std_logic;
          count_in      : in std_logic;     -- telpuls
          cnt_dwn       : in std_logic;     -- aftellen
          tel_rst       : in std_logic;     -- teller op nul 
          test          : in std_logic;     -- display test          
          BCD_out       : out std_logic_vector(3 downto 0);     -- Array met BCD_waarden
          Dispsel_out   : out std_logic_vector(2 downto 0) ;    -- selectie 1 van 8 Displays
          led           : out std_logic_vector(7 downto 0) ;    -- leds voor debug
          zero          : in std_logic);    --leidende nul
end MUX;

architecture Behavioral of MUX is
    type array1 is array (7 downto 0) of std_logic_vector (3 downto 0);
    signal BCDarray : array1;
    signal carry_temp : std_logic_vector(7 downto 0);   -- carry_temp(7) is dummy, wordt verder niet gebruikt
    signal leadingZero :std_logic_vector(7 downto 0) := "00000000";   -- welke segmenten worden gedoofd
    
            component enkele_Teller is
                Port ( 
                count_in    : in std_logic;     -- telpuls
                cnt_dwn     : in std_logic;     -- aftellen
                tel_rst     : in std_logic;     -- teller op nul
                BCD_out     : out std_logic_vector ( 3 downto 0);
                carry_out   : out std_logic
                );
            end component enkele_Teller;
begin
    
    tellers: for i in 0 to 7 generate
    begin
        eerste: if (i = 0) generate
        begin
            tel: component enkele_Teller
                port map( count_in,cnt_dwn, tel_rst, BCDarray(i), carry_temp(i) );
        end generate eerste;

        andere: if (i > 0) generate
        begin
            tel: component enkele_Teller
                port map( carry_temp(i-1), cnt_dwn, tel_rst, BCDarray(i), carry_temp(i) );
        end generate andere;
          
    end generate tellers;

    --led <= carry_temp;      -- debug

    process(scan_in)
    variable count :Natural := 0;
    begin
        if rst = '0' then
            BCD_out <= x"E";    -- alles uit bij reset - asynchroon
            
        elsif rising_edge(scan_in) then          
          
            if test = '1' then
                BCD_out <= x"F";    -- alles aan bij disp test
            elsif zero = '0' then
                    BCD_out <= BCDarray(count);
            elsif leadingZero(count) = '1' and BCDarray(count) = x"0" then
                    BCD_out <= x"E"; -- 0 onderdrukt wanneer leadingzero 0 is 
            else
                    BCD_out <= BCDarray(count);
            end if;
            
            -- count veranderen en display aansturen moet elke puls gebeuren:
            Dispsel_out <= std_logic_vector(to_unsigned(count, 3));     --juiste display aansturen
            if count < 7 then
                count := count + 1;
            else 
                count := 0;    
            end if;
        end if;
    end process;


    process(BCDarray)
   
    begin

        if BCDarray(7) = "0000" then
            if BCDarray(6) = "0000" then
                if BCDarray(5) = "0000" then
                    if BCDarray(4) = "0000" then
                        if BCDarray(3) = "0000" then
                            if BCDarray(2) = "0000" then
                                if BCDarray(1) = "0000" then
                                    leadingZero <= (0 => '0', others => '1');                                    
                                else
                                    leadingZero <= (0 TO 1 => '0', others => '1');        
                                end if;
                            else
                                leadingZero <= (0 TO 2 => '0', others => '1');      
                            end if;
                        else
                            leadingZero <= (0 TO 3 => '0', others => '1');       
                        end if;
                     else
                        leadingZero <= (0 TO 4 => '0', others => '1');      
                     end if;
                 else
                     leadingZero <= (0 TO 5 => '0', others => '1');       
                 end if;
             else
                   leadingZero <= (0 TO 6 => '0', others => '1');      
             end if;
        else
            leadingZero <= (0 TO 7 => '0');       
        end if;

        --led <= leadingZero; --debug
    end process;
    
end Behavioral;
