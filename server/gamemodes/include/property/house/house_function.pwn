
House_OnGameModeInit() {
    for(new i = 0; i < MAX_HOUSES; i++) {
        static str[128]; format(str, sizeof str, "SELECT * FROM `houses` WHERE `ID` = '%d'", i);
		mysql_tquery(Database, str, "OnGetHouseData", "i", i);
	}
	return 1;
}

function OnGetHouseData(hid) {
    if(cache_num_rows()) {
        static str[1024];
        HouseData[hid][ID] = cache_value_int(0, "ID");
        HouseData[hid][Created] = cache_value_int(0, "Created");
        HouseData[hid][Owned] = cache_value_int(0, "Owned");
        format(HouseData[hid][Owner], 25, "%s", cache_value_string(0, "Owner"));
        HouseData[hid][Locked] = cache_value_int(0, "Locked");
        HouseData[hid][Alarm] = cache_value_int(0, "Alarm");
        HouseData[hid][Level] = cache_value_int(0, "Level");
        HouseData[hid][Price] = cache_value_int(0, "Price");
        HouseData[hid][IntID] = cache_value_int(0, "IntID");
        HouseData[hid][ExteriorX] = cache_value_float(0, "ExteriorX");
        HouseData[hid][ExteriorY] = cache_value_float(0, "ExteriorY");
        HouseData[hid][ExteriorZ] = cache_value_float(0, "ExteriorZ");
        HouseData[hid][ExteriorA] = cache_value_float(0, "ExteriorA");
        HouseData[hid][ExteriorInt] = cache_value_int(0, "ExteriorInt");
        HouseData[hid][ExteriorWorld] = cache_value_int(0, "ExteriorWorld");
        HouseData[hid][InteriorX] = cache_value_float(0, "InteriorX");
        HouseData[hid][InteriorY] = cache_value_float(0, "InteriorY");
        HouseData[hid][InteriorZ] = cache_value_float(0, "InteriorZ");
        HouseData[hid][InteriorA] = cache_value_float(0, "InteriorA");
        HouseData[hid][InteriorInt] = cache_value_int(0, "InteriorInt");
        HouseData[hid][InteriorWorld] = cache_value_int(0, "InteriorWorld");
        HouseData[hid][LockerX] = cache_value_float(0, "LockerX");
        HouseData[hid][LockerY] = cache_value_float(0, "LockerY");
        HouseData[hid][LockerZ] = cache_value_float(0, "LockerZ");
        HouseData[hid][Cash] = cache_value_int(0, "Cash");
        format(HouseData[hid][Item0], 64, "%s", cache_value_string(0, "Item0"));
        format(HouseData[hid][Item1], 64, "%s", cache_value_string(0, "Item1"));
        format(HouseData[hid][Item2], 64, "%s", cache_value_string(0, "Item2"));
        format(HouseData[hid][Item3], 64, "%s", cache_value_string(0, "Item3"));
        format(HouseData[hid][Item4], 64, "%s", cache_value_string(0, "Item4"));
        format(HouseData[hid][Item5], 64, "%s", cache_value_string(0, "Item5"));
        format(HouseData[hid][Item6], 64, "%s", cache_value_string(0, "Item6"));
        format(HouseData[hid][Item7], 64, "%s", cache_value_string(0, "Item7"));
        format(HouseData[hid][Item8], 64, "%s", cache_value_string(0, "Item8"));
        format(HouseData[hid][Item9], 64, "%s", cache_value_string(0, "Item9"));

        GetMapZoneName(GetMapZoneAtPoint(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ]), HouseData[hid][Address]);

        HouseData[hid][ExtCP] = CreateDynamicCP(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ], HOUSE_CP_SIZE, HouseData[hid][ExteriorWorld], HouseData[hid][ExteriorInt], -1, HOUSE_CP_DISTANCE);
        HouseData[hid][IntCP] = CreateDynamicCP(HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ], HOUSE_CP_SIZE, HouseData[hid][InteriorWorld], HouseData[hid][InteriorInt], -1);

        if(!HouseData[hid][Created]) {
            DestroyDynamicCP(HouseData[hid][ExtCP]);
            DestroyDynamicCP(HouseData[hid][IntCP]);
        }

    }
    return 1;
}

House_IsPlayerOutside(playerid, hid) { return IsPlayerInDynamicCP(playerid, HouseData[hid][ExtCP]); }

House_IsPlayerInside(playerid, hid, Float:range = 50.0) { return (HouseData[hid][Created] && IsPlayerInRangeOfPoint(playerid, range, HouseData[hid][InteriorX], HouseData[hid][InteriorY], HouseData[hid][InteriorZ]) && GetPlayerInterior(playerid) == HouseData[hid][InteriorInt] && GetPlayerVirtualWorld(playerid) == HouseData[hid][InteriorWorld]); }

House_GetNearID(playerid) {
    if(CharacterData[playerid][HouseEntered] != -1 && House_IsPlayerInside(playerid, CharacterData[playerid][HouseEntered])) return CharacterData[playerid][HouseEntered];
    for(new i = 0; i < MAX_HOUSES; i++)	{
	    if(!HouseData[i][Created]) continue;
	    if(House_IsPlayerInside(playerid, i)) return i;
		else if(House_IsPlayerOutside(playerid, i))	return i;
	}
	return -1;
}
