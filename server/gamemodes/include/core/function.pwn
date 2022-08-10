
#include <YSI_Coding\y_hooks>

// +-+-+-+-+- Addition Functions +-+-+-+-+-

FreezePlayer(playerid, time) {
    SetPVarInt(playerid, #Freezing, 1);
    TogglePlayerControllable(playerid, false);
    defer UnFreezePlayer[time](playerid);
}

KickPlayer(playerid, time) {
    defer tKickPlayer[time](playerid);
}

GetPlayerZone(playerid) {
    new MapZone:zone = GetPlayerMapZone(playerid);
    new name[MAX_MAP_ZONE_NAME]; GetMapZoneName(zone, name);
    return name;
}

GivePlayerHealth(playerid, Float:hp) {
	static Float:ohp;
	GetPlayerHealth(playerid, ohp);
	return SetPlayerHealth(playerid, floatadd(ohp, hp));
}

GivePlayerArmour(playerid, Float:ar) {
	static Float:oar;
	GetPlayerArmour(playerid, oar);
	return SetPlayerArmour(playerid, floatadd(oar, ar));
}

Float:PlayerHealth(playerid) {
	static Float:hp;
	GetPlayerHealth(playerid, hp);
	return hp;
}

Float:PlayerArmour(playerid) {
	static Float:ar;
	GetPlayerArmour(playerid, ar);
	return ar;
}

WeaponName(wid) {
    static str[32];
    GetWeaponName(wid, str);
    return str;
}

SetPlayerMoney(playerid, money) {
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money);
}

PlayerName(playerid) {
	static name[MAX_PLAYER_NAME+1];
	GetPlayerName(playerid, name, sizeof name);
	return name;
}

SwapInt(&var1, &var2) {
    static tmp; tmp = var1;
    var1 = var2;
    var2 = tmp;
}

fNumber(number) {
	static result[64];
	HumanizeThousand(number, result, sizeof result, ",");
	return result;
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

GetWeaponIDFromModel(modelid) {
	static wid;
    switch(modelid)
    {
        case 331: wid = 1; // Brass Knuckles
        case 333: wid = 2; // Golf Club
        case 334: wid = 3; // Nightstick
        case 335: wid = 4; // Knife
        case 336: wid = 5; // Baseball Bat
        case 337: wid = 6; // Shovel
        case 338: wid = 7; // Pool Cue
        case 339: wid = 8; // Katana
        case 341: wid = 9; // Chainsaw
        case 321: wid = 10; // Double-ended Dildo
        case 325: wid = 14; // Flowers
       	case 326: wid = 15; // Cane
        case 342: wid = 16; // Grenade
        case 343: wid = 17; // Tear Gas
        case 344: wid = 18; // Molotov Cocktail
        case 346: wid = 22; // 9mm
        case 347: wid = 23; // Silenced 9mm
        case 348: wid = 24; // Desert Eagle
        case 349: wid = 25; // Shotgun
        case 350: wid = 26; // Sawnoff
        case 351: wid = 27; // Combat Shotgun
        case 352: wid = 28; // Micro SMG/Uzi
        case 353: wid = 29; // MP5
        case 355: wid = 30; // AK-47
        case 356: wid = 31; // M4
        case 372: wid = 32; // Tec-9
        case 357: wid = 33; // Country Rifle
        case 358: wid = 34; // Sniper Rifle
        case 359: wid = 35; // RPG
        case 360: wid = 36; // HS Rocket
        case 361: wid = 37; // Flamethrower
        case 362: wid = 38; // Minigun
        case 363: wid = 39;// Satchel Charge + Detonator
        case 365: wid = 41; // Spraycan
        case 366: wid = 42; // Fire Extinguisher
        case 367: wid = 43; // Camera
    }
    return wid;
}

GetPlayersOnline() {
	static count;
	count = 0;
	foreach(new i : Player) {
		count++;
	}
	return count;
}

FirstUpper(str[256]) {
    str[0] = toupper(str[0]);
    return str;
}

ResetPlayerVars(playerid) { }

GlobalMsg(color, const message[], va_args<>) {
	foreach(new playerid : Player) {
		if(IsPlayerInGame(playerid)) {
			ClientMsg(playerid, color, message, va_start<2>);
		}
	}
	return 1;
}

ErrorMsg(playerid, const string[], va_args<>) {
	static str[256];
    format(str, sizeof str, string, va_start<2>);
	format(str, sizeof str, ""COL_LIGHTRED"ERROR > "COL_GREY"%s", str);
	ClientMsg(playerid, -1, str);
}

SuccessMsg(playerid, const string[], va_args<>) {
	static str[256];
    format(str, sizeof str, string, va_start<2>);
	format(str, sizeof str, ""COL_GREEN"SUCCESS > "COL_GREY"%s", str);
	ClientMsg(playerid, -1, str);
}

NotificationMsg(playerid, const string[], va_args<>) {
	static str[256];
    format(str, sizeof str, string, va_start<2>);
	format(str, sizeof str, ""COLOR_LIGHTYELLOW2"THONG BAO > "COL_GREY"%s", str);
	ClientMsg(playerid, -1, str);
}

UsageMsg(playerid, const string[], va_args<>) {
    static str[256];
    format(str, sizeof str, string, va_start<2>);
    format(str, sizeof str, "USAGE: %s", str);
    ClientMsg(playerid, COLOR_GREY, str);
}

Fade:FadeBack(playerid) return 1;

// MySQL
cache_value_string(row_idx, const column_name[]) {
	static str[512];
	cache_get_value_name(row_idx, column_name, str);
	return str;
}

cache_value_int(row_idx, const column_name[]) {
	static int;
	cache_get_value_name_int(row_idx, column_name, int);
	return int;
}

Float:cache_value_float(row_idx, const column_name[]) {
	static Float:ret;
	cache_get_value_name_float(row_idx, column_name, ret);
	return ret;
}
