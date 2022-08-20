
Alias:inventory("inv");
Cmd:inventory(playerid) {
    if(!IsPlayerInGame(playerid)) return 0;
    InvSelectedItem[playerid] = -1;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, " Vat pham\tDo ben\t ");
    Inventory_Sort(playerid);
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
                if(Inventory_IsMagazine(itemid)) AddDialogListitem(playerid, " %s (x%d)\t \t%d / %d", itemname, amount, magammo, Inventory_GetMagSize(itemid));
                else if(Inventory_IsFoodDrink(itemid)) AddDialogListitem(playerid, " %s (x%d)", itemname, amount);
                else AddDialogListitem(playerid, " %s (x%d)\t%.2f\t", itemname, amount, durable);
            }
            else {
                if(Inventory_IsWeapon(itemid)) {
                    if(!isequip) AddDialogListitem(playerid, " %s\t%.2f\t%d / %d (%s)", itemname, durable, magammo, Inventory_GetMagSize(magtype), InvItemName[magtype]);
                    else AddDialogListitem(playerid, " %s "COL_YELLOW"(DANG TRANG BI)\t%.2f\t%d / %d (%s)", itemname, durable, weapondata[GetWeaponSlot(itemid)][1], Inventory_GetMagSize(magtype), InvItemName[magtype]);
                }
                else if(Inventory_IsMagazine(itemid)) AddDialogListitem(playerid, " %s\t \t%d / %d", itemname, magammo, Inventory_GetMagSize(itemid));
                else if(Inventory_IsFoodDrink(itemid)) AddDialogListitem(playerid, " %s", itemname);
                else AddDialogListitem(playerid, " %s\t%.2f\t", itemname, durable);
            }
        }
	}
	ShowPlayerDialogPages(playerid, #InventoryMain, DS_HEADERS, ""COL_AQUA"TUI DO NHAN VAT", "Chon", "Dong", 12, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:InventoryMain(playerid, response, listitem) {
    if(response) {
        static i, str[128];
        InvSelectedItem[playerid] = listitem;
        i = InvSelectedItem[playerid];
        if(!InventoryData[playerid][i][ItemID]) return callcmd::inventory(playerid);
        format(str, sizeof str, ""COL_AQUA"TUI DO > %s", InvItemName[InventoryData[playerid][i][ItemID]]);
        if(Inventory_IsWeapon(InventoryData[playerid][i][ItemID])) {
            if(!InventoryData[playerid][i][IsEquipped]) return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi", "Chon", "Quay lai");
            else return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Go trang bi vu khi\nThong tin vu khi\nDua vu khi\nPha huy vu khi\nVut bo vu khi", "Chon", "Quay lai");
        }
        if(Inventory_IsMagazine(InventoryData[playerid][i][ItemID])) return Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Nap dan vao vu khi\nThong tin bang dan\nDua bang dan\nPha huy bang dan\nVut bo bang dan", "Chon", "Quay lai");
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
                if(Inventory_IsMagazine(InventoryData[playerid][sel][ItemID])) Inventory_PlayerUseItem(playerid, sel, 1);
                else if(Inventory_IsFoodDrink(InventoryData[playerid][sel][ItemID])) Inventory_PlayerUseItem(playerid, sel, 1);
                else Dialog_Show(playerid, InventoryUseAmount, DS_INPUT, str, "\\cNhap so luong ma ban muon su dung:", "Su dung", "Quay lai");
            }
            else Inventory_PlayerUseItem(playerid, sel, 1);
        }
        case 1: Inventory_PlayerViewInfoItem(playerid, sel);
        //case 2: Inventory_PlayerGiveItem(playerid, sel, targetid);
        //case 3: Inventory_PlayerDestroyItem(playerid, sel, amount);
    }
    return 1;
}

Dialog:InventoryUseAmount(playerid, response, listitem, inputtext[]) {
    static sel; sel = InvSelectedItem[playerid];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext)) return ErrorMsg(playerid, "So luong su dung khong hop le."), dialog_InventoryInteract(playerid, true, 0, "");
    Inventory_PlayerUseItem(playerid, sel, strval(inputtext));
    return 1;
}

Dialog:InventoryViewInfo(playerid, response, listitem, inputtext[]) { ndpD_InventoryMain(playerid, true, InvSelectedItem[playerid]); }
