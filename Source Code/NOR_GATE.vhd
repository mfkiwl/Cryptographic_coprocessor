LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY NOR_GATE IS
	PORT ( A , B : IN STD_LOGIC ;
		   F : OUT STD_LOGIC ) ;
END NOR_GATE ;
ARCHITECTURE FUNC OF NOR_GATE IS
BEGIN
	F <= A NOR B ;
END FUNC ;