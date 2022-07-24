
#include <YSI_Coding/y_hooks>

// +-+-+-+-+- Redefine Functions +-+-+-+-+-
ShowDialog(playerid, id, style, caption[], info[], button1[], button2[]) return ShowPlayerDialog(playerid, id, style, caption, info, button1, button2);
ClientMsg(playerid, color, const message[], va_args<>) return SendClientMessagef(playerid, color, message, va_start<3>);
ServerMsg(color, const message[], va_args<>) return SendClientMessageToAllf(color, message, va_start<2>);
ErrorMsg(playerid, const message[], va_args<>) return SendClientMessagef(playerid, COLOR_LIGHTRED, message, va_start<2>);

GlobalMsg(color, const message[], va_args<>) {
	forloop(playerid,0,GetPlayerPoolSize()+1) {
		if(IsPlayerInGame(playerid)) {
			SendClientMessagef(playerid, message, va_start<2>);
		}
	}
}

// +-+-+-+-+- Main Callbacks +-+-+-+-+-
public OnGameModeInit() {
	Database = mysql_connect(host_mysql, user_mysql, pass_mysql, dbase_mysql);
    if(Database == MYSQL_INVALID_HANDLE || mysql_errno(Database) != 0) {
        printf("[SERVER] Ket noi den co so du lieu khong thanh cong!");
        return mysql_close(Database);
    }
    printf("\n[SERVER] Ket noi den co so du lieu thanh cong!");
    pp_use_funcidx(true);
	ShowNameTags(0);
	SetNameTagDrawDistance(0);
	ShowPlayerMarkers(0);
	EnableStuntBonusForAll(0);
	DisableInteriorEnterExits();
	AllowInteriorWeapons(1);
	SetGameModeText(GM_VERSION);
	SetModeRestartTime(20.0); // default: 12.0
	return 1;
}

public OnGameModeExit() {
	foreach(Player, playerid) OnPlayerDisconnect(playerid, 1);
	return 1;
}

public OnPlayerConnect(playerid) {
	static name[MAX_PLAYER_NAME+1];
	strset(name, "Unknown_%d", playerid);
	SetPlayerName(playerid, name);
	ResetPlayerVars(playerid);
	SetPlayerColor(playerid, -1);
	return 1;
}

public OnPlayerDisconnect(playerid, reason) { // 0- Timeout, Crash / 1- Quit / 2- Kick, Ban
	if(LoginData[playerid][Logged]) {
		static string[256];
		strset(string, "UPDATE `accounts` SET `Online`='0' WHERE `Account`='%s'", LoginData[playerid][Account]);
		await mysql_aquery(Database, string);
		switch(reason) {
			case 0: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (mat ket noi).", LoginData[playerid][Account]);
			case 1: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (thoat game).", LoginData[playerid][Account]);
			case 2: flog("logs/auth.log", "[AUTH] Tai khoan \"%s\" da dang xuat khoi tro choi (kick / ban).", LoginData[playerid][Account]);
		}
		//Save if(IsPlayerInGame(playerid)) SaveCharacterInfoData(playerid, log_Account[playerid], char_Selected[playerid]);
	}
	ResetPlayerVars(playerid);
	return 1;
}

public OnPlayerText(playerid, text[])
{
    if(IsPlayerInGame(playerid)) {
    	static string[128];
    	strset(string, "%s noi: %s", GetRoleplayName(CharacterData[playerid][Name]), text);
        //if(GetPlayerMuteType(playerid) == 1) return ErrorMsg(playerid, "WARNING: Ban dang bi mute.");
        SetPlayerChatBubble(playerid, text, COLOR_WHITE, 20, ONE_SECOND*7);
        return LocalMsg(playerid, string);
    }
    return 0;
}

public OnPlayerRequestSpawn(playerid) {
	return 0;
}

public OnPlayerRequestClass(playerid) {
	return 0;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ) {
	// Anti Silent Aimbot
    if(hittype == BULLET_HIT_TYPE_PLAYER)
    {
        static
            Float:fOriginX, Float:fOriginY, Float:fOriginZ,
            Float:fHitPosX, Float:fHitPosY, Float:fHitPosZ;

        GetPlayerLastShotVectors(playerid, fOriginX, fOriginY, fOriginZ, fHitPosX, fHitPosY, fHitPosZ);
        static Float:BulletDistanceForHit;
        BulletDistanceForHit = GetPlayerDistanceFromPoint(hitid, fHitPosX, fHitPosY, fHitPosZ);
        if(BulletDistanceForHit==0 && (weaponid>21 && weaponid!=35 && weaponid!=42 && weaponid<47)) return 0; //It prevents the bullet from reaching the target player.
    }
    return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {
	if(!IsPlayerInGame(playerid) || CharacterData[playerid][SpawnProtection]) return 0;
	else {
		// continue
		return 1;
	}
}

public OnPlayerGiveDamageDynamicActor(playerid, actorid, Float:amount, weaponid, bodypart) {
	return 0;
}

// +-+-+-+-+- Addition Functions +-+-+-+-+-
GivePlayerHealth(playerid, Float:hp) {
	static Float:ohp; GetPlayerHealth(playerid, ohp);
	return SetPlayerHealth(playerid, floatadd(ohp, hp));
}

GivePlayerArmour(playerid, Float:ar) {
	static Float:oar; GetPlayerArmour(playerid, oar);
	return SetPlayerArmour(playerid, floatadd(oar, ar));
}

SetPlayerMoney(playerid, money)
{
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money);
}

fNumber(number) {
	static result[32];
	forloop(i,0,sizeof(number)) {
        HumanizeThousand(number[i], result);
        return result;
    }
}

cTime(time) {
	static jhour, jmin, jdiv, jsec, string[128];
	if(time > 3599) {
		jhour = floatround(time / (60*60));
		jdiv = floatround(time % (60*60));
        jmin = floatround(jdiv / 60, floatround_floor);
        jsec = floatround(jdiv % 60, floatround_ceil);
        format(string, sizeof(string), "%02dh, %02dm, %02ds", jhour, jmin, jsec);
    }
    else if(time > 59 && time < 3600) {
        jmin = floatround(time/60);
        jsec = floatround(time - jmin*60);
        format(string, sizeof(string), "%02dm, %02ds", jmin, jsec);
    }
    else {
        jsec = floatround(time);
        format(string, sizeof(string), "%02ds", jsec);
    }
    return string;
}

GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance) {
    static Float:a;
    GetPlayerPos(playerid, x, y, a);
    GetPlayerFacingAngle(playerid, a);
    if(GetPlayerVehicleID(playerid)) {
        GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
    }
    x += (distance * floatsin(-a, degrees));
    y += (distance * floatcos(-a, degrees));
}

GetXYFromAngle(&Float:posX, &Float:posY, Float:angle, Float:distance) {
	posX += (distance * floatsin(-angle, degrees));
	posY += (distance * floatcos(-angle, degrees));
}

GetXYZFromAngle(&Float:posX, &Float:posY, &Float:posZ, Float:angle, Float:height, Float:distance) {
	posX += (distance * floatsin(angle, degrees) * floatcos(height, degrees));
	posY += (distance * floatcos(angle, degrees) * floatcos(height, degrees));
	posZ += (distance * floatsin(height, degrees));
}

GetWeaponIDFromModel(modelid)
{
    new idweapon;
    switch(modelid)
    {
        case 331: idweapon = 1; // Brass Knuckles
        case 333: idweapon = 2; // Golf Club
        case 334: idweapon = 3; // Nightstick
        case 335: idweapon = 4; // Knife
        case 336: idweapon = 5; // Baseball Bat
        case 337: idweapon = 6; // Shovel
        case 338: idweapon = 7; // Pool Cue
        case 339: idweapon = 8; // Katana
        case 341: idweapon = 9; // Chainsaw
        case 321: idweapon = 10; // Double-ended Dildo
        case 325: idweapon = 14; // Flowers
       	case 326: idweapon = 15; // Cane
        case 342: idweapon = 16; // Grenade
        case 343: idweapon = 17; // Tear Gas
        case 344: idweapon = 18; // Molotov Cocktail
        case 346: idweapon = 22; // 9mm
        case 347: idweapon = 23; // Silenced 9mm
        case 348: idweapon = 24; // Desert Eagle
        case 349: idweapon = 25; // Shotgun
        case 350: idweapon = 26; // Sawnoff
        case 351: idweapon = 27; // Combat Shotgun
        case 352: idweapon = 28; // Micro SMG/Uzi
        case 353: idweapon = 29; // MP5
        case 355: idweapon = 30; // AK-47
        case 356: idweapon = 31; // M4
        case 372: idweapon = 32; // Tec-9
        case 357: idweapon = 33; // Country Rifle
        case 358: idweapon = 34; // Sniper Rifle
        case 359: idweapon = 35; // RPG
        case 360: idweapon = 36; // HS Rocket
        case 361: idweapon = 37; // Flamethrower
        case 362: idweapon = 38; // Minigun
        case 363: idweapon = 39;// Satchel Charge + Detonator
        case 365: idweapon = 41; // Spraycan
        case 366: idweapon = 42; // Fire Extinguisher
        case 367: idweapon = 43; // Camera
    }
    return idweapon;
}

IsPlayerInGame(playerid) {
	if(IsPlayerConnected(playerid) && LoginData[playerid][Logged] && 
		LoginData[playerid][Joined]) return true;
	return false;
}

GetRoleplayName(const name[]) {
    static ret[MAX_PLAYER_NAME+1];
    format(ret, sizeof ret, "%s", name);
    strreplace(ret, "_", " ");
    return ret;
}

IsRoleplayName(const name[], max_unders = 2) {
    static unders = 0;
    if(name[0] < 'A' || name[0] > 'Z') return 0;
    forloop(i, 1, strlen(name)) {
        if(name[i] != '_' && (name[i] < 'A' || name[i] > 'Z') && (name[i] < 'a' || name[i] > 'z')) return 0;
        if((name[i] >= 'A' && name[i] <= 'Z') && (name[i - 1] != '_')) return 0;
        if(name[i] == '_') {
            unders++;
            if(unders > max_unders || i == strlen(name)) return 0;
            if(name[i + 1] < 'A' || name[i + 1] > 'Z') return 0;
        }
    }
    if(unders == 0) return 0;
    return 1;
}

IsValidAccount(const str[]) {
	if(str[0] == '_' || str[0] == '.') return 0;
    forloop(i, 1, strlen(str)) {
    	if(!((str[i] >= 'a' && str[i] <= 'z') || (str[i] >= 'A' && str[i] <= 'Z') || (str[i] >= '0' && str[i] <= '9') || str[i] == '_' || str[i] == '.')) return 0;
    }
    return 1;
}

IsValidEmail(const email[]) {
	if(strfind(email, "@gmail.com") != -1 || 
		strfind(email, "@outlook.com") != -1 || 
		strfind(email, "@hotmail.com") != -1 || 
		strfind(email, "@protonmail.com") != -1 || 
		strfind(email, "@protonmail.ch") != -1 || 
		strfind(email, "@yahoo.com") != -1 || 
		strfind(email, "@zohomail.com") != -1 || 
		strfind(email, "@zoho.com") != -1 || 
		strfind(email, "@yandex.com") != -1 || 
		strfind(email, "@icloud.com") != -1 || 
		strfind(email, "@gmx.com") != -1 ||
		strfind(email, "@gmx.us") != -1 || 
		strfind(email, "@aol.com") != -1 || 
		strfind(email, "@aim.com") != -1) return 1;
	return 0;
}

ResetPlayerVars(playerid) {	
	CharacterData[playerid][CmdCD] = 0;
}

now() {
	static result[32], year, month, day, hour, minute, second;
	getdate(year, month, day);
	gettime(hour, minute, second);
	format(result, sizeof result, "%02d:%02d:%02d - %02d/%02d/%d", hour, minute, second, day, month, year);
	return result;
}

curdate() {
	static result[20], year, month, day;
	getdate(year, month, day);
	format(result, sizeof result, "%02d/%02d/%d", day, month, year);
	return result;
}

curtime() {
	static result[20], hour, minute, second;
	gettime(hour, minute, second);
	format(result, sizeof result, "%02d:%02d:%02d", hour, minute, second);
	return result;
}

LocalMsg(playerid, const string[]) 
return ProxDetector(20.0, playerid, string, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);

LowMsg(playerid, const string[]) 
return ProxDetector(8.0, playerid, string, COLOR_GREY, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4);

ShoutMsg(playerid, const string[]) 
return ProxDetector(50.0, playerid, string, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);

ProxDetector(Float:radi, playerid, const string[], col1, col2, col3, col4, col5) {
    if(IsPlayerInGame(playerid)) {
        static Float:posx, Float:posy, Float:posz;
        static Float:oldposx, Float:oldposy, Float:oldposz;
        static Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
        forloop(i,0,GetPlayerPoolSize()+1) {
            if(IsPlayerInGame(i)) {
                if(!CharacterData[i][BigEar]) {
                    GetPlayerPos(i, posx, posy, posz);
                    tempposx = (oldposx -posx);
                    tempposy = (oldposy -posy);
                    tempposz = (oldposz -posz);
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) {
                        if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) ClientMsg(i, col5, string);
                    }
                }
                else ClientMsg(i, col1, string);
            }
        }
    }
}

fade:FadeBack(playerid) return 1;

timer UnFreezePlayer[ONE_SECOND](playerid) {
	CharacterData[playerid][SpawnProtection] = 0;
	TogglePlayerControllable(playerid, true);
}

FreezePlayer(playerid, time) {
	CharacterData[playerid][SpawnProtection] = 1;
	TogglePlayerControllable(playerid, false);
	defer UnFreezePlayer[time](playerid);
}

timer tKickPlayer[ONE_SECOND](playerid) {
	Kick(playerid);
}

KickPlayer(playerid, time) {
	defer tKickPlayer[time](playerid);
}

// MySQL
cache_value_string(row_idx, const column_name[]) {
	static string[512];
	cache_get_value_name(row_idx, column_name, string);
	return string;
}

cache_value_int(row_idx, const column_name[]) {
	static int;
	cache_get_value_name_int(row_idx, column_name, int);
	return int;
}

bool:cache_value_bool(row_idx, const column_name[]) {
	static bool:bool;
	cache_get_value_name_bool(row_idx, column_name[], bool);
	return bool;
}

Float:cache_value_float(row_idx, const column_name[]) {
	static Float:float;
	cache_get_value_name_float(row_idx, column_name[], float);
	return float;
}

// File log
fcreate(const file[]) {
	if(fexist(file)) return 0;
	else {
		static File:f;
		f = fopen(file, io_write);
		if(f) {
			fclose(f);
			return 1;
		}
	}
	return 0;
}

flog(const file[], const string[], va_args<>)
{
	fcreate(file);
	static File:temp;
	temp = fopen(file, io_append);
	if(temp) {
		static str[1024];
		strset(str, string, va_start<2>);
		strset(str, "[%s] | %s\r\n", now(), str);
	    fwrite(temp, str);
	    fclose(temp);
	    return 1;
	}
	else {
		printf("Tep tin \"%s\" khong ton tai hoac chua duoc mo (fopen).", file);
		return 0;
	}
}