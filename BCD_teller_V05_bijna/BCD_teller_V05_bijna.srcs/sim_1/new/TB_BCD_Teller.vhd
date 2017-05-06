
library ieee;
use ieee.std_logic_1164.all;

entity testbench is 
    generic (   TB_Dist1 : natural := 2;
                TB_Dist2 : natural := 5 );
end entity;

architecture TB_teller of testbench is
      signal EndOfSimulation : boolean := False;
      signal clk    : std_logic;
      signal rst    : std_logic;
      signal seg    : std_logic_vector(7 downto 0);
      signal an     : std_logic_vector(7 downto 0);
      signal cnt_dwn : std_logic;     -- aftellen
      signal tel_rst : std_logic;     -- teller op nul
      signal test   : std_logic;      -- disp test
      signal zero   : std_logic;      -- leading zero
  
  constant PERIOD : time := 10 ns;
    
begin

  process
  begin
    clk <= '0';
    cnt_dwn <= '0';
    test <= '0';
    zero <= '0';
    loop
      wait for PERIOD/2;
      clk <= not clk;
      exit when EndOfSimulation;
    end loop;
    wait;
  end process;

  main: process
  begin
    rst <='0';
    tel_rst <='1';
    wait for PERIOD;
    rst <='1';
    tel_rst <='0';
    wait for 25000 ns; 
    EndOfSimulation <= True;
    wait;
  end process;
  
  Teller : entity work.Eight_Digit_BCD_teller
  generic map ( Dist1 => TB_Dist1,
                Dist2 => TB_dist2)
  port map (
    rst => rst,
    clk => clk,
    seg => seg,
    an => an,
    test => test,
    zero => zero,
    cnt_dwn => cnt_dwn,
    tel_rst => tel_rst
    --led0 => led0
  );


end architecture TB_teller;