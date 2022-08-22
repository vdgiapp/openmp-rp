
hook function ResetGlobalVars() {

    for(new hid = 0; hid < MAX_HOUSES; hid++) {

        if(HouseData[hid][Created]) House_SaveData(hid);

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

        DestroyDynamicPickup(HouseData[hid][ExtPickup]);
        DestroyDynamicPickup(HouseData[hid][IntPickup]);

    }

    continue();
}

hook OnPlayerPickUpDynPickup(playerid, STREAMER_TAG_PICKUP:pickupid) {
    if(!IsPlayerInGame(playerid)) return 0;

    static hid;
    if((hid = House_Nearest(playerid)) != -1) {
        static str[256];

        if(House_IsPlayerOutside(playerid, hid)) {
            switch(HouseData[hid][Owned]) {
                case 0: ShowTDNx(playerid, 7000, "HOUSE~n~Dia chi: %d, %s~n~Gia tien: $%s", hid, HouseData[hid][Address], fNumber(HouseData[hid][Price]));
                case 1: ShowTDNx(playerid, 7000, "HOUSE~n~Dia chi: %d, %s~n~Chu so huu: %s", hid, HouseData[hid][Address], HouseData[hid][Owner]);
            }
        }
        if(House_IsPlayerInsideExt(playerid, hid)) {
            ShowTDNx(playerid, 3000, "/exit hoac /ra de ra ngoai.");
        }

    }
    return 1;
}

Dialog:HouseAdminMenu(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAdminCreateIntID, DS_INPUT, "TAO MOT NGOI NHA", "\\cHay nhap id interior cho ngoi nha:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAdminEditID, DS_INPUT, "CHINH SUA NGOI NHA", "\\cNhap ID cua ngoi nha ma ban muon chinh sua:", "Xong", "Quay lai");
            case 2: Dialog_Show(playerid, HouseAdminDeleteID, DS_INPUT, "XOA MOT NGOI NHA", "\\cNhap ID cua ngoi nha ma ban muon xoa:", "Xong", "Quay lai");
        }
    }
    return 1;
}

Dialog:HouseAdminDeleteID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot ngoi nha\nChinh sua mot ngoi nha\nXoa mot ngoi nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua ngoi nha khong hop le.");
    static house; house = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[house][Created]) return ErrorMsg(playerid, "Ngoi nha nay khong ton tai.");
    CharacterData[playerid][HouseAdminID] = house;
    House_Delete(CharacterData[playerid][HouseAdminID]);
    CharacterData[playerid][HouseAdminID] = -1;
    return 1;
}

Dialog:HouseAdminCreateIntID(playerid, response, listitem, inputtext[]) {
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot ngoi nha\nChinh sua mot ngoi nha\nXoa mot ngoi nha", "Chon", "Dong");
    if(strval(inputtext) >= sizeof(arrHouseInteriors) || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Interior ID phai tu 0 - %d.", sizeof(arrHouseInteriors)-1);
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    CharacterData[playerid][HouseCreateIntID] = strval(inputtext);
    Dialog_Show(playerid, HouseAdminCreatePrice, DS_INPUT, "TAO MOT NGOI NHA", "\\cHay nhap gia tien cho ngoi nha:", "Xong", "Quay lai");
    return 1;
}

Dialog:HouseAdminCreatePrice(playerid, response, listitem, inputtext[]) {
    if(!response) {
        CharacterData[playerid][HouseCreateIntID] = -1;
        return dialog_HouseAdminMenu(playerid, true, 0, "");
    }
    static str[64]; format(str, sizeof str, "%d", CharacterData[playerid][HouseCreateIntID]);
    if(strval(inputtext) < 1 || !IsNumeric(inputtext)) {
        ErrorMsg(playerid, "Gia tien cua ngoi nha phai lon hon 0.");
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
    if(!response) return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot ngoi nha\nChinh sua mot ngoi nha\nXoa mot ngoi nha", "Chon", "Dong");
    if(!IsNumeric(inputtext) || strval(inputtext) == -1) return ErrorMsg(playerid, "ID cua ngoi nha khong hop le.");
    static house; house = strval(inputtext);
    static title[32], caption[256];
    if(!HouseData[house][Created]) return ErrorMsg(playerid, "Ngoi nha nay khong ton tai.");
    CharacterData[playerid][HouseAdminID] = house;
    format(title, sizeof title, "House ID %d", CharacterData[playerid][HouseAdminID]);
    format(caption, sizeof caption, "Gia tien:\t$%s\nVi tri loi vao\nVi tri loi ra\nVi tri locker", fNumber(HouseData[house][Price]));
    Dialog_Show(playerid, HouseAdminEdit, DS_TABLIST, title, caption, "Chon", "Thoat");
}

Dialog:HouseAdminEdit(playerid, response, listitem, inputtext[]) {
    if(response) {
        switch(listitem) {
            case 0: Dialog_Show(playerid, HouseAEdit_Price, DS_INPUT, "GIA TIEN", "\\cNhap gia tien mua nha cho ngoi nha nay:", "Xong", "Quay lai");
            case 1: Dialog_Show(playerid, HouseAEdit_Ext, DS_MSGBOX, "VI TRI LOI VAO", "\\cBan co muon dat vi tri loi vao la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 2: Dialog_Show(playerid, HouseAEdit_Int, DS_MSGBOX, "VI TRI LOI RA", "\\cBan co muon dat vi tri loi ra la vi tri hien tai cua ban khong?", "Co", "Khong");
            case 3: Dialog_Show(playerid, HouseAEdit_Locker, DS_MSGBOX, "VI TRI LOCKER", "\\cBan co muon dat vi tri locker la vi tri hien tai cua ban khong?", "Co", "Khong");
        }
    }
    if(!response) {
        CharacterData[playerid][HouseAdminID] = -1;
    	CharacterData[playerid][HouseCreateIntID] = -1;
    	CharacterData[playerid][HouseCreatePrice] = 0;
        return Dialog_Show(playerid, HouseAdminMenu, DS_LIST, "ADMIN HOUSE MENU", "Tao mot ngoi nha\nChinh sua mot ngoi nha\nXoa mot ngoi nha", "Chon", "Dong");
    }
    return 1;
}

Dialog:HouseAEdit_Price(playerid, response, listitem, inputtext[]) {
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        static str[32];
        format(str, sizeof str, "%d", house);
        return dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(!IsNumeric(inputtext)) {
        static str[32];
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return ErrorMsg(playerid, "Gia tien khong hop le.");
    }
    if(strval(inputtext) <= 0) {
        static str[32];
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
        return ErrorMsg(playerid, "Gia tien cua ngoi nha phai lon hon 0.");
    }
    HouseData[house][Price] = strval(inputtext);
    return 1;
}

Dialog:HouseAEdit_Ext(playerid, response, listitem, inputtext[]) {
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        static str[32];
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    GetPlayerPos(playerid, HouseData[house][ExteriorX], HouseData[house][ExteriorY], HouseData[house][ExteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][ExteriorA]);
    HouseData[house][ExteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][ExteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi vao cua house id %d thanh cong.", house);
    return 1;
}

Dialog:HouseAEdit_Int(playerid, response, listitem, inputtext[]) {
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        static str[32];
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    GetPlayerPos(playerid, HouseData[house][InteriorX], HouseData[house][InteriorY], HouseData[house][InteriorZ]);
    GetPlayerFacingAngle(playerid, HouseData[house][InteriorA]);
    HouseData[house][InteriorInt] = GetPlayerInterior(playerid);
    HouseData[house][InteriorWorld] = GetPlayerVirtualWorld(playerid);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri loi ra cua house id %d thanh cong.", house);
    return 1;
}

Dialog:HouseAEdit_Locker(playerid, response, listitem, inputtext[]) {
    static house; house = CharacterData[playerid][HouseAdminID];
    if(!response) {
        static str[32];
        format(str, sizeof str, "%d", house);
        dialog_HouseAdminEditID(playerid, true, 0, str);
    }
    if(HouseData[house][InteriorInt] != GetPlayerInterior(playerid) || HouseData[house][InteriorWorld] != GetPlayerVirtualWorld(playerid)) return ErrorMsg(playerid, "Ban can phai o trong ngoi nha do.");
    GetPlayerPos(playerid, HouseData[house][LockerX], HouseData[house][LockerY], HouseData[house][LockerZ]);
    House_Refresh(house);
    House_SaveData(house);
    SuccessMsg(playerid, "Dat vi tri locker cua house id %d thanh cong.", house);
    return 1;
}

Alias:lockhouse("khoanha", "hlock", "houselock");
Cmd:lockhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) != -1) {
        if(!HouseData[id][Created]) return 0;
        if(!isequal(HouseData[id][Owner], CharacterData[playerid][Name])) return ErrorMsg(playerid, "Ban khong phai la chu nha.");
        PlayerPlaySound(playerid, 1145, 0, 0, 0);
        if(HouseData[id][Locked]) return HouseData[id][Locked] = 0, GameTextForPlayerf(playerid, 5000, 6, "~g~Mo khoa");
        if(!HouseData[id][Locked]) return HouseData[id][Locked] = 1, GameTextForPlayerf(playerid, 5000, 6, "~r~Da khoa");
    }
    return 1;
}

Alias:viewhouse("xemnha", "hview", "houseview");
Cmd:viewhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) != -1 && House_IsPlayerOutside(playerid, id)) {
        if(!HouseData[id][Created]) return 0;
        if(isequal(HouseData[id][Owner], CharacterData[playerid][Name])) return ErrorMsg(playerid, "Ban da so huu can nha nay, dung /enter de vao trong nha.");
        if(HouseData[id][Owned]) return ErrorMsg(playerid, "Can nha nay da co chu so huu, dung /enter de vao trong neu duoc chu nha cho phep.");
        SetPlayerCompensatedPos(playerid, HouseData[id][InteriorX], HouseData[id][InteriorY], HouseData[id][InteriorZ], HouseData[id][InteriorA], 3000, HouseData[id][InteriorWorld], HouseData[id][InteriorInt]);
        if(HouseData[id][RadioOn] == 1) PlayAudioStreamForPlayer(playerid, HouseData[id][RadioURL]);
    }
    return 1;
}

Alias:buyhouse("muanha", "hbuy", "housebuy");
Cmd:buyhouse(playerid, params[]) {
    new id = -1;
    if((id = House_Nearest(playerid)) != -1 && House_IsPlayerOutside(playerid, id)) {
        if(!HouseData[id][Created]) return 0;
        if(isequal(HouseData[id][Owner], CharacterData[playerid][Name])) return ErrorMsg(playerid, "Ban da la chu so huu cua ngoi nha nay roi.");
        if(HouseData[id][Owned]) return ErrorMsg(playerid, "Ban khong the mua can nha nay vi da co chu so huu.");
        PlayerPlaySound(playerid, 1054, 0, 0, 0);
        HouseData[id][Owned] = 1;
        format(HouseData[id][Owner], MAX_PLAYER_NAME, "%s", CharacterData[playerid][Name]);
        SuccessMsg(playerid, "Ban da mua thanh cong mot ngoi nha tai dia chi: %d, %s", id, HouseData[id][Address]);
        House_Refresh(id);
    }
    return 1;
}
