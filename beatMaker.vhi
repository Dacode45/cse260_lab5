
-- VHDL Instantiation Created from source file beatMaker.vhd -- 17:31:21 04/18/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT beatMaker
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		level : IN std_logic_vector(4 downto 0);          
		pulse_beat : OUT std_logic
		);
	END COMPONENT;

	Inst_beatMaker: beatMaker PORT MAP(
		clk => ,
		reset => ,
		level => ,
		pulse_beat => 
	);


