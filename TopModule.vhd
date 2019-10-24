library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
entity TopModule is
  Port (  JXADC : in STD_LOGIC_VECTOR( 6 downto 0 ); -- 3 to 8 decoder input and 4 to 16 decoder input
          reset : in STD_LOGIC;
          JA, JB : out STD_LOGIC_VECTOR( 7 downto 0 ); -- 4 to 16 decoder output
          led : out STD_LOGIC_VECTOR( 6 downto 0 ); -- 3 to 8 decoder input and 4 to 16 decoder input
          JC : out STD_LOGIC_VECTOR( 7 downto 0 ) -- 3 to 8 decoder output
      );
end TopModule;
architecture Behavioral of TopModule is
    Signal fourTOsixteen : STD_LOGIC_VECTOR( 3 downto 0 ); -- 4 to 16 decoder input
    Signal threeTOeight : STD_LOGIC_VECTOR( 2 downto 0 ); -- 3 to 8 decoder input
    Signal sixteenMatrix : STD_LOGIC_VECTOR( 15 downto 0 ) := "0000000000000000";
    Signal eightMatrix : STD_LOGIC_VECTOR( 7 downto 0 ) := "11111111";
begin
    threeTOeight <= JXADC( 2 downto 0);
    fourTOsixteen <= JXADC( 6 downto 3);
    led <= JXADC;
    JA <= sixteenMatrix( 7 downto 0); -- 4 to 16 decoder output, first 8
    JB <= sixteenMatrix( 15 downto 8); -- 4 to 16 decoder output, second 8
    JC <= eightMatrix; -- 3 to 8 decoder output

    process ( reset, fourTOsixteen, threeTOeight)
    begin
        if ( reset = '0') then
            sixteenMatrix <= "0000000000000000";
            eightMatrix <= "11111111";
        else
            if ( fourTOsixteen = "0000" ) then
                sixteenMatrix(0) <= '1';
            elsif ( fourTOsixteen = "0001" ) then
                sixteenMatrix(1) <= '1';
            elsif ( fourTOsixteen = "0010" ) then
                sixteenMatrix(2) <= '1';
            elsif ( fourTOsixteen = "0011" ) then
                sixteenMatrix(3) <= '1';
            elsif ( fourTOsixteen = "0100" ) then
                sixteenMatrix(4) <= '1';
            elsif ( fourTOsixteen = "0101" ) then
                sixteenMatrix(5) <= '1';
            elsif ( fourTOsixteen = "0110" ) then
                sixteenMatrix(6) <= '1';
            elsif ( fourTOsixteen = "0111" ) then
                sixteenMatrix(7) <= '1';
            elsif ( fourTOsixteen = "1000" ) then
                sixteenMatrix(8) <= '1';
            elsif ( fourTOsixteen = "1001" ) then
                sixteenMatrix(9) <= '1';
            elsif ( fourTOsixteen = "1010" ) then
                sixteenMatrix(10) <= '1';
            elsif ( fourTOsixteen = "1011" ) then
                sixteenMatrix(11) <= '1';
            elsif ( fourTOsixteen = "1100" ) then
                sixteenMatrix(12) <= '1';
            elsif ( fourTOsixteen = "1101" ) then
                sixteenMatrix(13) <= '1';
            elsif ( fourTOsixteen = "1110" ) then
                sixteenMatrix(14) <= '1';
            elsif ( threeTOeight = "1111" ) then
                sixteenMatrix(15) <= '1';
            end if;
            
            if ( threeTOeight = "000" ) then
                eightMatrix(0) <= '0';
            elsif ( threeTOeight = "001" ) then
                eightMatrix(1) <= '0';
            elsif ( threeTOeight = "010" ) then
                eightMatrix(2) <= '0';
            elsif ( threeTOeight = "011" ) then
                eightMatrix(3) <= '0';
            elsif ( threeTOeight = "100" ) then
                eightMatrix(4) <= '0';
            elsif ( threeTOeight = "101" ) then
                eightMatrix(5) <= '0';
            elsif ( threeTOeight = "110" ) then
                eightMatrix(6) <= '0';
            elsif ( threeTOeight = "111" ) then
                eightMatrix(7) <= '0';
            end if;
        end if;
    end process;

end Behavioral;