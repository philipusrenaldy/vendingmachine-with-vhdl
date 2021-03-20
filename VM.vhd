LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--Vending Machine in Arcade
--insert money to proceed
ENTITY VM IS
	PORT (CHITEM	: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			MoneyIn 	: IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
			MoneyOut	: inout std_logic_vector(2 downto 0);
			wren		: IN 	STD_LOGIC ;
			alamat	: IN 	STD_LOGIC_VECTOR(4 DOWNTO 0);
			q			: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
			CLK 		: IN 	STD_LOGIC);
END VM;

ARCHITECTURE OUTPUT OF VM IS
	TYPE STATE_TYPE IS (IDLE,PICKITEM,Soda,Chips,coffee,Croissant,KeyChain,Pen,Doll,Out1,Out2,Out3,Out4,Out5,Out6,Out7,Out11,Out12,Out13,Out14,Out15, Out16,Out21,Out22,Out23,Out24,Out25,Out31,Out32,Out33,Out34,Out41,Out42,Out43,Out51,Out52,Out61);
	SIGNAL STATE : STATE_TYPE := IDLE;
	SIGNAL NEXT_STATE : STATE_TYPE;
	SIGNAL OUTITEM		: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	RAM 	: entity work.RAM32x4
		port map(
			address	=> alamat,
			clock		=> clk,
			data		=> OUTITEM,
			wren		=> wren,
			q			=> q
					);
	
	PROCESS(CLK)
	BEGIN
		IF (RISING_EDGE(CLK)) THEN
			STATE <= NEXT_STATE;
		END IF;
	END PROCESS;
	
	PROCESS (STATE, MoneyIn, CHITEM,OUTITEM,MoneyOut)
		BEGIN
			CASE STATE IS
				WHEN IDLE 		=>	IF 	(MoneyIn = "000") THEN NEXT_STATE <= IDLE;
										ELSIF (MoneyIn = "001") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "010") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "011") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "100") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "101") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "110") THEN NEXT_STATE <= PICKITEM;
										ELSIF (MoneyIn = "111") THEN NEXT_STATE <= PICKITEM;
										ELSE 	NEXT_STATE <= IDLE;
										END IF;
				WHEN PICKITEM 	=> IF 	(CHITEM  = "000") THEN NEXT_STATE <= PICKITEM;
										ELSIF (CHITEM	= "001") THEN NEXT_STATE <= Soda;
										ELSIF (CHITEM	= "010") THEN NEXT_STATE <= Chips;
										ELSIF (CHITEM	= "011") THEN NEXT_STATE <= coffee;
										ELSIF (CHITEM	= "100") THEN NEXT_STATE <= Croissant;
										ELSIF (CHITEM	= "101") THEN NEXT_STATE <= KeyChain;
										ELSIF (CHITEM	= "110") THEN NEXT_STATE <= Pen;
										ELSIF (CHITEM	= "111") THEN NEXT_STATE <= Doll;
										ELSE 	NEXT_STATE <= IDLE;
										END IF;									
				WHEN Soda 		=> IF		(MoneyIn = "001") THEN NEXT_STATE <= Out1;
										ELSIF	(MoneyIn = "010") THEN NEXT_STATE <= Out11;
										ELSIF	(MoneyIn = "011") THEN NEXT_STATE <= Out12;
										ELSIF (MoneyIn = "100") THEN Next_STATE <= Out13;
										ELSIF (MoneyIn = "101") THEN Next_STATE <= Out14;
										ELSIF (MoneyIn = "110") THEN Next_STATE <= Out15;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out16;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF ;
				WHEN Chips 		=> IF		(MoneyIn = "010") THEN NEXT_STATE <= Out2;
										ELSIF	(MoneyIn = "011") THEN NEXT_STATE <= Out21;
										ELSIF (MoneyIn = "100") THEN Next_STATE <= Out22;
										ELSIF (MoneyIn = "101") THEN Next_STATE <= Out23;
										ELSIF (MoneyIn = "110") THEN Next_STATE <= Out24;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out25;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF ;
				WHEN coffee 	=>	IF		(MoneyIn = "011") THEN NEXT_STATE <= Out3;
										ELSIF (MoneyIn = "100") THEN Next_STATE <= Out31;
										ELSIF (MoneyIn = "101") THEN Next_STATE <= Out32;
										ELSIF (MoneyIn = "110") THEN Next_STATE <= Out33;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out34;
										ELSE 	NEXT_STATE <= PICKITEM;			
										END IF;
				WHEN Croissant =>	IF		(MoneyIn = "100") THEN NEXT_STATE <= Out4;
										ELSIF (MoneyIn = "101") THEN Next_STATE <= Out41;
										ELSIF (MoneyIn = "110") THEN Next_STATE <= Out42;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out43;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF;
				WHEN Keychain 	=>	IF		(MoneyIn = "101") THEN NEXT_STATE <= Out5;
										ELSIF (MoneyIn = "110") THEN Next_STATE <= Out51;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out52;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF;
				WHEN Pen 		=>	IF		(MoneyIn = "110") THEN NEXT_STATE <= Out6;
										ELSIF (MoneyIn = "111") THEN Next_STATE <= Out61;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF;
				WHEN Doll 		=>	IF		(MoneyIn = "111") THEN NEXT_STATE <= Out7;
										ELSE 	NEXT_STATE <= PICKITEM;
										END IF;
				WHEN OUT1		=>	OUTITEM <= "0001"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT11		=>	OUTITEM <= "0001"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT12		=>	OUTITEM <= "0001"; MONEYOUT <= "010"; NEXT_STATE <= IDLE;
				WHEN OUT13		=>	OUTITEM <= "0001"; MONEYOUT <= "011"; NEXT_STATE <= IDLE;
				WHEN OUT14		=>	OUTITEM <= "0001"; MONEYOUT <= "100"; NEXT_STATE <= IDLE;
				WHEN OUT15		=>	OUTITEM <= "0001"; MONEYOUT <= "101"; NEXT_STATE <= IDLE;
				WHEN OUT16		=>	OUTITEM <= "0001"; MONEYOUT <= "110"; NEXT_STATE <= IDLE;
				WHEN OUT2		=>	OUTITEM <= "0010"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT21		=>	OUTITEM <= "0010"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT22		=>	OUTITEM <= "0010"; MONEYOUT <= "010"; NEXT_STATE <= IDLE;
				WHEN OUT23		=>	OUTITEM <= "0010"; MONEYOUT <= "011"; NEXT_STATE <= IDLE;
				WHEN OUT24		=>	OUTITEM <= "0010"; MONEYOUT <= "100"; NEXT_STATE <= IDLE;
				WHEN OUT25		=>	OUTITEM <= "0010"; MONEYOUT <= "101"; NEXT_STATE <= IDLE;
				WHEN OUT3		=>	OUTITEM <= "0011"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT31		=>	OUTITEM <= "0011"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT32		=>	OUTITEM <= "0011"; MONEYOUT <= "010"; NEXT_STATE <= IDLE;
				WHEN OUT33		=>	OUTITEM <= "0011"; MONEYOUT <= "011"; NEXT_STATE <= IDLE;
				WHEN OUT34		=>	OUTITEM <= "0011"; MONEYOUT <= "100"; NEXT_STATE <= IDLE;
				WHEN OUT4		=>	OUTITEM <= "0100"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT41		=>	OUTITEM <= "0100"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT42		=>	OUTITEM <= "0100"; MONEYOUT <= "010"; NEXT_STATE <= IDLE;
				WHEN OUT43		=>	OUTITEM <= "0100"; MONEYOUT <= "011"; NEXT_STATE <= IDLE;
				WHEN OUT5		=>	OUTITEM <= "0101"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT51		=>	OUTITEM <= "0101"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT52		=>	OUTITEM <= "0101"; MONEYOUT <= "010"; NEXT_STATE <= IDLE;
				WHEN OUT6		=>	OUTITEM <= "0110"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OUT61		=>	OUTITEM <= "0110"; MONEYOUT <= "001"; NEXT_STATE <= IDLE;
				WHEN OUT7		=>	OUTITEM <= "0111"; MONEYOUT <= "000"; NEXT_STATE <= IDLE;
				WHEN OTHERS 	=> NULL;
		END CASE;
	END PROCESS;
END OUTPUT;