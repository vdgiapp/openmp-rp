
Alias:inventory("inv");
Cmd:inventory(playerid) {
    if(!IsPlayerInGame(playerid)) return 0;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, "#\tVat pham\tSo luong\tDo ben");
    SortPlayerInventory(playerid);
	for(new i; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            if(IsMagazineItem(InventoryData[playerid][i][ItemID])) AddDialogListitem(playerid, ""COL_GREY"%d\t%s\t%d\t%d", i, InvItemName[InventoryData[playerid][i][ItemID]], InventoryData[playerid][i][Amount], InventoryData[playerid][i][MagAmmo]);
            else AddDialogListitem(playerid, ""COL_GREY"%d\t%s\t%d\t%d", i, InvItemName[InventoryData[playerid][i][ItemID]], InventoryData[playerid][i][Amount], floatround(InventoryData[playerid][i][Durable]));
        }
        else AddDialogListitem(playerid, ""COL_GREY" \t%s\t \t ", InvItemName[InventoryData[playerid][i][ItemID]]);
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
        format(str, sizeof str, ""COL_AQUA"TUI DO > %s", InvItemName[i]);
        Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Su dung vat pham\nDua vat pham\nTieu huy vat pham\nVut bo vat pham", "Chon", "Quay lai");
    }
	return 1;
}

Dialog:InventoryInteract(playerid, response, listitem, inputtext[]) {
    if(!response) return callcmd::inventory(playerid);
}
