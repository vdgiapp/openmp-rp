
IsPlayerHaveItem(playerid, id) {
    for(new i; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID] != 0
            && InventoryData[playerid][i][ItemID] == id)
        return true;
    }
    return false;
}

IsPlayerHaveGPS(playerid) { return IsPlayerHaveItem(playerid, 20); }
IsPlayerHaveWatch(playerid) { return IsPlayerHaveItem(playerid, 21); }
