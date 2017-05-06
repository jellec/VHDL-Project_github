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
          count_in : in std_logic;    -- telpuls
          cnt_dwn : in std_logic;     -- aftellen
          tel_rst : in std_logic;     -- teller op nul          
          BCD_out       : out std_logic_vector(3 downto 0);     -- Array met BCD_waarden
          Dispsel_out   : out std_logic_vector(2 downto 0) );    -- selectie 1 van 8 Displays
end MUX;

architecture Behavioral of MUX is
    type array1 is array (7 downto 0) of std_logic_vector (3 downto 0);
    signal BCDarray : array1;
    signal carry_temp : std_logic_vector(7 downto 0);   -- carry_temp(7) is dummy, wordt verder niet gebruikt
            component enkele_Teller is
                Port ( 
                count_in : in std_logic;    -- telpuls
                cnt_dwn : in std_logic;     -- aftellen
                tel_rst : in std_logic;     -- teller op nul
                BCD_out : out std_logic_vector ( 3 downto 0);
                carry_out: out std_logic
                );
            end component enkele_Teller;
begin
    
    tellers: for i in 0 to 7 generate
    begin
        eerste: if (i = 0) generate
        begin
            tel: component enkele_Teller
                port map( count_in, cnt_dwn, tel_rst, BCDarray(i), carry_temp(i) );
        end generate eerste;

        andere: if (i > 0) generate
        begin
            tel: component enkele_Teller
                port map( carry_temp(i-1), cnt_dwn, tel_rst, BCDarray(i), carry_temp(i) );
        end generate andere;
          
    end generate tellers;


    process(scan_in)
    variable count :Natural := 0;
    begin
        if rising_edge(scan_in) then
            BCD_out <= BCDarray(count);
            Dispsel_out <= std_logic_vector(to_unsigned(count, 3));
            if count < 7 then
                count := count + 1;
            else 
                count := 0;    
            end if;
        end if;
    end process;
end Behavioral;
