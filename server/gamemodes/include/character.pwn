
#include <YSI_Coding/y_hooks>

enum characterInfo {
	Name[MAX_PLAYER_NAME+1],
	Nick[MAX_PLAYER_NAME+1],
	DateCreated[32],
	LastTimePlayed[32],
	Birthday[16],
	Gender,
	Nation,
	Description[512],
	SkinID,
	Level[16],
	Respects,
	JobID,
	FightStyle,
	Playtime,
	Payday,
	RespawnLocation,
	Faction,
	Warns,
	Wanted,
	Arrested,
	Float:Hunger,
	Float:Thirst,
	Stamina,
	MaxStamina,
	Injured,
	Float:Health,
	Float:Armour,
	Position[128],
	ImprisonData[128],
	MuteData[16],
	Cash,
	Coins,
	Bank[32],
	IDCard,
	LicenseData[32],
	PhoneData[32],
	ContactData[1024],
	WalkieTalkieData[64]
}
new CharacterData[MAX_PLAYERS][characterInfo];

// Load char data
Fade:LoadCharacterData(playerid) {
	static str[128];

	AuthData[playerid][Joined] = 1;

	format(str, sizeof str, "SELECT * FROM `characters` WHERE `Account` = '%s' AND `Slot` = '%d'", AuthData[playerid][Account], AuthData[playerid][Selected]);
	await mysql_aquery(Database, str);

	static level, exp;
	static Float:posx, Float:posy, Float:posz, Float:angle, world, int;

	format(CharacterData[playerid][Name], MAX_PLAYER_NAME+1, "%s", cache_value_string(0, "Name"));
	format(CharacterData[playerid][Nick], MAX_PLAYER_NAME+1, "%s", cache_value_string(0, "Nick"));
	format(CharacterData[playerid][DateCreated], 32, "%s", cache_value_string(0, "DateCreated"));
	format(CharacterData[playerid][LastTimePlayed], 32, "%s", cache_value_string(0, "LastTimePlayed"));
	format(CharacterData[playerid][Birthday], 16, "%s", cache_value_string(0, "Birthday"));
	CharacterData[playerid][Gender] = cache_value_int(0, "Gender");
	CharacterData[playerid][Nation] = cache_value_int(0, "Nation");
	format(CharacterData[playerid][Description], 512, "%s", cache_value_string(0, "Description"));
	CharacterData[playerid][SkinID] = cache_value_int(0, "SkinID");
	format(CharacterData[playerid][Level], 16, "%s", cache_value_string(0, "Level"));
	CharacterData[playerid][Respects] = cache_value_int(0, "Respects");
	CharacterData[playerid][JobID] = cache_value_int(0, "JobID");
	CharacterData[playerid][FightStyle] = cache_value_int(0, "FightStyle");
	CharacterData[playerid][Playtime] = cache_value_int(0, "Playtime");
	CharacterData[playerid][Payday] = cache_value_int(0, "Payday");
	CharacterData[playerid][RespawnLocation] = cache_value_int(0, "RespawnLocation");
	format(CharacterData[playerid][Faction], 64, "%s", cache_value_string(0, "Faction"));
	CharacterData[playerid][Warns] = cache_value_int(0, "Warns");
	CharacterData[playerid][Wanted] = cache_value_int(0, "Wanted");
	CharacterData[playerid][Arrested] = cache_value_int(0, "Arrested");
	CharacterData[playerid][Hunger] = cache_value_float(0, "Hunger");
	CharacterData[playerid][Thirst] = cache_value_float(0, "Thirst");
	CharacterData[playerid][Stamina] = cache_value_int(0, "Stamina");
	CharacterData[playerid][MaxStamina] = cache_value_int(0, "MaxStamina");
	CharacterData[playerid][Injured] = cache_value_int(0, "Injured");
	CharacterData[playerid][Health] = cache_value_float(0, "Health");
	CharacterData[playerid][Armour] = cache_value_float(0, "Armour");
	format(CharacterData[playerid][Position], 128, "%s", cache_value_string(0, "Position"));
	format(CharacterData[playerid][ImprisonData], 128, "%s", cache_value_string(0, "ImprisonData"));
	format(CharacterData[playerid][MuteData], 16, "%s", cache_value_string(0, "MuteData"));
	CharacterData[playerid][Cash] = cache_value_int(0, "Cash");
	CharacterData[playerid][Coins] = cache_value_int(0, "Coins");
	format(CharacterData[playerid][Bank], 32, "%s", cache_value_string(0, "Bank"));
	CharacterData[playerid][IDCard] = cache_value_int(0, "IDCard");
	format(CharacterData[playerid][LicenseData], 32, "%s", cache_value_string(0, "LicenseData"));
	format(CharacterData[playerid][PhoneData], 32, "%s", cache_value_string(0, "PhoneData"));
	format(CharacterData[playerid][ContactData], 1024, "%s", cache_value_string(0, "ContactData"));
	format(CharacterData[playerid][WalkieTalkieData], 64, "%s", cache_value_string(0, "WalkieTalkieData"));

	sscanf(CharacterData[playerid][Position], "ffffii", posx, posy, posz, angle, world, int);
	sscanf(CharacterData[playerid][Level], "ii", level, exp);

	SpawnPlayer(playerid);
	CancelSelectTextDraw(playerid);
	SetPlayerVirtualWorld(playerid, world);
	SetPlayerInterior(playerid, int);
	SetPlayerPos(playerid, posx, posy, posz);
	SetPlayerFacingAngle(playerid, angle);
	SetPlayerScore(playerid, level);
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
    SetCameraBehindPlayer(playerid);

	SetPlayerName(playerid, CharacterData[playerid][Name]);
	SetPlayerSkin(playerid, CharacterData[playerid][SkinID]);
	SetPlayerHealth(playerid, CharacterData[playerid][Health]);
	SetPlayerArmour(playerid, CharacterData[playerid][Armour]);
	SetPlayerStamina(playerid, CharacterData[playerid][Stamina]);
	SetPlayerMaxStamina(playerid, CharacterData[playerid][MaxStamina]);
	SetPlayerFightingStyle(playerid, CharacterData[playerid][FightStyle]);
	SetPlayerWantedLevel(playerid, CharacterData[playerid][Wanted]);
	SetPlayerMoney(playerid, CharacterData[playerid][Cash]);

	FreezePlayer(playerid, 7000);
    FadePlayerScreen(playerid, FadeBack, 0x00000000, 200, 50);
    return 1;
}
