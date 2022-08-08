
hook OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ) {
	if(IsStaff(playerid, MANAGER_RANK)) {
		static sid; sid = GetStaffID(playerid);
		if(sid != -1 && StaffData[sid][ClickTP]) SetPlayerCompensatedPosFindZ(playerid, fX, fY, fZ, 1000);
	}
	return 1;
}

Cmd:ahelp(playerid) {

	if(!IsStaff(playerid, HELPER_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	return 1;
}

Cmd:aduty(playerid, params[]) {
	// test
	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "aduty");

	if(!StaffData[sid][OnDuty]) {
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da on-duty.", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
		return StaffData[sid][OnDuty] = true;
	}
	if(StaffData[sid][OnDuty]) {
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da off-duty.", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
		return StaffData[sid][OnDuty] = false;
	}

	return 1;
}

Cmd:streamer(playerid, params[]) {

	if (!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static objects, sid;
	sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	if(sscanf(params, "i", objects)) {
		UsageMsg(playerid, "/streamer [so object toi da]");
		ClientMsg(playerid, COLOR_GREY, "So objects toi da hien tai: %i", Streamer_GetVisibleItems(STREAMER_TYPE_OBJECT));
		return 1;
	}

	if(objects < 500 || objects > 2500) return ErrorMsg(playerid, "So luong object hien thi khong phu hop (500 - 2000)");

	static Float:x, Float:y, Float:z;

    Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, objects);

    foreach(new i : Player)	{
		if(!IsPlayerInGame(i)) continue;
		GetPlayerPos(i, x, y, z);
		Streamer_DestroyAllVisibleItems(playerid, STREAMER_TYPE_OBJECT);
		Streamer_UpdateEx(i, x, y, z, -1, -1, STREAMER_TYPE_OBJECT);
	}

	MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da thay doi so objects toi da thanh %d", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], objects);

	SendStaffCMD(playerid, "streamer");

	return 1;
}

Cmd:nick(playerid, params[]) {

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static name[MAX_PLAYER_NAME+1], sid;
	sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "nick");

	if(sscanf(params, "s[25]", name)) {
		if(isnull(StaffData[sid][Nick])) return ErrorMsg(playerid, "Ban chua dat nick cho tai khoan cua ban. Hay su dung /nick [ten] de dat nick.");
		if(isequal(PlayerName(playerid), StaffData[sid][Nick])) return SetPlayerName(playerid, CharacterData[playerid][Name]);
		if(isequal(PlayerName(playerid), CharacterData[playerid][Name])) return SetPlayerName(playerid, StaffData[sid][Nick]);
	}

	if(!isnull(StaffData[sid][Nick])) return ErrorMsg(playerid, "Ban chi co the dat nick cua ban mot lan duy nhat.");
	if(isnull(StaffData[sid][Nick])) {
		format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da dat nick thanh cong.", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
	}

	return 1;
}

Cmd:setnick(playerid, params[]) {

	if(!IsStaff(playerid, MANAGER_RANK)) return NoPermsMsg(playerid);

	static target, name[MAX_PLAYER_NAME+1], sid, sid2;

	if(sscanf(params, "us[25]", target, name)) return UsageMsg(playerid, "/setnick [id] [nick]");

	sid = GetStaffID(target);
	sid2 = GetStaffID(playerid);

	if(sid == -1 || sid2 == -1 || StaffData[sid2][Rank] < StaffData[sid][Rank]) return ErrorMsg(playerid, "Da co loi xay ra.");
	if(!IsPlayerInGame(target)) return ErrorMsg(playerid, "Nguoi choi do chua dang nhap vao tro choi.");

	SendStaffCMD(playerid, "setnick");

	if(isequal(PlayerName(target), StaffData[sid][Nick])) {
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da thay doi nick cua %s thanh %s.", GetStaffRankName(StaffData[sid2][Rank]), StaffData[sid2][Nick], StaffData[sid][Nick], name);
		format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);
		return SetPlayerName(target, StaffData[sid][Nick]);
	}

	MsgToAdmin(COLOR_LIGHTRED, "STAFF > %s %s da thay doi nick cua %s thanh %s.", GetStaffRankName(StaffData[sid2][Rank]), StaffData[sid2][Nick], StaffData[sid][Nick], name);
	format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);

	return 1;
}

Cmd:helpamount(playerid, params[]) {

	if(!IsStaff(playerid, HELPER_RANK)) return NoPermsMsg(playerid);

	static target, sid;

	if(sscanf(params, "u", target)) return UsageMsg(playerid, "/helpamount [id]");

	sid = GetStaffID(target);

	if(sid == -1) return ErrorMsg(playerid, "Nguoi choi do khong phai la mot helper/admin.");
	if(!IsPlayerInGame(target)) return ErrorMsg(playerid, "Nguoi choi do chua dang nhap vao tro choi.");

	ClientMsg(playerid, COLOR_GREY, "So lan da help cua %s %s la %d", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], StaffData[sid][Helped]);

	SendStaffCMD(playerid, "helpamount");

	return 1;
}

Alias:god("godmode");
Cmd:god(playerid) {

	if(!IsStaff(playerid, OFFICAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid;	sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "god");

	if(!StaffData[sid][GodMode]) {
		SuccessMsg(playerid, "Ban da bat che do godmode");
		StaffData[sid][prevHealth] = PlayerHealth(playerid);
		StaffData[sid][prevArmour] = PlayerArmour(playerid);
		SetPlayerHealth(playerid, FLOAT_INFINITY);
		return StaffData[sid][GodMode] = true;
	}
	if(StaffData[sid][GodMode]) {
		SuccessMsg(playerid, "Ban da tat che do godmode");
		SetPlayerHealth(playerid, StaffData[sid][prevHealth]);
		SetPlayerArmour(playerid, StaffData[sid][prevArmour]);
		return StaffData[sid][GodMode] = false;
	}

	return 1;
}

Alias:atoggle("atog");
Cmd:atoggle(playerid, params[]) {

	static type;

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	if(sscanf(params, "d", type)) {
		UsageMsg(playerid, "/atog(gle) [type]");
		UsageMsg(playerid, "1- PM, 2- CMD, 3- Kill, 4- Newb");
		return 1;
	}

	static sid; sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "atoggle");

	if(type == 1) {
		if(StaffData[sid][togPM]) {
			SuccessMsg(playerid, "Ban da tat lich su PM nguoi choi.");
			return StaffData[sid][togPM] = false;
		}
		if(!StaffData[sid][togPM]) {
			SuccessMsg(playerid, "Ban da bat lich su PM nguoi choi.");
			return StaffData[sid][togPM] = true;
		}
	}
	if(type == 2) {
		if(StaffData[sid][togCMD]) {
			SuccessMsg(playerid, "Ban da tat lich su dung lenh cua admin.");
			return StaffData[sid][togCMD] = false;
		}
		if(!StaffData[sid][togCMD]) {
			SuccessMsg(playerid, "Ban da bat lich su dung lenh cua admin.");
			return StaffData[sid][togCMD] = true;
		}
	}
	if(type == 3) {
		if(StaffData[sid][togKill]) {
			SuccessMsg(playerid, "Ban da tat lich su kill nguoi choi.");
			return StaffData[sid][togKill] = false;
		}
		if(!StaffData[sid][togKill]) {
			SuccessMsg(playerid, "Ban da bat lich su kill nguoi choi.");
			return StaffData[sid][togKill] = true;
		}
	}
	if(type == 4) {
		if(StaffData[sid][togNewb]) {
			SuccessMsg(playerid, "Ban da tat lich su newbie nguoi choi.");
			return StaffData[sid][togNewb] = false;
		}
		if(!StaffData[sid][togNewb]) {
			SuccessMsg(playerid, "Ban da bat lich su newbie nguoi choi.");
			return StaffData[sid][togNewb] = true;
		}
	}

	return 1;
}

Alias:teleport("tp", "tele");
Cmd:teleport(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	return 1;
}

Cmd:clicktp(playerid) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "clicktp");

	if(StaffData[sid][ClickTP]) {
		SuccessMsg(playerid, "Ban da tat che do click teleport.");
		return StaffData[sid][ClickTP] = false;
	}
	if(!StaffData[sid][ClickTP]) {
		SuccessMsg(playerid, "Ban da bat che do click teleport (Bam vao ban do de teleport).");
		return StaffData[sid][ClickTP] = true;
	}

	return 1;
}

Alias:position("pos");
Cmd:position(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static target;
	static Float:x, Float:y, Float:z;

	if(sscanf(params, "dfff", target, x, y, z)) return UsageMsg(playerid, "/pos(ition) [id] [x] [y] [z]");

	if(IsStaffSpectating(target)) return ErrorMsg(playerid, "Nguoi choi do dang trong che do spec.");

	SetPlayerCompensatedPos(target, x, y, z, 1000);
	SendStaffCMD(playerid, "position");

	return 1;
}

Cmd:setint(playerid, params[])  {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static target, int;
	static Float:x, Float:y, Float:z;

	if(sscanf(params, "dd", target, int)) return UsageMsg(playerid, "/setint [id] [int]");

	if(IsStaffSpectating(target)) return ErrorMsg(playerid, "Nguoi choi do dang trong che do spec.");

	GetPlayerPos(target, x, y, z);

	SetPlayerCompensatedPos(target, x, y, z, 1000, -1, int);
	SendStaffCMD(playerid, "setint");

	return 1;
}

Cmd:setvw(playerid, params[])  {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static target, vw;
	static Float:x, Float:y, Float:z;

	if(sscanf(params, "dd", target, vw)) return UsageMsg(playerid, "/setvw [id] [world]");

	if(IsStaffSpectating(target)) return ErrorMsg(playerid, "Nguoi choi do dang trong che do spec.");

	GetPlayerPos(target, x, y, z);

	SetPlayerCompensatedPos(target, x, y, z, 1000, vw, -1);
	SendStaffCMD(playerid, "setvw");

	return 1;
}

Cmd:x(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newx;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newx)) return UsageMsg(playerid, "/x [new x]");

	SetPlayerCompensatedPos(playerid, x+newx, y, z, 1000);
	SendStaffCMD(playerid, "x");

	return 1;
}

Cmd:y(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newy;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newy)) return UsageMsg(playerid, "/y [new y]");

	SetPlayerCompensatedPos(playerid, x, y+newy, z, 1000);
	SendStaffCMD(playerid, "y");

	return 1;
}

Cmd:z(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newz;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newz)) return UsageMsg(playerid, "/z [new z]");

	SetPlayerCompensatedPos(playerid, x, y, z+newz, 1000);
	SendStaffCMD(playerid, "z");

	return 1;
}

Cmd:sethp(playerid, params[]) {

	return 1;
}

Cmd:setar(playerid, params[]) {

	return 1;
}

/*
Cmd:makeadmin(playerid, params[]) {

	if(!IsStaff(playerid, MANAGER_RANK)) return NoPermsMsg(playerid);

	static

	return 1;
}
*/
