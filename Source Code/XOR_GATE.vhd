LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY XOR_GATE IS
	PORT ( A , B : IN STD_LOGIC ;
		   F : OUT STD_LOGIC ) ;
END XOR_GATE ;
ARCHITECTURE FUNC OF XOR_GATE IS
BEGIN
	F <= A XOR B ;
END FUNC ;