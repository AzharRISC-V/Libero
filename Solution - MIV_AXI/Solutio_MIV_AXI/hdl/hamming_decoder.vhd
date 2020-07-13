---------------------------------------------------------------
--Description:
--		Decodes bits encrypted by the Hamming Code algorithm.
--		It creates a decoded byte and a corrected decoded byte
--		in parallel, then selects which one to use depending on 
--		the value of the parity bits. 
--
--		If the parity bits are greater than the amount of bits 
--		in the encoded byte or the checksum is not correct, it 
--		pulls "bit_error" high. 
--
--		The hardware can correct one bit error and detect up to
--		two bit errors.
--
--Parity Checks:
--		The parity check is accomplished by calculating each 
--		parity bit. The resulting value of the parity bits as a 
--		whole gives you the position that needs to be corrected.
--
--		|Parity Value n	|		Action		|
--		|---------------|-------------------|
--		|		n = 0	| No bit error		|
--		|	0 < n < 12	| change bit n-1	|
--		|		n > 11	| assert error 		|
--
--More information can be found here:
--		https://www.geeksforgeeks.org/hamming-code-in-computer-network/
---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;	  
use IEEE.std_logic_misc.all; 
use IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.ALL; 

entity hamming_decoder is	
	port(
		en_byte : in STD_LOGIC_VECTOR(12 downto 0);
		out_byte : out STD_LOGIC_VECTOR(7 downto 0);
		bit_error : out STD_LOGIC
	);
end hamming_decoder;

architecture def_hamming_decoder of hamming_decoder is		
	signal parity_bits : STD_LOGIC_VECTOR(3 downto 0) := X"0";	 
	signal decoded_byte, cor_byte : STD_LOGIC_VECTOR(7 downto 0) := X"00";	 
	signal cor_en_byte : STD_LOGIC_VECTOR(12 downto 0) := '0' & X"000"; -- corrected-encoded-byte
	signal check_sum : STD_LOGIC := '0';
	signal cor_pos : integer range 12 downto 0 := 0;  
	signal overflow_flg : STD_LOGIC;
begin		  
	--The encoded byte is stored in the following format:
	--	C-d-d-d-d-P-d-d-d-P-d-P-P (C=Checksum, P=Parity, d=Data)
	
	--Calculate parity bits
	parity_bits(0) <= xor_reduce(std_logic_vector(en_byte(0) & en_byte(2) 
												& en_byte(4) & en_byte(6) 
												& en_byte(8) & en_byte(10)));
												
	parity_bits(1) <= xor_reduce(std_logic_vector(en_byte(2 downto 1) 
												& en_byte(6 downto 5) 
												& en_byte(10 downto 9)));
												
	parity_bits(2) <= xor_reduce(std_logic_vector(en_byte(6 downto 3) & en_byte(11)));
	parity_bits(3) <= xor_reduce(std_logic_vector(en_byte(11 downto 7)));
	
	--Convert the parity_bits to an integer to calculate the position of the bit to be corrected
	cor_pos <= to_integer(unsigned(parity_bits - 1)) when ((parity_bits > X"0") and (parity_bits < X"C")) else 0;
	
	--Check to see if the parity_bits overflow the size of the encoded message
	overflow_flg <= '0' when ((parity_bits >= X"0") and (parity_bits < X"C")) else '1';
	
	--Unmodified/uncorrected byte
	decoded_byte <= std_logic_vector(en_byte(11 downto 8) & 
						en_byte(6 downto 4) & en_byte(2));
	--Modified/corrected encoded byte
	cor_en_byte <= en_byte(12 downto cor_pos + 1) & not en_byte(cor_pos) & en_byte(cor_pos - 1 downto 0);
	
	--Modified/Corrected byte
	cor_byte <= std_logic_vector(cor_en_byte(11 downto 8) & 
					cor_en_byte(6 downto 4) & cor_en_byte(2));
	
	--Determine if the possible corrupted byte can be corrected
	check_sum <= xor_reduce(en_byte);
	
	--Select the correct byte
	out_byte <= decoded_byte when parity_bits = X"0" else
					cor_byte;
	--If there was an error that couldn't be correct, or the 
	--	parity_bits are out of range, throw an error.
	bit_error <= (or_reduce(parity_bits) and (not check_sum  or overflow_flg));
end def_hamming_decoder;	