
enum ENUM_AUTH_INFO {
	SID,
	Account[25],
	Password[1024],
	Password2[1024],
	EnablePass2,
	Email[128],
	Attempt,
	Logged,
	Selected,
	Creating,
	Joined,

	// Temp
	CharSel[512]
}
new AuthData[MAX_PLAYERS][ENUM_AUTH_INFO];

enum ENUM_CCHAR_INFO {
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
new CreateCharData[MAX_PLAYERS][ENUM_CCHAR_INFO];

enum ENUM_TMPCHAR_INFO {
	Available,
	Name[MAX_PLAYER_NAME+1],
	Level[16]
}
new tmpCharacterData[MAX_PLAYERS][3][ENUM_TMPCHAR_INFO];

new 	Text:AuthTD_MiscTD[10],
		Text:Auth_Button,
		Text:Auth_Button2,
		Text:Auth_Registered,
		Text:Auth_CharCreated,
		Text:Auth_PlayersOnline,
		Text:Auth_LoggedToday,
		PlayerText:Auth_PlayerName[MAX_PLAYERS];
