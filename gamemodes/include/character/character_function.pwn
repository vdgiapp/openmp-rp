
// Load char data
Fade:LoadCharacterData(playerid) {
	static str[128];

	AuthData[playerid][Joined] = 1;

	inline const GotIt() {
		static str[128], level, exp;
		static Float:posx, Float:posy, Float:posz, Float:angle, world, int;
		static weaponskill[11];

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
		format(CharacterData[playerid][WeaponSkills], 64, "%s", cache_value_string(0, "WeaponSkills"));
		CharacterData[playerid][Playtime] = cache_value_int(0, "Playtime");
		CharacterData[playerid][Payday] = cache_value_int(0, "Payday");
		CharacterData[playerid][RespawnLocation] = cache_value_int(0, "RespawnLocation");
		format(CharacterData[playerid][Faction], 64, "%s", cache_value_string(0, "Faction"));
		CharacterData[playerid][Warns] = cache_value_int(0, "Warns");
		CharacterData[playerid][Wanted] = cache_value_int(0, "Wanted");
		CharacterData[playerid][Arrested] = cache_value_int(0, "Arrested");
		CharacterData[playerid][Hunger] = cache_value_float(0, "Hunger");
		CharacterData[playerid][Thirst] = cache_value_float(0, "Thirst");
		CharacterData[playerid][Stamina] = cache_value_float(0, "Stamina");
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
		sscanf(CharacterData[playerid][WeaponSkills], "iiiiiiiiiii", weaponskill[0], weaponskill[1], weaponskill[2], weaponskill[3], weaponskill[4], weaponskill[5], weaponskill[6], weaponskill[7], weaponskill[8], weaponskill[9], weaponskill[10]);

		SpawnPlayer(playerid);
		CancelSelectTextDraw(playerid);
		SetPlayerCompensatedPos(playerid, posx, posy, posz, angle, 7000, world, int);
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
		for(new i = 0; i < 11; i++) {
			SetPlayerSkillLevel(playerid, i, weaponskill[i]);
		}

		format(str, sizeof str, "Dang nhap thanh cong voi nhan vat %d: %s", AuthData[playerid][Selected], GetRoleplayName(CharacterData[playerid][Name]));
		ShowTDNx(playerid, 5000, str);
		for(new i; i < 100; i++) ClientMsg(playerid, -1, " ");
		ShowPlayerHUD(playerid);

		Inventory_LoadData(playerid);

	    FadePlayerScreen(playerid, FadeBack, 0x00000000, 1000, 25);
	}
	MySQL_TQueryInline(Database, using inline GotIt, "SELECT * FROM `characters` WHERE `SID` = '%d' AND `Slot` = '%d'", AuthData[playerid][SID], AuthData[playerid][Selected]);
    return 1;
}

SaveCharacterData(playerid) {

	if(!IsPlayerInGame(playerid)) return 0;

	static sid, slot, weaponskill[128];
	sid = AuthData[playerid][SID];
	slot = AuthData[playerid][Selected];

	static str[1024], Float:health, Float:armour, Float:angle,
		Float:x, Float:y, Float:z, world, int;

	GetPlayerHealth(playerid, health);
	GetPlayerArmour(playerid, armour);
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);
	world = GetPlayerVirtualWorld(playerid);
	int = GetPlayerInterior(playerid);

	if(IsStaffGodMode(playerid)) GetStaffPrevHealth(playerid, health), GetStaffPrevArmour(playerid, armour);
	if(IsStaffSpectating(playerid)) GetStaffPrevHealth(playerid, health), GetStaffPrevArmour(playerid, armour), GetStaffPrevPos(playerid, x, y, z, world, int);

	for(new i = 0; i < 11; i++) format(weaponskill, sizeof weaponskill, "%s%d ", weaponskill, GetPlayerSkillLevel(playerid, i));

	format(str, sizeof str, "WHERE `SID` = '%d' AND `Slot` = '%d'", sid, slot);
	mysql_update(Database, "UPDATE `characters` SET `Name` = '%s' %s", CharacterData[playerid][Name], str);
	mysql_update(Database, "UPDATE `characters` SET `Level` = '%s' %s", CharacterData[playerid][Level], str);
	mysql_update(Database, "UPDATE `characters` SET `Position` = '%f %f %f %f %d %d' %s", x, y, z, angle, world, int, str);
	mysql_update(Database, "UPDATE `characters` SET `SkinID` = '%d' %s", GetPlayerSkin(playerid), str);
	mysql_update(Database, "UPDATE `characters` SET `Hunger` = '%f', `Thirst` = '%f', `Stamina` = '%f', `Injured` = '%d', `Health` = '%f', `Armour` = '%f' %s",
	CharacterData[playerid][Hunger], CharacterData[playerid][Thirst], CharacterData[playerid][Stamina], CharacterData[playerid][Injured], health, armour, str);
	mysql_update(Database, "UPDATE `characters` SET `Cash` = '%d', `Coins` = '%d' %s", CharacterData[playerid][Cash], CharacterData[playerid][Coins], str);
	mysql_update(Database, "UPDATE `characters` SET `Birthday` = '%s' %s", CharacterData[playerid][Birthday], str);
	mysql_update(Database, "UPDATE `characters` SET `Gender` = '%d' %s", CharacterData[playerid][Gender], str);
	mysql_update(Database, "UPDATE `characters` SET `Nation` = '%d' %s", CharacterData[playerid][Nation], str);
	mysql_update(Database, "UPDATE `characters` SET `Respects` = '%d' %s", CharacterData[playerid][Respects], str);
	mysql_update(Database, "UPDATE `characters` SET `JobID` = '%d' %s", CharacterData[playerid][JobID], str);
	mysql_update(Database, "UPDATE `characters` SET `FightStyle` = '%d' %s", GetPlayerFightingStyle(playerid), str);
	mysql_update(Database, "UPDATE `characters` SET `WalkStyle` = '%d' %s", GetWalkingStyle(playerid), str);
	mysql_update(Database, "UPDATE `characters` SET `WeaponSkills` = '%s' %s", weaponskill, str);

	Inventory_SaveData(playerid);

	printf("Account with SID %d: %s's data saved", AuthData[playerid][SID], GetRoleplayName(CharacterData[playerid][Name]));

	ResetPlayerVars(playerid);
	Kick(playerid);
	return 1;
}

GetGenderName(genderid) {
	new gender[16];
	switch(genderid) {
		case 1: format(gender, sizeof gender, "Nam");
		case 2: format(gender, sizeof gender, "Nu");
	}
	return gender;
}

GetNationName(nationid) {
	new nation[32];
	switch(nationid)  {
		case 1: format(nation, sizeof nation, "Los Santos");
		case 2: format(nation, sizeof nation, "San Fierro");
		case 3: format(nation, sizeof nation, "Las Venturas");
		case 4: format(nation, sizeof nation, "Countryside");
	}
	return nation;
}

GetFightStyleName(fsid) {
	new ret[32];
	switch(fsid) {
		case 4: format(ret, sizeof ret, "Khong");
		case 5: format(ret, sizeof ret, "Boxing");
		case 6: format(ret, sizeof ret, "Kung-fu");
		case 7: format(ret, sizeof ret, "Kneehead");
		case 15: format(ret, sizeof ret, "Grabkick");
		case 16: format(ret, sizeof ret, "Elbow");
	}
	return ret;
}

GetWalkStyleName(id) {
	new ret[32];
	switch(id) {
		case 0: format(ret, sizeof ret, "Mac dinh");
		case 1: format(ret, sizeof ret, "CJ");
		case 2: format(ret, sizeof ret, "PED");
		case 3: format(ret, sizeof ret, "Gangsta");
		case 4: format(ret, sizeof ret, "Gangsta 2");
		case 5: format(ret, sizeof ret, "Old");
		case 6: format(ret, sizeof ret, "Fat Old");
		case 7: format(ret, sizeof ret, "Fat");
		case 8: format(ret, sizeof ret, "Woman Old");
		case 9: format(ret, sizeof ret, "Woman Fat Old");
		case 10: format(ret, sizeof ret, "Shuffle");
		case 11: format(ret, sizeof ret, "Lady");
		case 12: format(ret, sizeof ret, "Lady 2");
		case 13: format(ret, sizeof ret, "Whore");
		case 14: format(ret, sizeof ret, "Whore 2");
		case 15: format(ret, sizeof ret, "Drunk");
		case 16: format(ret, sizeof ret, "Blind");
	}
	return ret;
}

GetMaxExpFromLevel(level) { return ((level^2) * 100); }

GetJobName(jobid) {
	new str[128] = "";
	switch(jobid) {
		case 0: format(str, sizeof str, "That nghiep");
		case 1: format(str, sizeof str, "Pizza Delivery");
		case 2: format(str, sizeof str, "Trucker");
		case 3: format(str, sizeof str, "Miner");
		case 4: format(str, sizeof str, "Trash Recycler");
		case 5: format(str, sizeof str, "Electrician");
	}
	return str;
}