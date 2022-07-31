

	// Shortcuts 1
	Checkpoint = CP
	Collisions = Col
	Container  = Cnt
	Inventory  = Inv
	TextDraw   = TD
	Command    = Cmd
	Dynamic    = Dyn
	Action     = Act
	Object     = Obj
	Update     = Upd

	Float:I@ // temp float
	J@ // temp int
	Q@[Length] // temp string

	// Shortcuts 2
	U@ - setproperty
	V@ - getproperty
	W@ - CallRemoteFunction
	O@ - SetTimerEx

	// Cmd prefix
	Command_SetPrefix(YCMD:ban, '!');    	//	/ban  -> !ban
	Command_SetPrefixNamed("kick", '!'); 	//	/kick -> !kick
	Command_SetPrefix(YCMD:me, '#');     	//	/me  -> #me

	foreach (new c : Command) {
		Command_SetPrefix(c, '!');
	}

	// More : https://www.burgershot.gg/showthread.php?tid=1972