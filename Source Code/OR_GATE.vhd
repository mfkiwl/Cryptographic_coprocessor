LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY OR_GATE IS
	PORT ( A , B : IN STD_LOGIC ;
		   F : OUT STD_LOGIC ) ;
END OR_GATE ;
ARCHITECTURE FUNC OF OR_GATE IS
BEGIN
	F <= A OR B ;
END FUNC ;