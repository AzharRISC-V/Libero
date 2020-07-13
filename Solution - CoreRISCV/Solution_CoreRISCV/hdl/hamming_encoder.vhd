---------------------------------------------------------------
--Description:
--		Encodes a byte of data using the Hamming Code algorithm.
--		This implementation uses 4 parity bits and 1 checksum 
--		bit. 
--
--Setting the Parity Bits: 
--		All bit positions of "temp_en_byte" whose positional 
--		value is a power of 2 (with the least significant 
--		position being position 1, not 0) is a parity bit.
--	
--		The value of the parity bit is determined by xor-ing all 
--		bit positions of "temp_en_byte" whose position number in
--		binary has a '1' in the nth bit (n being the bit 
--		position of the parity bit in "parity_bits", assuming 
--		the the least significant position of "parity_bits" 
--		begins with 0, and the least significant position of 
--		"temp_en_byte" begins with 1 and not 0). 
--
--Checksum:
--		'0' = even, '1' = odd
--	 	
--More information can be found here:
--		https://www.geeksforgeeks.org/hamming-code-in-computer-network/
---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;	  
use IEEE.std_logic_misc.all;

entity hamming_encoder is	
	port(
		in_byte : in STD_LOGIC_VECTOR(7 downto 0);
		en_byte : out STD_LOGIC_VECTOR(12 downto 0)
	);
end hamming_encoder;

architecture def_hamming_encoder of hamming_encoder is		
	signal parity_bits : STD_LOGIC_VECTOR(3 downto 0) := X"0";	
	signal temp_en_byte : STD_LOGIC_VECTOR(11 downto 0) := X"000";
	signal check_sum : STD_LOGIC := '0';
begin
	--Set the in_byte bits to the correct position for the hamming code
	--	C-d-d-d-d-P-d-d-d-P-d-P-P (C=checksum; P=parity; d=in_byte bit) 
	temp_en_byte(1 downto 0) <= parity_bits(1 downto 0);
	temp_en_byte(2) <= in_byte(0);					  
	temp_en_byte(3) <= parity_bits(2);
	temp_en_byte(6 downto 4) <= in_byte(3 downto 1);
	temp_en_byte(7) <= parity_bits(3);
	temp_en_byte(11 downto 8) <= in_byte(7 downto 4);
	
	--Set parity bits
	parity_bits(0) <= xor_reduce(std_logic_vector(temp_en_byte(2) & temp_en_byte(4) & 
								temp_en_byte(6) & temp_en_byte(8) & temp_en_byte(10)));
	parity_bits(1) <= xor_reduce(std_logic_vector(temp_en_byte(2) & temp_en_byte(6 downto 5) 
								& temp_en_byte(10 downto 9)));
	parity_bits(2) <= xor_reduce(std_logic_vector(temp_en_byte(6 downto 4) & temp_en_byte(11)));
	parity_bits(3) <= xor_reduce(std_logic_vector(temp_en_byte(11 downto 8)));
	
	--Set Checksum
	check_sum <= xor_reduce(temp_en_byte);
	
	--Set MSB as Checksum
	en_byte(11 downto 0) <= temp_en_byte;
	en_byte(12) <= check_sum;
end def_hamming_encoder;	