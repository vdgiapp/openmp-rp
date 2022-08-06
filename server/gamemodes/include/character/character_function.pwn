
// Load char data
Fade:LoadCharacterData(playerid) {
	static str[128];

	AuthData[playerid][Joined] = 1;

	format(str, sizeof str, "SELECT * FROM `characters` WHERE `Account` = '%s' AND `Slot` = '%d'", AuthData[playerid][Account], AuthData[playerid][Selected]);
	mysql_tquery(Database, str, "OnGetCharacterData", "i", playerid);
    return 1;
}

function OnGetCharacterData(playerid) {
	static str[128], level, exp;
	static Float:posx, Float:posy, Float:posz, Float:angle, world, int;

	format(CharacterData[playerid][Name], MAX_PLAYER_NAME+1, "%s", cache_value_string(0, "Name"));
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
	CharacterData[playerid][WalkStyle] = cache_value_int(0, "WalkStyle");
	CharacterData[playerid][Playtime] = cache_value_int(0, "Playtime");
	CharacterData[playerid][Payday] = cache_value_int(0, "Payday");
	CharacterData[playerid][RespawnLocation] = cache_value_int(0, "RespawnLocation");
	format(CharacterData[playerid][Faction], 64, "%s", cache_value_string(0, "Faction"));
	CharacterData[playerid][Warns] = cache_value_int(0, "Warns");
	CharacterData[playerid][Wanted] = cache_value_int(0, "Wanted");
	CharacterData[playerid][Arrested] = cache_value_int(0, "Arrested");
	CharacterData[playerid][Hunger] = cache_value_int(0, "Hunger");
	CharacterData[playerid][Thirst] = cache_value_int(0, "Thirst");
	CharacterData[playerid][Stamina] = cache_value_int(0, "Stamina");
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
	format(CharacterData[playerid][Settings], 128, "%s", cache_value_string(0, "Settings"));

	sscanf(CharacterData[playerid][Position], "ffffii", posx, posy, posz, angle, world, int);
	sscanf(CharacterData[playerid][Level], "ii", level, exp);

	SpawnPlayer(playerid);
	CancelSelectTextDraw(playerid);
	SetPlayerCompensatedPos(playerid, posx, posy, posz, 10, world, int);
	SetPlayerFacingAngle(playerid, angle);
	SetPlayerScore(playerid, level);
	SetPlayerTeam(playerid, NO_TEAM);
	SetPlayerColor(playerid, COLOR_WHITE);
	SetCameraBehindPlayer(playerid);

	SetPlayerName(playerid, CharacterData[playerid][Name]);
	SetPlayerSkin(playerid, CharacterData[playerid][SkinID]);
	SetPlayerHealth(playerid, CharacterData[playerid][Health]);
	SetPlayerArmour(playerid, CharacterData[playerid][Armour]);
	SetPlayerFightingStyle(playerid, CharacterData[playerid][FightStyle]);
	SetPlayerWantedLevel(playerid, CharacterData[playerid][Wanted]);
	SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
	SetWalkingStyle(playerid, e_WALKING_STYLES:CharacterData[playerid][WalkStyle]);

	format(str, sizeof str, "~w~Chao mung~n~~y~%s", PlayerName(playerid));
	GameTextForPlayer(playerid, str, 6000, 1);
	FreezePlayer(playerid, 6000);
	ShowPlayerHUD(playerid);

    FadePlayerScreen(playerid, FadeBack, 0x00000000, 1000, 25);
    return 1;
}

SaveCharacterData(playerid) {

	if(!IsPlayerInGame(playerid)) return 0;

	static account[25], slot;
	format(account, sizeof account, "%s", AuthData[playerid][Account]);
	slot = AuthData[playerid][Selected];

	


	return 1;
}