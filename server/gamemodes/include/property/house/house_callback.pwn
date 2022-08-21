
hook OnGameModeExit() {

    foreach(new hid : House) {

        House_SaveData(hid);

        HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        format(HouseData[hid][Owner], 25, "");
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  0;
        HouseData[hid][Price] =  0;
        HouseData[hid][IntID] =  0;
        HouseData[hid][ExteriorX] = 0;
        HouseData[hid][ExteriorY] = 0;
        HouseData[hid][ExteriorZ] = 0;
        HouseData[hid][ExteriorA] = 0;
        HouseData[hid][ExteriorInt] = 0;
        HouseData[hid][ExteriorWorld] = 0;
        HouseData[hid][InteriorX] = 0;
        HouseData[hid][InteriorY] = 0;
        HouseData[hid][InteriorZ] = 0;
        HouseData[hid][InteriorA] = 0;
        HouseData[hid][InteriorInt] = 0;
        HouseData[hid][InteriorWorld] = 0;
        HouseData[hid][LockerX] = 0;
        HouseData[hid][LockerY] = 0;
        HouseData[hid][LockerZ] = 0;
        HouseData[hid][Cash] = 0;
        format(HouseData[hid][Item0], 64, "");
        format(HouseData[hid][Item1], 64, "");
        format(HouseData[hid][Item2], 64, "");
        format(HouseData[hid][Item3], 64, "");
        format(HouseData[hid][Item4], 64, "");
        format(HouseData[hid][Item5], 64, "");
        format(HouseData[hid][Item6], 64, "");
        format(HouseData[hid][Item7], 64, "");
        format(HouseData[hid][Item8], 64, "");
        format(HouseData[hid][Item9], 64, "");

        format(HouseData[hid][Address], MAX_MAP_ZONE_NAME, "");

        DestroyDynamicCP(HouseData[hid][ExtCP]);
        DestroyDynamicCP(HouseData[hid][IntCP]);

        Iter_Remove(House, hid);
    }
    return 1;
}

hook OnPlayerEnterDynamicCP(playerid, STREAMER_TAG_CP:checkpointid) {
    if(!IsPlayerInGame(playerid)) return 0;
    static hid;
    if((hid = House_Nearest(playerid)) != -1) {
        static str[256];

        switch(HouseData[hid][Owned]) {
            case 0: format(str, sizeof str, "Nha so: %d~n~Dia chi: %s~n~Gia tien: $%s", hid, HouseData[hid][Address], fNumber(HouseData[hid][Price]));
            case 1: format(str, sizeof str, "Nha so: %d~n~Dia chi: %s~n~Chu so huu: %s", hid, HouseData[hid][Address], HouseData[hid][Owner]);
        }
        ShowTDN(playerid, str);
    }
    return 1;
}
