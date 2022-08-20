
hook OnPlayerEnterDynamicCP(playerid, STREAMER_TAG_CP:checkpointid) {
    if(!IsPlayerInGame(playerid)) return 0;
    static hid;
    if((hid = House_GetNearID(playerid)) != -1) {
        static str[256];

        switch(HouseData[hid][Owned]) {
            case 0: format(str, sizeof str, "ID: %d~n~Gia tien: %s~n~Dia chi: %s", hid, fNumber(HouseData[hid][Price]), HouseData[hid][Address]);
            case 1: format(str, sizeof str, "ID: %d~n~Chu so huu: %s~n~Dia chi: %s", hid, HouseData[hid][Owner], HouseData[hid][Address]);
        }
        ShowTDN(playerid, str);
    }
    return 1;
}
