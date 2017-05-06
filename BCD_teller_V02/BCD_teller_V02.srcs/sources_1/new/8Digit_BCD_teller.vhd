----------------------------------------------------------------------------------
-- project VHDL
-- Jarvid Gruwé - Remko Van Maldeghem - Jelle Coremans
-- 2016-2017
--
-- in deze file worden alle componenten met elkaar verbonden
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Eight_Digit_BCD_teller is
generic (   Dist1 : natural := 250_000;        --scaling refresh display
            Dist2 : natural := 50_000_00      --scaling telfreq
        );

    Port (clk       : in std_logic;
          rst       : in std_logic;
          test      : in std_logic;     -- SW0 display test = alles aan
          zero      : in std_logic;     -- SW1 leading zero onderdrukken
          tel_rst   : in std_logic;     -- SW2 teller op nul
          cnt_dwn   : in std_logic;     -- SW3 aftellen
          led      : out std_logic_vector(8 downto 0);  --leds ter controle van leadingZero
          seg       : out std_logic_vector(7 downto 0) ;    
          an        : out std_logic_vector(7 downto 0) );
          
end Eight_Digit_BCD_teller;

architecture Behavioral of Eight_Digit_BCD_teller is
    signal scan : std_logic;
    signal count : std_logic;
    signal tel: std_logic;
    signal BCD: std_logic_vector (3 downto 0);  -- BCD van display die aangestuurd wordt
    signal Disp : std_logic_vector(2 downto 0) ; -- display selectie Anode

begin
        Scan_teller: entity work.Scan_teller
        generic map (   Max_cntr1 => Dist1,
                        Max_cntr2 => Dist2)
        port map(
            clk => clk,
            rst => rst,
            scan_out => scan,
            count_out => count
            );
        
        mux: entity work.MUX
            port map(
            scan_in => scan,
            count_in => count,
            cnt_dwn => cnt_dwn,
            tel_rst => tel_rst,
            BCD_out => BCD,
            Dispsel_out => Disp,
            zero => zero,
            test => test,
            led => led
            );
            
        
        demux: entity work.DEMUX
            port map(
            an_out => an,
            Dispsel_in => Disp
            );
    
        segment: entity work.Segment
            port map(
            BCD_in => BCD,
            seg_out => seg
            );
    
end Behavioral;
