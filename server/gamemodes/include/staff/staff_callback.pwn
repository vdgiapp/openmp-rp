
hook OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ) {
	if(IsStaff(playerid, MANAGER_RANK)) {
		if(StaffData[GetStaffID(playerid)][ClickTP]) SetPlayerCompensatedPosFindZ(playerid, fX, fY, fZ, 1000);
	}
	return 1;
}

Cmd:ahelp(playerid) {

	if(!IsStaff(playerid, HELPER_RANK)) return NoPermsMsg(playerid);

	return 1;
}

Alias:adminchat("achat", "a");
Cmd:adminchat(playerid, params[]) {

	if(!IsStaff(playerid, HELPER_RANK)) return NoPermsMsg(playerid);

	static sid, str[128]; sid = GetStaffID(playerid);

	format(str, sizeof str, "%s", params);
	format(str, sizeof str, "ADMIN > (( [%d] %s %s: %s ))", playerid, GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], params);
	MsgToAdmin(COLOR_ADMINCHAT, str);

	return 1;
}

Cmd:aooc(playerid) {

	if(!IsStaff(playerid, OFFICAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "aooc");

	if(ToggleChatOOC) {
		GlobalMsg(COLOR_LIGHTRED, "%s %s da tat kenh chat ooc (/o).", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
		return ToggleChatOOC = false;
	}
	if(!ToggleChatOOC) {
		GlobalMsg(COLOR_LIGHTRED, "%s %s da bat kenh chat ooc (/o).", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
		return ToggleChatOOC = true;
	}

	return 1;
}

Cmd:aduty(playerid, params[]) {

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "aduty");

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

	SendStaffCMDLog(playerid, "streamer");

	return 1;
}

Cmd:nick(playerid, params[]) {

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static name[MAX_PLAYER_NAME+1], sid;
	sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "nick");

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

	SendStaffCMDLog(playerid, "setnick");

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

	SendStaffCMDLog(playerid, "helpamount");

	return 1;
}

Alias:god("godmode");
Cmd:god(playerid) {

	if(!IsStaff(playerid, OFFICAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid;	sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "god");

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

Cmd:alog(playerid, params[]) {

	static type;

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	if(sscanf(params, "d", type)) {
		UsageMsg(playerid, "/alog [type]");
		UsageMsg(playerid, "1- PM, 2- CMD, 3- Kill, 4- Newb");
		return 1;
	}

	static sid; sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "alog");

	if(type == 1) {
		if(StaffData[sid][logPM]) {
			SuccessMsg(playerid, "Ban da tat lich su PM nguoi choi.");
			return StaffData[sid][logPM] = false;
		}
		if(!StaffData[sid][logPM]) {
			SuccessMsg(playerid, "Ban da bat lich su PM nguoi choi.");
			return StaffData[sid][logPM] = true;
		}
	}
	if(type == 2) {
		if(StaffData[sid][logCMD]) {
			SuccessMsg(playerid, "Ban da tat lich su dung lenh cua admin.");
			return StaffData[sid][logCMD] = false;
		}
		if(!StaffData[sid][logCMD]) {
			SuccessMsg(playerid, "Ban da bat lich su dung lenh cua admin.");
			return StaffData[sid][logCMD] = true;
		}
	}
	if(type == 3) {
		if(StaffData[sid][logKill]) {
			SuccessMsg(playerid, "Ban da tat lich su kill nguoi choi.");
			return StaffData[sid][logKill] = false;
		}
		if(!StaffData[sid][logKill]) {
			SuccessMsg(playerid, "Ban da bat lich su kill nguoi choi.");
			return StaffData[sid][logKill] = true;
		}
	}
	if(type == 4) {
		if(StaffData[sid][logNewb]) {
			SuccessMsg(playerid, "Ban da tat lich su newbie nguoi choi.");
			return StaffData[sid][logNewb] = false;
		}
		if(!StaffData[sid][logNewb]) {
			SuccessMsg(playerid, "Ban da bat lich su newbie nguoi choi.");
			return StaffData[sid][logNewb] = true;
		}
	}

	return 1;
}

Alias:teleport("tp", "tele");
Cmd:teleport(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:x, Float:y, Float:z;
	static vw, int;

	static target1, target2;

	if(sscanf(params, "uu", target1, target2)) return UsageMsg(playerid, "/tele(port) [id] [to id]");

	if(target1 == target2) return ErrorMsg(playerid, "Ban khong the tu dich chuyen den chinh minh.");
	if(!IsPlayerInGame(target1) || !IsPlayerInGame(target2)) return ErrorMsg(playerid, "Mot trong hai nguoi choi chua dang nhap vao game.");
	if(IsStaffSpectating(target1) || IsStaffSpectating(target2)) return ErrorMsg(playerid, "Mot trong hai nguoi choi do dang trong che do spec.");

	SendStaffCMDLog(playerid, "teleport");

	GetPlayerPos(target2, x, y, z);
	vw = GetPlayerVirtualWorld(target2);
	int = GetPlayerInterior(target2);

	SetPlayerCompensatedPos(target1, x, y, z, 1000, vw, int);

	return 1;
}

Cmd:clicktp(playerid) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid; sid = GetStaffID(playerid);

	SendStaffCMDLog(playerid, "clicktp");

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
	SendStaffCMDLog(playerid, "position");

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
	SendStaffCMDLog(playerid, "setint");

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
	SendStaffCMDLog(playerid, "setvw");

	return 1;
}

Cmd:x(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newx;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newx)) return UsageMsg(playerid, "/x [new x]");

	SetPlayerCompensatedPos(playerid, x+newx, y, z, 1000);
	SendStaffCMDLog(playerid, "x");

	return 1;
}

Cmd:y(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newy;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newy)) return UsageMsg(playerid, "/y [new y]");

	SetPlayerCompensatedPos(playerid, x, y+newy, z, 1000);
	SendStaffCMDLog(playerid, "y");

	return 1;
}

Cmd:z(playerid, params[]) {

	if(!IsStaff(playerid, LEAD_ADMIN_RANK)) return NoPermsMsg(playerid);

	static Float:newz;
	static Float:x, Float:y, Float:z; GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "f", newz)) return UsageMsg(playerid, "/z [new z]");

	SetPlayerCompensatedPos(playerid, x, y, z+newz, 1000);
	SendStaffCMDLog(playerid, "z");

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
