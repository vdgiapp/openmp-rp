
Alias:inventory("inv");
Cmd:inventory(playerid) {
    if(!IsPlayerInGame(playerid)) return 0;
    InvSelectedItem[playerid] = -1;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, " Vat pham\tDo ben\tCon lai");
    SortPlayerInventory(playerid);
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            static weapondata[13][2];
            static itemname[64], itemid, amount, Float:durable, isequip, magtype, magammo;
            itemid = InventoryData[playerid][i][ItemID];
            amount = InventoryData[playerid][i][Amount];
            durable = InventoryData[playerid][i][Durable];
            isequip = InventoryData[playerid][i][IsEquipped];
            magtype = InventoryData[playerid][i][MagType];
            magammo = InventoryData[playerid][i][MagAmmo];
            format(itemname, sizeof itemname, "%s", InvItemName[itemid]);
            for(new u = 0; u < 13; u++) { GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]); }
            if(amount > 1) {
                if(IsMagazineItem(itemid)) AddDialogListitem(playerid, " %s (x%d)\t%.2f\t%d", itemname, amount, durable, magammo);
                else AddDialogListitem(playerid, " %s (x%d)\t%.2f\t", itemname, amount, durable);
            }
            else {
                if(IsWeaponItem(itemid)) {
                    if(!isequip) AddDialogListitem(playerid, " %s\t%.2f\t%d (%s)", itemname, durable, magammo, InvItemName[magtype]);
                    else AddDialogListitem(playerid, " %s "COL_YELLOW"(DANG TRANG BI)\t%.2f\t%d (%s)", itemname, durable, weapondata[GetWeaponSlot(itemid)][1], InvItemName[magtype]);
                }
                else if(IsMagazineItem(itemid)) AddDialogListitem(playerid, " %s\t%.2f\t%d", itemname, durable, magammo);
                else AddDialogListitem(playerid, " %s\t%.2f\t", itemname, durable);
            }
        }
	}
	ShowPlayerDialogPages(playerid, #InventoryMain, DS_HEADERS, ""COL_AQUA"TUI DO NHAN VAT", "Chon", "Dong", 20, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:InventoryMain(playerid, response, listitem) {
    if(response) {
        static i, str[128];
        InvSelectedItem[playerid] = listitem;
        i = InvSelectedItem[playerid];
        if(!InventoryData[playerid][i][ItemID]) return callcmd::inventory(playerid);
        format(str, sizeof str, ""COL_AQUA"TUI DO > %s", InvItemName[InventoryData[playerid][i][ItemID]]);
        if(IsWeaponItem(InventoryData[playerid][i][ItemID])) {
            if(!InventoryData[playerid][i][IsEquipped]) return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi", "Chon", "Quay lai");
            else return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Go trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi", "Chon", "Quay lai");
        }
        if(IsMagazineItem(InventoryData[playerid][i][ItemID])) return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Nap dan vao vu khi\nThong tin bang dan\nDua bang dan\nPha huy bang dan\nVut bo bang dan", "Chon", "Quay lai");
        Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Su dung vat pham\nThong tin vat pham\nDua vat pham\nTieu huy vat pham\nVut bo vat pham", "Chon", "Quay lai");
    }
	return 1;
}

Dialog:InventoryInteract(playerid, response, listitem, inputtext[]) {
    static sel; sel = InvSelectedItem[playerid];
    if(!response) return callcmd::inventory(playerid);
    switch(listitem) {
        case 0: {
            static str[64];
            format(str, sizeof str, ""COL_AQUA"TUI DO > %s > Su dung (SL: %d)", InvItemName[InventoryData[playerid][sel][ItemID]], InventoryData[playerid][sel][Amount]);
            if(InventoryData[playerid][sel][Amount] > 1) {
                if(IsMagazineItem(InventoryData[playerid][sel][ItemID])) OnPlayerUseItem(playerid, sel, 1);
                else if(IsFoodDrinkItem(InventoryData[playerid][sel][ItemID])) OnPlayerUseItem(playerid, sel, 1);
                else Dialog_Show(playerid, InventoryUseAmount, DS_INPUT, str, "\\cNhap so luong ma ban muon su dung:", "Su dung", "Quay lai");

            }
            else OnPlayerUseItem(playerid, sel, 1);
        }
        case 1: OnPlayerViewItemInfo(playerid, sel);
        //case 2: OnPlayerGiveItem(playerid, sel, targetid);
        //case 3: OnPlayerDestroyItem(playerid, sel, amount);
    }
    return 1;
}

Dialog:InventoryUseAmount(playerid, response, listitem, inputtext[]) {
    static sel; sel = InvSelectedItem[playerid];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext)) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    OnPlayerUseItem(playerid, sel, strval(inputtext));
    return 1;
}
