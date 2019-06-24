LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY AND_GATE IS
	PORT
	(
		A , B , C , D : IN STD_LOGIC ;
			    F : OUT STD_LOGIC
	) ;
END AND_GATE ;
ARCHITECTURE FUNC OF AND_GATE IS
BEGIN
	F <= A AND B AND C AND D ;
END FUNC ;

LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY NOT_GATE IS
	PORT
	(
		A : IN STD_LOGIC ;
		F : OUT STD_LOGIC
	) ;
END NOT_GATE ;

LIBRARY IEEE ;
USE IEEE . STD_LOGIC_1164 . ALL ;
ENTITY FOUR_TO_SIXTEEN_DECODER IS
	PORT
	(
		A : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0 ) ;
		F : OUT STD_LOGIC_VECTOR ( 15 DOWNTO 0 )
	) ;
END FOUR_TO_SIXTEEN_DECODER ;
ARCHITECTURE FUNC OF FOUR_TO_SIXTEEN_DECODER IS
	SIGNAL NOT_TO_AND_1 , NOT_TO_AND_2 , NOT_TO_AND_3 , NOT_TO_AND_4 : STD_LOGIC ;
BEGIN
	G1 : ENTITY WORK . NOT_GATE PORT MAP ( A ( 0 ) , NOT_TO_AND_1 ) ;
	G2 : ENTITY WORK . NOT_GATE PORT MAP ( A ( 1 ) , NOT_TO_AND_2 ) ;
	G3 : ENTITY WORK . NOT_GATE PORT MAP ( A ( 2 ) , NOT_TO_AND_3 ) ;
	G4 : ENTITY WORK . NOT_GATE PORT MAP ( A ( 3 ) , NOT_TO_AND_4 ) ;
	G5 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , NOT_TO_AND_2 , NOT_TO_AND_3 , NOT_TO_AND_4 , F ( 0 ) ) ;
	G6 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , NOT_TO_AND_2 , NOT_TO_AND_3 , A ( 0 ) , F ( 1 ) ) ;
	G7 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , NOT_TO_AND_2 , A ( 1 ) , NOT_TO_AND_4 , F ( 2 ) ) ;
	G8 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , NOT_TO_AND_2 , A ( 1 ) , A ( 0 ) , F ( 3 ) ) ;
	G9 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , A ( 2 ) , NOT_TO_AND_3 , NOT_TO_AND_4 , F ( 4 ) ) ;
	G10 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , A ( 2 ) , NOT_TO_AND_3 , A ( 0 ) , F ( 5 ) ) ;
	G11 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , A ( 2 ) , A ( 1 ) , NOT_TO_AND_4 , F ( 6 ) ) ;
	G12 : ENTITY WORK . AND_GATE PORT MAP ( NOT_TO_AND_1 , A ( 2 ) , A ( 1 ) , A ( 0 ) , F ( 7 ) ) ;
	G13 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , NOT_TO_AND_2 , NOT_TO_AND_3 , NOT_TO_AND_4 , F ( 8 ) ) ;
	G14 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , NOT_TO_AND_2 , NOT_TO_AND_3 , A ( 0 ) , F ( 9 ) ) ;
	G15 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , NOT_TO_AND_2 , A ( 1 ) , NOT_TO_AND_4 , F ( 10 ) ) ;
	G16 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , NOT_TO_AND_2 , A ( 1 ) , A ( 0 ) , F ( 11 ) ) ;
	G17 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , A ( 2 ) , NOT_TO_AND_3 , NOT_TO_AND_4 , F ( 12 ) ) ;
	G18 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , A ( 2 ) , NOT_TO_AND_3 , A ( 0 ) , F ( 13 ) ) ;
	G19 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , A ( 2 ) , A ( 1 ) , NOT_TO_AND_4 , F ( 14 ) ) ;
	G20 : ENTITY WORK . AND_GATE PORT MAP ( A ( 3 ) , A ( 2 ) , A ( 1 ) , A ( 0 ) , F ( 15 ) ) ;
END FUNC ;