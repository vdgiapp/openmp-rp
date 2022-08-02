# SA-MP w/ Open.MP - Roleplay
Server codes (including maps) & files of RP server, up to programming standards, 
for upcoming open.mp modification of GTA San Andreas, written mostly in PAWN and MySQL.

## Shortcuts
```
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
```

## Shortcuts
```
	U@ - setproperty
	V@ - getproperty
	W@ - CallRemoteFunction
	O@ - SetTimerEx
```

## Functions
```
	Command_SetPrefix(YCMD:ban, '!');    	//	/ban  -> !ban
	Command_SetPrefixNamed("kick", '!'); 	//	/kick -> !kick
	Command_SetPrefix(YCMD:me, '#');     	//	/me  -> #me

	foreach (new c : Command) {
		Command_SetPrefix(c, '!');
	}
 ```

## More
`More : https://www.burgershot.gg/showthread.php?tid=1972`
