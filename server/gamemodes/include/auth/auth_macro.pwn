
enum authinfo {
	Account[25],
	Password[65],
	Password2[65],
	EnablePass2,
	Email,
	Attempt,
	Logged,
	Selected,
	Creating,
	Joined,

	// Temp
	CharSel[512]
}
new AuthData[MAX_PLAYERS][authinfo];

enum createCharInf {
	Name[MAX_PLAYER_NAME+1],
	Description[256],
	Gender,
	Nation,
	BDay,
	BMonth,
	BYear,
	Birthday[16],
	SkinID
}
new CreateCharData[MAX_PLAYERS][createCharInf];

enum tmpCharacterInfo {
	Available,
	Name[MAX_PLAYER_NAME+1],
	Level[16]
}
new tmpCharacterData[MAX_PLAYERS][3][tmpCharacterInfo];

new 	Text:AuthTD_MiscTD[10],
		Text:Auth_Button,
		Text:Auth_Button2,
		Text:Auth_Registered,
		Text:Auth_CharCreated,
		Text:Auth_PlayersOnline,
		Text:Auth_LoggedToday,
		PlayerText:Auth_PlayerName[MAX_PLAYERS];
