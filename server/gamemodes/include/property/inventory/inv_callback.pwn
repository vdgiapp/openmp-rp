
Alias:inventory("inv");
Cmd:inventory(playerid) {
    if(!IsPlayerInGame(playerid)) return 0;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, "     Vat pham\tDo ben\tCon lai");
    SortPlayerInventory(playerid);
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            static itemname[64], itemid, amount, durable, gunammo, magammo;
            itemid = InventoryData[playerid][i][ItemID];
            amount = InventoryData[playerid][i][Amount];
            durable = floatround(InventoryData[playerid][i][Durable]);
            gunammo = InventoryData[playerid][i][GunAmmo];
            magammo = InventoryData[playerid][i][MagAmmo];
            format(itemname, sizeof itemname, "%s", InvItemName[itemid]);
            if(amount > 1) {
                if(IsMagazineItem(itemid)) AddDialogListitem(playerid, "%d/ %s (%d)\t%d%%\t%d", i, itemname, amount, durable, magammo);
                else AddDialogListitem(playerid, "%d/ %s (%d)\t%d%%\t", i, itemname, amount, durable);
            }
            else {
                if(IsGunItem(itemid)) AddDialogListitem(playerid, "%d/ %s\t%d%%\t%d", i, itemname, durable, gunammo);
                if(IsMagazineItem(itemid)) AddDialogListitem(playerid, "%d/ %s\t \t%d", i, itemname, magammo);
                if(!IsGunItem(itemid) && !IsMagazineItem(itemid)) AddDialogListitem(playerid, "%d/ %s\t%d%%\t", i, itemname, durable);
            }
        }
	}
	ShowPlayerDialogPages(playerid, #InventoryMain, DS_HEADERS, ""COL_AQUA"TUI DO NHAN VAT", "Chon", "Dong", 25, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:InventoryMain(playerid, response, listitem) {
    if(response) {
        static i, str[128];
        InvSelectedItem[playerid] = listitem;
        i = InvSelectedItem[playerid];
        if(!InventoryData[playerid][i][ItemID]) return callcmd::inventory(playerid);
        format(str, sizeof str, ""COL_AQUA"TUI DO > %s", InvItemName[InventoryData[playerid][i][ItemID]]);
        Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Su dung vat pham\nDua vat pham\nTieu huy vat pham\nVut bo vat pham", "Chon", "Quay lai");
    }
	return 1;
}

Dialog:InventoryInteract(playerid, response, listitem, inputtext[]) {
    if(!response) return callcmd::inventory(playerid);
}
