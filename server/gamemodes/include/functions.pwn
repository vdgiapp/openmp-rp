
#include <YSI_Coding/y_hooks>

// +-+-+-+-+- Addition Functions +-+-+-+-+-
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

SetPlayerMoney(playerid, money) {
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money);
}

PlayerName(playerid) {
	static name[MAX_PLAYER_NAME+1];
	GetPlayerName(playerid, name, sizeof name);
	return name;
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

GetWeaponIDFromModel(modelid)
{
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

ResetPlayerVars(playerid) { }

GlobalMsg(color, const message[], va_args<>) {
	foreach(new playerid : Player) {
		if(IsPlayerInGame(playerid)) {
			ClientMsg(playerid, color, message, va_start<2>);
		}
	}
	return 1;
}

ErrorMsg(playerid, const string[]) {
	static str[256];
	format(str, sizeof str, ""COL_LIGHTRED"ERROR > "COL_GREY"%s", string);
	ClientMsg(playerid, -1, str);
}

SuccessMsg(playerid, const string[]) {
	static str[256];
	format(str, sizeof str, ""COL_GREEN"SUCCESS > "COL_WHITE"%s", string);
	ClientMsg(playerid, -1, str);
}

LocalMsg(playerid, const string[]) return ProxDetector(string, 20.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);
LowMsg(playerid, const string[]) return ProxDetector(string, 8.0, playerid, COLOR_GREY, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4);
ShoutMsg(playerid, const string[]) return ProxDetector(string, 50.0, playerid, COLOR_DIST1, COLOR_DIST2, COLOR_DIST3, COLOR_DIST4, COLOR_DIST5);

ProxDetector(const string[], Float:radi, playerid, col1, col2, col3, col4, col5) {
    if(IsPlayerInGame(playerid)) {
        static Float:posx, Float:posy, Float:posz;
        static Float:oldposx, Float:oldposy, Float:oldposz;
        static Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
        foreach(new i : Player) {
            if(IsPlayerInGame(i)) {
                if(!GetPVarInt(playerid, #BigEar)) {
                    GetPlayerPos(i, posx, posy, posz);
                    tempposx = (oldposx -posx);
                    tempposy = (oldposy -posy);
                    tempposz = (oldposz -posz);
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col5, string);
                    }
                }
                else ClientMsg(i, col1, string);
            }
        }
    }
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
	cache_get_value_name_float(row_idx, column_name[], ret);
	return ret;
}