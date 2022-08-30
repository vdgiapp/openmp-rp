
hook function ResetGlobalVars() {

    for(new hid = 0; hid < MAX_HOUSES; hid++) {

        if(HouseData[hid][Created]) House_SaveData(hid);

        HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        HouseData[hid][Owner][0] = EOS;
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  1;
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

        for(new i = 0; i < MAX_HOUSE_INV; i++) {
            HouseLocker[hid][i][ItemID] = 0;
            HouseLocker[hid][i][Amount] = 0;
            HouseLocker[hid][i][Durable] = 0;
            HouseLocker[hid][i][MagType] = 0;
            HouseLocker[hid][i][MagAmmo] = 0;
            HouseLocker[hid][i][ExData] = -1;
        }

        HouseData[hid][Address][0] = EOS;

        DestroyDynamicPickup(HouseData[hid][ExtPickup]);
        DestroyDynamicPickup(HouseData[hid][IntPickup]);

    }

    continue();
}

hook OnPlayerPickUpDynPickup(playerid, STREAMER_TAG_PICKUP:pickupid) {
    if(!IsPlayerInGame(playerid)) return 0;

    static hid;
    if((hid = House_Nearest(playerid)) != -1) {
        if(House_IsPlayerOutside(playerid, hid)) {
            switch(HouseData[hid][Owned]) {
                case 0: ShowTDNx(playerid, 7000, "Nha so %d, %s~n~Gia tien: $%s~n~/xemnha - xem noi that.", hid, HouseData[hid][Address], fNumber(HouseData[hid][Price]));
                case 1: ShowTDNx(playerid, 7000, "Nha so %d, %s~n~Chu so huu: %s~n~/enter de di vao trong.", hid, HouseData[hid][Address], HouseData[hid][Owner]);
            }
        }
        if(House_IsPlayerNearExt(playerid, hid)) ShowTDNx(playerid, 3000, "/exit de ra ngoai.");
        if(House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) ShowTDNx(playerid, 3000, "/tudo, /hlocker");
    }
    return 1;
}

Dialog:HouseAdminMenu(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAdminCreateIntID, DS_INPUT, "Tao nha", "\\cHay nhap id interior cho can nha:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAdminEditID, DS_INPUT, "Chinh sua nha", "\\cNhap ID cua can nha ma ban muon chinh sua:", "Xong", "Quay lai");
            case 2: Dialog_Show(playerid, HouseAdminDeleteID, DS_INPUT, "Xoa nha", "\\cNhap ID cua can nha ma ban muon xoa:", "Xong", "Quay lai");
            case 3: Dialog_Show(playerid, HouseAdminGotoID, DS_INPUT, "Dich chuyen den can nha", "\\cNhap ID cua can nha ma ban muon den:", "Xong", "Quay lai");
        }
    }
    return 1;
}

Dialog:HouseAdminGotoID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "Admin house menu", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static id; id = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[id][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");
    SetPlayerCompensatedPos(playerid, HouseData[id][ExteriorX], HouseData[id][ExteriorY], HouseData[id][ExteriorZ], HouseData[id][ExteriorA], 3000, HouseData[id][ExteriorWorld], HouseData[id][ExteriorInt]);
}

Dialog:HouseAdminDeleteID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "Admin house menu", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static hid; hid = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[hid][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");

    CharacterData[playerid][HouseAdminID] = hid;

    SuccessMsg(playerid, "Da xoa thanh cong can nha tai dia chi %d, %s", HouseData[hid][ID], HouseData[hid][Address]);

    if(HouseData[hid][Created]) {
		printf("House ID %d, DbID %d deleted.", hid, HouseData[hid][ID]);
		mysql_update(Database, "DELETE FROM `houses` WHERE `ID` = '%d'", HouseData[hid][ID]);

		if (IsValidDynamicPickup(HouseData[hid][IntPickup]))
		    DestroyDynamicPickup(HouseData[hid][IntPickup]);

		if (IsValidDynamicPickup(HouseData[hid][ExtPickup]))
		    DestroyDynamicPickup(HouseData[hid][ExtPickup]);

		HouseData[hid][ID] = -1;
        HouseData[hid][Created] = 0;
        HouseData[hid][Owned] = 0;
        HouseData[hid][Owner][0] = EOS;
        HouseData[hid][Locked] = 0;
        HouseData[hid][Alarm] =  0;
        HouseData[hid][Level] =  1;
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

        for(new i = 0; i < MAX_HOUSE_INV; i++) {
            HouseLocker[hid][i][ItemID] = 0;
            HouseLocker[hid][i][Amount] = 0;
            HouseLocker[hid][i][Durable] = 0;
            HouseLocker[hid][i][MagType] = 0;
            HouseLocker[hid][i][MagAmmo] = 0;
            HouseLocker[hid][i][ExData] = -1;
        }

        HouseData[hid][Address][0] = EOS;
	}
    CharacterData[playerid][HouseAdminID] = -1;
    return 1;
}

Dialog:HouseAdminCreateIntID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "Admin house menu", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(strval(inputtext) >= sizeof(arrHouseInteriors) || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Interior ID phai tu 0 - %d.", sizeof(arrHouseInteriors)-1);
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    CharacterData[playerid][HouseCreateIntID] = strval(inputtext);
    Dialog_Show(playerid, HouseAdminCreatePrice, DS_INPUT, "Tao mot can nha", "\\cHay nhap gia tien cho can nha:", "Xong", "Quay lai");
    return 1;
}

Dialog:HouseAdminCreatePrice(playerid, response, listitem, inputtext[]) {
    if(!response) {
        CharacterData[playerid][HouseCreateIntID] = -1;
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    static str[64]; format(str, sizeof str, "%d", CharacterData[playerid][HouseCreateIntID]);
    if(strval(inputtext) < 1 || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Gia tien cua can nha phai lon hon 0.");
        return dialog_HouseAdminCreateIntID(playerid, true, 0, str);
    }
    CharacterData[playerid][HouseCreatePrice] = strval(inputtext);

    static Float:x, Float:y, Float:z, Float:angle;

	if(GetPlayerPos(playerid, x, y, z) && GetPlayerFacingAngle(playerid, angle)) {
		for(new i = 0; i < MAX_HOUSES; i++) {
	    	if(!HouseData[i][Created] && i != -1) {
				HouseData[i][ID] = i;
    	        HouseData[i][Created] = 1;
        	    HouseData[i][Owned] = 0;
				format(HouseData[i][Owner], MAX_PLAYER_NAME, "None");
                HouseData[i][Level] = 1;
				HouseData[i][Lights] = 0;
				HouseData[i][Locked] = 0;
            	HouseData[i][Price] = CharacterData[playerid][HouseCreatePrice];
            	HouseData[i][Cash] = 0;

				GetMapZoneName(GetMapZoneAtPoint(x, y, z), HouseData[i][Address]);
    	        HouseData[i][ExteriorX] = x;
    	        HouseData[i][ExteriorY] = y;
    	        HouseData[i][ExteriorZ] = z;
    	        HouseData[i][ExteriorA] = angle;
				HouseData[i][ExteriorInt] = GetPlayerInterior(playerid);
				HouseData[i][ExteriorWorld] = GetPlayerVirtualWorld(playerid);

				HouseData[i][IntID] = CharacterData[playerid][HouseCreateIntID];
				HouseData[i][InteriorX] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][X];
				HouseData[i][InteriorY] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Y];
				HouseData[i][InteriorZ] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Z];
				HouseData[i][InteriorA] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][A];
				HouseData[i][InteriorInt] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][Int];
				HouseData[i][InteriorWorld] = i+1;

                HouseData[i][LockerX] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LX];
                HouseData[i][LockerY] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LY];
                HouseData[i][LockerZ] = arrHouseInteriors[CharacterData[playerid][HouseCreateIntID]][LZ];

				House_Refresh(i);
				mysql_update(Database, "INSERT INTO `houses` (`ID`) VALUES (%d)", HouseData[i][ID]);
				House_SaveData(i);

				printf("House ID %d, DbID %d created.", i, HouseData[i][ID]);

                CharacterData[playerid][HouseCreateIntID] = -1;
                CharacterData[playerid][HouseCreatePrice] = 0;
				return i;
			}
		}
	}
    return 1;
}

Dialog:HouseAdminEditID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "Admin house menu", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua can nha khong hop le.");
    static house; house = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[house][Created]) return ErrorMsg(playerid, "can nha nay khong ton tai.");
    CharacterData[playerid][HouseAdminID] = house;
    format(title, sizeof title, "House ID %d", CharacterData[playerid][HouseAdminID]);
    format(caption, sizeof caption, "Interior ID: \t%d\nGia tien:\t$%s\nVi tri loi vao\nVi tri loi ra\nVi tri locker", HouseData[house][IntID], fNumber(HouseData[house][Price]));
    Dialog_Show(playerid, HouseAdminEdit, DS_TABLIST, title, caption, "Chon", "Thoat");
}

Dialog:HouseAdminEdit(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAEdit_IntID, DS_INPUT, "Interior ID", "\\cNhap interior id cho can nha nay:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAEdit_Price, DS_INPUT, "Gia mua nha", "\\cNhap gia tien mua nha cho can nha nay:", "Xong", "Quay lai");
            case 2: Dialog_Show(playerid, HouseAEdit_Ext, DS_MSGBOX, "Vi tri vao", "\\cBan co muon dat vi tri loi vao la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 3: Dialog_Show(playerid, HouseAEdit_Int, DS_MSGBOX, "Vi tri ra", "\\cBan co muon dat vi tri loi ra la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 4: Dialog_Show(playerid, HouseAEdit_Locker, DS_MSGBOX, "Vi tri locker", "\\cBan co muon dat vi tri locker la vi tri hien tai cua ban khong?", "Co", "Khong");
        }
    }
    if(!response) {
        CharacterData[playerid][HouseAdminID] = -1;
    	CharacterData[playerid][HouseCreateIntID] = -1;
    	CharacterData[playerid][HouseCreatePrice] = 0;
        return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "Admin house menu", "Tao mot can nha\nChinh sua mot can nha\nXoa mot can nha\nDich chuyen den mot can nha", "Chon", "Dong");
    }
    return 1;
}

Dialog:HouseAEdit_IntID(playerid, response, listitem, inputtext[]) {
    new str[32], intid = strval(inputtext);
    new house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        return dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(intid >= sizeof(arrHouseInteriors) || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Interior ID phai tu 0 - %d.", sizeof(arrHouseInteriors)-1);
        return dialog_HouseAdminEdit(playerid, true, 0, "");
    }

    HouseData[house][IntID] = intid;
    HouseData[house][InteriorX] = arrHouseInteriors[intid][X];
    HouseData[house][InteriorY] = arrHouseInteriors[intid][Y];
    HouseData[house][InteriorZ] = arrHouseInteriors[intid][Z];
    HouseData[house][InteriorA] = arrHouseInteriors[intid][A];
    HouseData[house][InteriorInt] = arrHouseInteriors[intid][Int];

    HouseData[house][LockerX] = arrHouseInteriors[intid][LX];
    HouseData[house][LockerY] = arrHouseInteriors[intid][LY];
    HouseData[house][LockerZ] = arrHouseInteriors[intid][LZ];

    House_Refresh(house);
    House_SaveData(house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Price(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        return dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(!IsNumeric(inputtext)) {
        dialog_HouseAdminEdit(playerid, true, 1, "");
        return ErrorMsg(playerid, "Gia tien khong hop le.");
    }
    if(strval(inputtext) <= 0) {
        dialog_HouseAdminEdit(playerid, true, 1, "");
        return ErrorMsg(playerid, "Gia tien cua can nha phai lon hon 0.");
    }
    HouseData[house][Price] = strval(inputtext);
    House_Refresh(house);
    House_SaveData(house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Ext(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    GetPlayerPos(playerid, HouseData[house][ExteriorX], HouseData[house][ExteriorY], HouseData[house][ExteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][ExteriorA]);
    HouseData[house][ExteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][ExteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi vao cua house id %d thanh cong.", house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Int(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    GetPlayerPos(playerid, HouseData[house][InteriorX], HouseData[house][InteriorY], HouseData[house][InteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][InteriorA]);
    HouseData[house][InteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][InteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi ra cua house id %d thanh cong.", house);
    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Dialog:HouseAEdit_Locker(playerid, response, listitem, inputtext[]) {
    new str[32];
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return 0;
    }
    if(HouseData[house][InteriorInt] != GetPlayerInterior(playerid) || HouseData[house][InteriorWorld] != GetPlayerVirtualWorld(playerid)) return ErrorMsg(playerid, "Ban can phai o trong can nha do.");
    GetPlayerPos(playerid, HouseData[house][LockerX], HouseData[house][LockerY], HouseData[house][LockerZ]);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri locker cua house id %d thanh cong.", house);

    format(str, sizeof str, "%d", house);
    dialog_HouseAdminEditID(playerid, true, 0, str);
    return 1;
}

Alias:lockhouse("khoanha", "hlock", "houselock");
Cmd:lockhouse(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!(House_IsPlayerOutside(playerid, id) || House_IsPlayerNearExt(playerid, id))) return ErrorMsg(playerid, "Ban can phai dung o truoc loi ra vao cua can nha.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!HouseData[id][Owned]) return 0;
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong co chia khoa cua can nha nay.");
    PlayerPlaySound(playerid, 1145, 0, 0, 0);
    if(HouseData[id][Locked]) return HouseData[id][Locked] = 0, GameTextForPlayerf(playerid, 2000, 6, "~g~Mo khoa");
    if(!HouseData[id][Locked]) return HouseData[id][Locked] = 1, GameTextForPlayerf(playerid, 2000, 6, "~r~Da khoa");
    return 1;
}

Alias:viewhouse("xemnha", "hview", "houseview");
Cmd:viewhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return 0;
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(HouseData[id][Owned]) return 0;
    if(House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban da so huu can nha nay, dung /enter de vao trong nha.");
    SetPlayerCompensatedPos(playerid, HouseData[id][InteriorX], HouseData[id][InteriorY], HouseData[id][InteriorZ], HouseData[id][InteriorA], 3000, HouseData[id][InteriorWorld], HouseData[id][InteriorInt]);
    if(HouseData[id][RadioOn] == 1) PlayAudioStreamForPlayer(playerid, HouseData[id][RadioURL]);
    return 1;
}

Alias:leavehouse("bonha", "hleave", "houseleave");
Cmd:leavehouse(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai chu so huu cua can nha nay.");

    PlayerPlaySound(playerid, 1055, 0, 0, 0);
    CharacterData[playerid][Cash] += floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash];
    SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    ShowTDNx(playerid, 3000, "+ $%s", fNumber(floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash]));

    SuccessMsg(playerid, "Ban da bo can nha tai dia chi %d, %s va duoc tra lai $%s",
    id, HouseData[id][Address], floatround((HouseData[id][Price]*HouseData[id][Level])/10)+HouseData[id][Cash]);

    HouseData[id][Owned] = 0;
    format(HouseData[id][Owner], 25, "None");
    HouseData[id][Locked] = 0;
    HouseData[id][Alarm] = 0;
    HouseData[id][Lights] = 0;
    HouseData[id][Level] = 1;
    HouseData[id][Cash] = 0;

    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        HouseLocker[id][i][ItemID] = 0;
        HouseLocker[id][i][Amount] = 0;
        HouseLocker[id][i][Durable] = 0;
        HouseLocker[id][i][MagType] = 0;
        HouseLocker[id][i][MagAmmo] = 0;
        HouseLocker[id][i][ExData] = -1;
    }

    House_Refresh(playerid);
    House_SaveData(id);
    return 1;
}

Alias:upgradehouse("nangcapnha", "hupgrade", "houseupgrade");
Cmd:upgradehouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong dung gan can nha nao ca.");
    if(!House_IsPlayerInside(playerid, id)) return ErrorMsg(playerid, "Ban can phai vao ben trong can nha de nang cap.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai chu so huu cua can nha nay.");
    if(HouseData[id][Level] == 3) return ErrorMsg(playerid, "Can nha da dat cap do toi da 3");

    switch(HouseData[id][Level]) {
        case 1: {
            if(CharacterData[playerid][Cash] - HOUSE_UPGR_COST2 < 0) return ErrorMsg(playerid, "So tien yeu cau de nang cap can nha tu cap do 1 len cap do 2 la $%d.", fNumber(HOUSE_UPGR_COST2));
            CharacterData[playerid][Cash] -= HOUSE_UPGR_COST2;
            ShowTDNx(playerid, 3000, "- $%s", fNumber(HOUSE_UPGR_COST2));
            SuccessMsg(playerid, "Ban da nang cap can nha len cap do 2 (+%d slot locker)", HOUSE_LOCKER_SLOT2-HOUSE_LOCKER_SLOT1);
        }
        case 2: {
            if(CharacterData[playerid][Cash] - HOUSE_UPGR_COST3 < 0) return ErrorMsg(playerid, "So tien yeu cau de nang cap can nha tu cap do 2 len cap do 3 la $%d.", fNumber(HOUSE_UPGR_COST3));
            CharacterData[playerid][Cash] -= HOUSE_UPGR_COST3;
            ShowTDNx(playerid, 3000, "- $%s", fNumber(HOUSE_UPGR_COST3));
            SuccessMsg(playerid, "Ban da nang cap can nha len cap do 3 (+%d slot locker)", HOUSE_LOCKER_SLOT3-HOUSE_LOCKER_SLOT2);
        }
    }

    HouseData[id][Level]++;
    House_Refresh(playerid);
    House_SaveData(id);

    SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    PlayerPlaySound(playerid, 1133, 0, 0, 0);
    return 1;
}

Alias:sellhouse("bannha", "hsell", "housesell");
Cmd:sellhouse(playerid, params[]) {
    new target, price, id = -1;
    if(sscanf(params, "ui", target, price)) return UsageMsg(playerid, "/hsell [ID nguoi choi] [gia tien]");
    if(target == playerid) return ErrorMsg(playerid, "Ban khong the tu ban nha cho chinh minh.");
    if(!IsPlayerInGame(target)) return ErrorMsg(playerid, "Nguoi choi do chua dang nhap vao tro choi.");
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!IsPlayerInRangeOfPlayer(playerid, target)) return ErrorMsg(playerid, "Nguoi choi do khong o gan ban.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    if(CharacterData[target][HouseOrderID] != -1) return ErrorMsg(playerid, "Nguoi choi do dang co mot yeu cau khac.");
    if(CharacterData[playerid][HouseOrderID] != -1) return ErrorMsg(playerid, "Ban dang co mot yeu cau khac, vui long chap nhan hoac tu choi yeu cau do.");
    CharacterData[target][HouseOrderID] = id;
    CharacterData[playerid][HouseOrderID] = id;
    CharacterData[target][HouseOrderWith] = playerid;
    CharacterData[playerid][HouseOrderID] = target;
    CharacterData[target][HouseOrderPrice] = price;
    CharacterData[playerid][HouseOrderID] = price;
    ClientMsg(playerid, COLOR_GREEN, "Ban da gui yeu cau mua nha den nguoi choi %s. Vui long doi nguoi choi chap thuan.", CharacterData[target][Name]);
    ClientMsg(target, COLOR_GREEN, "Nguoi choi %s da gui cho ban yeu cau mua can nha %d, %s.", CharacterData[playerid][Name], HouseData[id][ID], HouseData[id][Address]);
    ClientMsg(target, COLOR_GREY, "De chap nhan, hay su dung lenh /haccept");
    ClientMsg(target, COLOR_GREY, "De tu choi, hay su dung lenh /hrefuse");
    return 1;
}

Alias:houseaccept("haccept", "hchapnhan");
Cmd:houseaccept(playerid, params[]) {

    return 1;
}

Alias:buyhouse("muanha", "hbuy", "housebuy");
Cmd:buyhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!House_IsPlayerOutside(playerid, id)) return ErrorMsg(playerid, "Ban can phai ra ben ngoai can nha truoc.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    if(House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban da la chu so huu cua can nha nay roi.");
    if(HouseData[id][Owned]) return ErrorMsg(playerid, "Ban khong the mua can nha nay vi da co chu so huu.");
    if(CharacterData[playerid][Cash] < HouseData[id][Price]) return ErrorMsg(playerid, "So du trong nguoi khong du de thuc hien hanh dong nay.");
    CharacterData[playerid][Cash] -= HouseData[id][Price];
    SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
    PlayerPlaySound(playerid, 1054, 0, 0, 0);
    HouseData[id][Owned] = 1;
    format(HouseData[id][Owner], MAX_PLAYER_NAME, "%s", CharacterData[playerid][Name]);
    SuccessMsg(playerid, "Ban da mua thanh cong mot can nha tai dia chi %d, %s", id, HouseData[id][Address]);
    House_Refresh(id);
    return 1;
}

Alias:houselocker("tudo", "hlocker");
Cmd:houselocker(playerid) {
    new id = -1;
    if((id = House_Nearest(playerid)) == -1) return ErrorMsg(playerid, "Ban khong o gan can nha nao ca.");
    if(!House_IsPlayerNearLocker(playerid, id)) return ErrorMsg(playerid, "Ban khong dung gan locker nao ca.");
    if(!House_IsOwner(playerid, id)) return ErrorMsg(playerid, "Ban khong phai la chu o huu cua can nha nay.");
    if(IsPlayerInAnyVehicle(playerid)) return ErrorMsg(playerid, "Ban khong the thuc hien hanh dong nay khi o tren mot phuong tien.");
    CharacterData[playerid][HouseSelectedItem] = -1;
    // Sort
    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        for(new u = i+1; u < MAX_HOUSE_INV; u++) {
            if(HouseLocker[id][i][ItemID]) {
				if(HouseLocker[id][i][ItemID] != HouseLocker[id][u][ItemID]) continue;
                if(HouseLocker[id][i][Durable] != HouseLocker[id][u][Durable]) continue;
                if(Inventory_IsWeapon(HouseLocker[id][i][ItemID]) || Inventory_IsWeapon(HouseLocker[id][u][ItemID])) continue;
				if(HouseLocker[id][i][ExData] != HouseLocker[id][u][ExData]) continue;
                if(HouseLocker[id][i][MagAmmo] != HouseLocker[id][u][MagAmmo]) continue;
                HouseLocker[id][i][Amount] += HouseLocker[id][u][Amount];
				HouseLocker[id][u][ItemID] = 0;
				HouseLocker[id][u][Amount] = 0;
				HouseLocker[id][u][MagType] = 0;
				HouseLocker[id][u][MagAmmo] = 0;
				HouseLocker[id][u][ExData] = -1;
            }
            if(!HouseLocker[id][i][ItemID] && HouseLocker[id][u][ItemID]) {
                SwapInt(HouseLocker[id][u][ItemID], HouseLocker[id][i][ItemID]);
                SwapInt(HouseLocker[id][u][Amount], HouseLocker[id][i][Amount]);
                SwapFloat(HouseLocker[id][u][Durable], HouseLocker[id][i][Durable]);
				SwapInt(HouseLocker[id][u][MagType], HouseLocker[id][i][MagType]);
                SwapInt(HouseLocker[id][u][MagAmmo], HouseLocker[id][i][MagAmmo]);
				SwapInt(HouseLocker[id][u][ExData], HouseLocker[id][i][ExData]);
            }
        }
		if(HouseLocker[id][i][Amount] <= 0) HouseLocker[id][i][ItemID] = 0, HouseLocker[id][i][Amount] = 0;
		if(Inventory_IsWeapon(HouseLocker[id][i][ItemID])) {
			if(HouseLocker[id][i][MagAmmo] <= 0 || HouseLocker[id][i][MagType] <= 0) {
                HouseLocker[id][i][MagAmmo] = 0;
                HouseLocker[id][i][MagType] = 0;
            }
		}
		if(Inventory_IsMagazine(HouseLocker[id][i][ItemID])) {
			if(HouseLocker[id][i][MagAmmo] <= 0) {
				HouseLocker[id][i][ItemID] = 0;
                HouseLocker[id][i][Amount] = 0;
                HouseLocker[id][i][Durable] = 0;
				HouseLocker[id][i][MagType] = 0;
                HouseLocker[id][i][MagAmmo] = 0;
				HouseLocker[id][i][ExData] = -1;
			}
		}
    }
    ClearDialogListitems(playerid);
    AddDialogListitem(playerid, " Vat pham\tDo ben\t_");
    AddDialogListitem(playerid, " Ket sat: "COL_YELLOW"[ $%s ]", fNumber(HouseData[id][Cash]));
    for(new i = 0; i < MAX_HOUSE_INV; i++) {
        // Level 3 = remain
        if(HouseLocker[id][i][ItemID]) {
            static weapondata[13][2], exdata, string[4096] = "";
            static itemname[64], itemid, amount, Float:durable, magtype, magammo;
            itemid = HouseLocker[id][i][ItemID];
            amount = HouseLocker[id][i][Amount];
            durable = HouseLocker[id][i][Durable];
            magtype = HouseLocker[id][i][MagType];
            magammo = HouseLocker[id][i][MagAmmo];
            exdata = HouseLocker[id][i][ExData];
            format(itemname, sizeof itemname, "%s", ItemInfo[itemid][Name]);
            for(new u = 0; u < 13; u++) { GetPlayerWeaponData(playerid, u, weapondata[u][0], weapondata[u][1]); }
            format(string, sizeof string, ""COL_WHITE" %s", Inventory_ItemName(itemid));
            switch(exdata) {
                case -1: { }
                default: format(string, sizeof string, "%s %d", string, exdata);
            }
            switch(amount) {
                case 1: { }
                default: format(string, sizeof string, "%s [x%s]", string, fNumber(amount));
            }
            format(string, sizeof string, "%s\t"COL_WHITE"%.1f", string, durable);
            if(Inventory_IsMagazine(itemid)) format(string, sizeof string, "%s\t"COL_WHITE"%d / %d", string, magammo, Inventory_GetMagSize(itemid));
            if(Inventory_IsWeapon(itemid)) format(string, sizeof string, "%s\t"COL_WHITE"%d / %d (%s)", string, magammo, Inventory_GetMagSize(magtype), Inventory_ItemName(magtype));
            AddDialogListitem(playerid, string);
        }
	}
    static title[64];
    format(title, sizeof title, "Tu do (House ID: %d)", id);
	ShowPlayerDialogPages(playerid, #HouseLockerMain, DS_HEADERS, title, "Chon", "Dong", 12, "{F5D400}TRANG SAU", "{F5D400}TRANG TRUOC");
    return 1;
}

DialogPages:HouseLockerMain(playerid, response, listitem) {
    if(response) {
        new id = -1, str[128];
        if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
            switch(listitem) {
                case 0: {
                    format(str, sizeof str, "Ket sat: "COL_YELLOW"$%s", fNumber(HouseData[id][Cash]));
                    Dialog_Show(playerid, HouseLockerSafe, DS_LIST, str, "Cat tien\nRut tien", "Chon", "Quay lai");
                }
                default: {
                    new i;
                    CharacterData[playerid][HouseSelectedItem] = listitem-1;
                    i = CharacterData[playerid][HouseSelectedItem];
                    if(!HouseLocker[id][i][ItemID]) return callcmd::houselocker(playerid);
                    format(str, sizeof str, "Tu do > %s", Inventory_ItemName(HouseLocker[id][i][ItemID]));
                    Dialog_Show(playerid, HouseLockerItem, DS_LIST, str, "Lay ra\nThong tin", "Chon", "Quay lai");
                }
            }
        }
    }
	return 1;
}

Dialog:HouseLockerSafe(playerid, response, listitem, inputtext[]) {
    new id = -1, str[128];
    if(!response) return callcmd::houselocker(playerid);
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        switch(listitem) {
            case 0: {
                format(str, sizeof str, "\\c"COL_YELLOW"So tien hien tai: $%s\n \\c"COL_WHITE"Nhap so tien ma ban muon cat vao:", fNumber(HouseData[id][Cash]));
                Dialog_Show(playerid, HouseLockerSaveCash, DS_INPUT, "Ket sat > Cat tien", str, "Cat vao", "Quay lai");
            }
            case 1: {
                format(str, sizeof str, "\\c"COL_YELLOW"So tien hien tai: $%s\n \\c"COL_WHITE"Nhap so tien ma ban muon rut ra:", fNumber(HouseData[id][Cash]));
                Dialog_Show(playerid, HouseLockerWdCash, DS_INPUT, "Ket sat > Rut tien", str, "Rut ra", "Quay lai");
            }
        }
    }
    return 1;
}

Dialog:HouseLockerItem(playerid, response, listitem, inputtext[]) {
    new id = -1,
        sel = CharacterData[playerid][HouseSelectedItem];
    if(!response) return callcmd::houselocker(playerid);
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id) && House_IsOwner(playerid, id)) {
        switch(listitem) {
            case 0: {
                new str[128] = "";
                format(str, sizeof str, "Tu do > %s > Lay ra (SL: %d)", Inventory_ItemName(HouseLocker[id][sel][ItemID]), HouseLocker[id][sel][Amount]);
                if(HouseLocker[id][sel][Amount] > 1) Dialog_Show(playerid, HouseLockerTakeItem, DS_INPUT, str, "\\cNhap so luong ma ban muon lay ra:", "Lay ra", "Quay lai");
                else dialog_HouseLockerTakeItem(playerid, true, 0, "1");
            }
            case 1: {

            }
        }
    }
    return 1;
}

Dialog:HouseLockerStoreItem(playerid, response, listitem, inputtext[]) {
    new hid = -1;
    new sel = CharacterData[playerid][InvSelectedItem];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong cat vao khong hop le."), dialog_InventoryInteract(playerid, true, 5, "");
    if(InventoryData[playerid][sel][Amount] < strval(inputtext) || strval(inputtext) == 0) return ErrorMsg(playerid, "So luong cat vao khong hop le."), dialog_InventoryInteract(playerid, true, 5, "");
    if((hid = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) {
        new itemid = InventoryData[playerid][sel][ItemID],
            exdata = InventoryData[playerid][sel][ExData];
        if(House_LockerStoreItem(hid, InventoryData[playerid][sel][ItemID], strval(inputtext), InventoryData[playerid][sel][Durable], InventoryData[playerid][sel][ExData], InventoryData[playerid][sel][MagType], InventoryData[playerid][sel][MagAmmo]) == -1) return ErrorMsg(playerid, "Khong the cat them vat pham vao vi tu do da day.");
        if(Inventory_IsWeapon(InventoryData[playerid][sel][ItemID]) && InventoryData[playerid][sel][IsEquipped]) {
            RemovePlayerWeapon(playerid, InventoryData[playerid][sel][ItemID]);
            InventoryData[playerid][sel][IsEquipped] = 0;
        }
        InventoryData[playerid][sel][Amount] -= strval(inputtext);
        if(exdata != -1) ClientMsg(playerid, -1, "Ban da cat "COL_GREEN"x%d "COL_WHITE"vat pham "COL_GREEN"%s %s "COL_WHITE"vao trong tu do.", strval(inputtext), Inventory_ItemName(itemid), exdata);
        else ClientMsg(playerid, -1, "Ban da cat "COL_GREEN"x%d "COL_WHITE"vat pham "COL_GREEN"%s "COL_WHITE"vao trong tu do.", strval(inputtext), Inventory_ItemName(itemid));
    }
    return 1;
}

Dialog:HouseLockerTakeItem(playerid, response, listitem, inputtext[]) {
    new hid = -1;
    new sel = CharacterData[playerid][HouseSelectedItem];
    if(!response) return ndpD_InventoryMain(playerid, true, sel);
    if(!IsNumeric(inputtext)) return ErrorMsg(playerid, "So luong lay ra khong hop le."), dialog_HouseLockerItem(playerid, true, 0, "");
    if((hid = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, hid) && House_IsOwner(playerid, hid)) {
        new itemid = HouseLocker[hid][sel][ItemID],
            exdata = HouseLocker[hid][sel][ExData];
        if(HouseLocker[hid][sel][Amount] < strval(inputtext) || strval(inputtext) == 0) return ErrorMsg(playerid, "So luong lay ra khong hop le."), dialog_HouseLockerItem(playerid, true, 0, "");
        if(House_LockerTakeItem(playerid, hid, sel, strval(inputtext)) == -1) return ErrorMsg(playerid, "Hanh trang cua ban da day hoac qua nang.");
        if(exdata != -1) ClientMsg(playerid, -1, "Ban da lay "COL_GREEN"x%d "COL_WHITE"vat pham "COL_GREEN"%s %s "COL_WHITE"ra khoi tu do.", strval(inputtext), Inventory_ItemName(itemid), exdata);
        else ClientMsg(playerid, -1, "Ban da lay "COL_GREEN"x%d "COL_WHITE"vat pham "COL_GREEN"%s "COL_WHITE"ra khoi tu do.", strval(inputtext), Inventory_ItemName(itemid));
    }
    return 1;
}

Dialog:HouseLockerSaveCash(playerid, response, listitem, inputtext[]) {
    new id = -1, cash = strval(inputtext);
    if(!response) return ndpD_HouseLockerMain(playerid, true, 0);
    if(!IsNumeric(inputtext)) {
        ErrorMsg(playerid, "So tien cat vao khong hop le.");
        return dialog_HouseLockerSafe(playerid, true, 0, "");
    }
    if(cash <= 0) {
        ErrorMsg(playerid, "So tien cat vao phai lon hon 0.");
        return dialog_HouseLockerSafe(playerid, true, 0, "");
    }
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        if(CharacterData[playerid][Cash] < cash) {
            ErrorMsg(playerid, "So tien tren nguoi cua ban nho hon $%s.", fNumber(cash));
            return dialog_HouseLockerSafe(playerid, true, 0, "");
        }
        CharacterData[playerid][Cash] -= cash;
        SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
        HouseData[id][Cash] += cash;

        SuccessMsg(playerid, "Ban da cat so tien $%s vao trong ket sat.", fNumber(cash));
        return dialog_HouseLockerSafe(playerid, false, 0, "");
    }
    return 1;
}

Dialog:HouseLockerWdCash(playerid, response, listitem, inputtext[]) {
    new id = -1, cash = strval(inputtext);
    if(!response) return ndpD_HouseLockerMain(playerid, true, 0);
    if(!IsNumeric(inputtext)) {
        ErrorMsg(playerid, "So tien rut ra khong hop le.");
        return dialog_HouseLockerSafe(playerid, true, 1, "");
    }
    if(cash <= 0) {
        ErrorMsg(playerid, "So tien rut ra phai lon hon 0.");
        return dialog_HouseLockerSafe(playerid, true, 1, "");
    }
    if(!IsPlayerInAnyVehicle(playerid) && (id = House_Nearest(playerid)) != -1 && House_IsPlayerNearLocker(playerid, id)) {
        if(HouseData[id][Cash] < cash) {
            ErrorMsg(playerid, "So tien trong ket sat cua can nha nho hon $%s.", fNumber(cash));
            return dialog_HouseLockerSafe(playerid, true, 1, "");
        }
        CharacterData[playerid][Cash] += cash;
        SetPlayerMoney(playerid, CharacterData[playerid][Cash]);
        HouseData[id][Cash] -= cash;

        SuccessMsg(playerid, "Ban da rut so tien $%s vao trong ket sat.", fNumber(cash));
        return dialog_HouseLockerSafe(playerid, false, 0, "");
    }
    return 1;
}
