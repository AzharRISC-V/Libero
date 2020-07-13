-------------------------------------------------------------------------------
--
-- Title       : uart_fifo
-- Design      : CWS
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : d:\My_Designs\CWS\CWS\src\uart_fifo.vhd
-- Generated   : Wed Jan 20 12:55:36 2016
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {uart_fifo} architecture {uart_fifo}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity uart_fifo is
	 generic(
		DEPTH : INTEGER := 16
	    );
	 port(
		 clk : in STD_LOGIC;
		 rst_L : in STD_LOGIC;
		 wr_en : in STD_LOGIC;
		 din : in STD_LOGIC_VECTOR(7 downto 0);
		 rd_en : in STD_LOGIC; 
		 bit_error : out STD_LOGIC;
		 empty : out STD_LOGIC;
		 full : out STD_LOGIC;
		 dout : out STD_LOGIC_VECTOR(7 downto 0);
		 f_cnt : out STD_LOGIC_VECTOR(15 downto 0);
		 e_cnt : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end uart_fifo;

--}} End of automatically maintained section
library IEEE;
use IEEE.std_logic_arith.all;

architecture uart_fifo of uart_fifo is
	type fifo_array_type is array ((DEPTH-1) downto 0) of std_logic_vector(7 downto 0);

	signal fifo_array : fifo_array_type;
	signal WR_PTR : INTEGER range 0 to (DEPTH-1) := 0;
	signal RD_PTR : INTEGER range 0 to (DEPTH-1) := 0;
	signal cnt : INTEGER range 0 to DEPTH := 0;
	signal remaining : INTEGER range 0 to DEPTH:= DEPTH;
	signal encoded_byte : STD_LOGIC_VECTOR(12 downto 0);
	signal read_encoded_byte : STD_LOGIC_VECTOR(12 downto 0);						   
	signal out_byte : STD_LOGIC_VECTOR(7 downto 0);
		
	--component hamming_decoder is
		--port(
			--en_byte : in STD_LOGIC_VECTOR(12 downto 0);
			--out_byte : out STD_LOGIC_VECTOR(7 downto 0);
			--bit_error : out	STD_LOGIC
		--);
	--end component;
	
	--component hamming_encoder is
		--port(
			--in_byte : in STD_LOGIC_VECTOR(7 downto 0);
			--en_byte : out STD_LOGIC_VECTOR(12 downto 0)
		--);	 
	--end component;	
begin	 
	--Encode incoming byte
--	U0 : hamming_encoder port map (in_byte => din, en_byte => encoded_byte);
	
	process(clk, rst_L)
	begin
		if rising_edge(clk) then
			if rst_L = '0' then
				for INDEX in (DEPTH-1) downto 0 loop
					fifo_array(INDEX) <= (others => '0');
				end loop;
				WR_PTR <= 0;
				RD_PTR <= 0;
				cnt <= 0;
				remaining <= DEPTH;
				empty <= '1';
				full <= '0';
			else
				if wr_en = '1' and cnt < DEPTH then
					if WR_PTR < (DEPTH-1) then
						WR_PTR <= WR_PTR + 1;
					elsif WR_PTR = (DEPTH-1) then
						WR_PTR <= 0;
					end if;
				end if;
				
				if rd_en = '1' and cnt > 0 then
					if RD_PTR < (DEPTH-1) then
						RD_PTR <= RD_PTR + 1;
					elsif RD_PTR = (DEPTH-1) then
						RD_PTR <= 0;
					end if;	 
				end if;
					
				if rd_en = '1' and cnt > 0 and wr_en = '1' and cnt < DEPTH then	--read and a write so no change to cnt
					--cnt <= cnt;
					fifo_array(WR_PTR) <= din;
				elsif rd_en = '1' and cnt > 0 then
					cnt <= cnt - 1;
					remaining <= remaining + 1;
					if cnt = 1 then
						empty <= '1';
					end if;
					full <= '0';
				elsif wr_en = '1' and cnt < DEPTH then
					cnt <= cnt + 1;
					remaining <= remaining - 1;
					fifo_array(WR_PTR) <= din;	   
					if cnt = (DEPTH-1) then
						full <= '1';
					end if;
					empty <= '0';
				end if;
				dout <= fifo_array(RD_PTR); --FOR IMPLEMENTATION
			end if;	
		end if;
	end process;  
	
	--Decode the read byte
--	U1 : hamming_decoder port map (en_byte => read_encoded_byte, out_byte => dout, bit_error => bit_error);

f_cnt <= conv_std_logic_vector(cnt, 16);
e_cnt <= conv_std_logic_vector(remaining, 16);
--e_cnt <= conv_std_logic_vector(DEPTH - cnt, 8);
end uart_fifo;
