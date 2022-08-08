
Cmd:aduty(playerid, params[]) {
	// test
	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	if(GetStaffID(playerid) == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	ToggleStaffDuty(playerid);

	SendStaffCMD(playerid, "aduty");
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

	MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da thay doi so objects toi da thanh %d", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], objects);

	SendStaffCMD(playerid, "streamer");

	return 1;
}

Cmd:nick(playerid, params[]) {

	if(!IsStaff(playerid, TRIAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static name[MAX_PLAYER_NAME+1], sid;
	sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	if(sscanf(params, "s[25]", name)) {
		if(isequal(PlayerName(playerid), StaffData[sid][Nick])) return SetPlayerName(playerid, CharacterData[playerid][Name]);
		if(isequal(PlayerName(playerid), CharacterData[playerid][Name])) return SetPlayerName(playerid, StaffData[sid][Nick]);
	}

	if(!isnull(StaffData[sid][Nick])) return ErrorMsg(playerid, "Ban chi co the dat nick cua ban mot lan duy nhat.");
	if(isnull(StaffData[sid][Nick])) {
		format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da dat nick thanh cong.", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick]);
	}

	SendStaffCMD(playerid, "nick");

	return 1;
}

Cmd:setnick(playerid, params[]) {

	if(!IsStaff(playerid, MANAGER_RANK)) return NoPermsMsg(playerid);

	static target, name[MAX_PLAYER_NAME+1], sid, sid2;

	if(sscanf(params, "us[25]", target, name)) return UsageMsg(playerid, "/setnick [id] [nick]");

	if(strfind(name, " ")) return ErrorMsg(playerid, "Da co loi xay ra."); 

	sid = GetStaffID(target);
	sid2 = GetStaffID(playerid);

	if(sid == -1 || sid2 == -1 || StaffData[sid2][Rank] < StaffData[sid][Rank]) return ErrorMsg(playerid, "Da co loi xay ra.");

	if(isequal(PlayerName(target), StaffData[sid][Nick])) {
		MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da thay doi nick cua %s thanh %s.", GetStaffRankName(StaffData[sid2][Rank]), StaffData[sid2][Nick], StaffData[sid][Nick], name);
		format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);
		return SetPlayerName(target, StaffData[sid][Nick]);
	}

	MsgToAdmin(COLOR_LIGHTRED, "STAFF > \"%s\" %s da thay doi nick cua %s thanh %s.", GetStaffRankName(StaffData[sid2][Rank]), StaffData[sid2][Nick], StaffData[sid][Nick], name);
	format(StaffData[sid][Nick], MAX_PLAYER_NAME+1, "%s", name);

	SendStaffCMD(playerid, "setnick");

	return 1;
}

Cmd:helpamount(playerid, params[]) {

	if(!IsStaff(playerid, HELPER_RANK)) return NoPermsMsg(playerid);

	static target, sid, sid2;

	if(sscanf(params, "u", target)) return UsageMsg(playerid, "/helpamount [id]");

	sid = GetStaffID(target);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	ClientMsg(playerid, COLOR_GREY, "So lan da help cua \"%s\" %s la %d", GetStaffRankName(StaffData[sid][Rank]), StaffData[sid][Nick], GetHelppedAmount(target));

	SendStaffCMD(playerid, "helpamount");

	return 1;
}

Cmd:god(playerid, params[]) {

	if(!IsStaff(playerid, OFFICAL_ADMIN_RANK)) return NoPermsMsg(playerid);

	static sid;
	sid = GetStaffID(playerid);

	if(sid == -1) return ErrorMsg(playerid, "Da co loi xay ra.");

	SendStaffCMD(playerid, "god");

}
/*
Cmd:makeadmin(playerid, params[]) {

	if(!IsStaff(playerid, MANAGER_RANK)) return NoPermsMsg(playerid);

	static

	return 1;
}
*/
