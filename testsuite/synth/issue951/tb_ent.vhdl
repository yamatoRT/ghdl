entity tb_ent is
end tb_ent;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_ent is
  signal clk : std_logic;
  signal en : std_logic;
  signal din : std_logic;
  signal dout : std_logic;
begin
  dut: entity work.ent
    port map (clk => clk, enable => en, i => din, o => dout);

  process
    procedure pulse is
    begin
      clk <= '0';
      wait for 1 ns;
      clk <= '1';
      wait for 1 ns;
    end pulse;
  begin
    din <= '0';
    en <= '1';
    pulse;
    assert dout = '0' severity failure;

    din <= '1';
    en <= '1';
    pulse;
    assert dout = '1' severity failure;

    din <= '0';
    en <= '0';
    pulse;
    assert dout = '1' severity failure;
    wait;

    din <= '0';
    en <= '1';
    pulse;
    assert dout = '0' severity failure;
    wait;

  end process;
end behav;
