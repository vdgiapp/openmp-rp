
hook OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ) {

    return 1;
}

Alias:inventory("inv");
Cmd:inventory(playerid) {
    if(!IsPlayerInGame(playerid)) return 0;
    InvSelectedItem[playerid] = -1;
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, "  Vat pham\tDo ben\tCon lai");
    SortPlayerInventory(playerid);
	for(new i = 0; i < MAX_INV_ITEMS; i++) {
        if(InventoryData[playerid][i][ItemID]) {
            static itemname[64], itemid, amount, durable, isequip, magammo;
            itemid = InventoryData[playerid][i][ItemID];
            amount = InventoryData[playerid][i][Amount];
            durable = floatround(InventoryData[playerid][i][Durable]);
            isequip = InventoryData[playerid][i][IsEquipped];
            magammo = InventoryData[playerid][i][MagAmmo];
            format(itemname, sizeof itemname, "%s", InvItemName[itemid]);
            if(amount > 1) {
                if(IsMagazineItem(itemid)) AddDialogListitem(playerid, "  %s (x%d)\t%d%\t%d", itemname, amount, durable, magammo);
                else AddDialogListitem(playerid, "  %s (x%d)\t%d%\t", itemname, amount, durable);
            }
            else {
                if(IsGunItem(itemid)) {
                    if(!isequip) AddDialogListitem(playerid, "  %s\t%d%\t%d", itemname, durable, magammo);
                    else AddDialogListitem(playerid, "  %s (DANG TRANG BI)\t%d%\t%d", itemname, durable, magammo);
                }
                if(IsMagazineItem(itemid)) AddDialogListitem(playerid, "  %s\t \t%d", itemname, magammo);
                if(!IsGunItem(itemid) && !IsMagazineItem(itemid)) AddDialogListitem(playerid, "  %s\t%d%\t", itemname, durable);
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
        Dialog_Show(playerid, InventoryInteract, DS_LIST, str, "Su dung vat pham\nDua vat pham\nTieu huy vat pham\nVut bo vat pham", "Chon", "Quay lai");
    }
	return 1;
}

Dialog:InventoryInteract(playerid, response, listitem, inputtext[]) {
    static sel; sel = InvSelectedItem[playerid];
    if(!response) return callcmd::inventory(playerid);
    switch(listitem) {
        case 0: {
            static str[64];
            format(str, sizeof str, ""COL_AQUA"TUI DO > %s > Su dung", InvItemName[InventoryData[playerid][sel][ItemID]]);
            if(InventoryData[playerid][sel][Amount] > 1) Dialog_Show(playerid, InventoryUseAmount, DS_INPUT, str, "\\cNhap so luong ma ban muon su dung:", "Su dung", "Quay lai");
            else OnPlayerUseItem(playerid, InventoryData[playerid][sel][ItemID], 1);
        }
    }
    return 1;
}

Dialog:InventoryUseAmount(playerid, response, listitem, inputtext[]) {
    static sel; sel = InvSelectedItem[playerid];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong khong hop le.");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext)) return ErrorMsg(playerid, "So luong khong hop le.");
    OnPlayerUseItem(playerid, InventoryData[playerid][sel][ItemID], strval(inputtext));
    return 1;
}

Cmd:weapondata(playerid) {
    static wd[13][2];
    for(new i = 0; i < 13; i++) {
        GetPlayerWeaponData(playerid, i, wd[i][0], wd[i][1]);
        ClientMsg(playerid, -1, "Slot: %d - WID: %d - Ammo: %d", i, wd[i][0], wd[i][1]);
    }
    return 1;
}

Cmd:giveweapon(playerid, params[]) {
    static weaponid, ammo;
    if(sscanf(params, "dd", weaponid, ammo)) return UsageMsg(playerid, "/giveweapon [weaponid] [ammo]");
    GivePlayerWeapon(playerid, weaponid, ammo);
    return 1;
}

Cmd:setammo(playerid, params[]) {
    static slot, ammo;
    if(sscanf(params, "dd", slot, ammo)) return UsageMsg(playerid, "/setammo [slot] [ammo]");
    SetPlayerAmmo(playerid, slot, ammo);
    return 1;
}

Cmd:removeweapon(playerid, params[]) {
    static wid;
    if(sscanf(params, "d", wid)) return UsageMsg(playerid, "/removeweapon [weapon id]");
    RemovePlayerWeapon(playerid, wid);
    return 1;
}
