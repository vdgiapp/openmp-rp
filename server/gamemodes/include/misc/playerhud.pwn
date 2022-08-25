
#include <YSI_Coding\y_hooks>

new Text:HUD_VehBG;
new PlayerText:HUD_HungerBG[MAX_PLAYERS];
new PlayerText:HUD_Hunger[MAX_PLAYERS];
new PlayerText:HUD_ThirstBG[MAX_PLAYERS];
new PlayerText:HUD_Thirst[MAX_PLAYERS];
new PlayerText:HUD_StaminaBG[MAX_PLAYERS];
new PlayerText:HUD_Stamina[MAX_PLAYERS];
new PlayerText:HUD_VehName[MAX_PLAYERS];
new PlayerText:HUD_VehFuel[MAX_PLAYERS];
new PlayerText:HUD_VehBattery[MAX_PLAYERS];
new PlayerText:HUD_VehSpeed[MAX_PLAYERS];
new PlayerText:HUD_Zone[MAX_PLAYERS];
new PlayerText:HUD_Level[MAX_PLAYERS];
new PlayerText:HUD_WatchTime[MAX_PLAYERS];
new PlayerText:AnnounceMessage[MAX_PLAYERS];

hook OnGameModeInit() {
	HUD_VehBG = TextDrawCreate(513.000000, 419.000000, "_");
	TextDrawFont(HUD_VehBG, 1);
	TextDrawLetterSize(HUD_VehBG, 0.808332, 2.049997);
	TextDrawTextSize(HUD_VehBG, 400.000000, 100.000000);
	TextDrawSetOutline(HUD_VehBG, 1);
	TextDrawSetShadow(HUD_VehBG, 0);
	TextDrawAlignment(HUD_VehBG, 2);
	TextDrawColor(HUD_VehBG, -1);
	TextDrawBackgroundColor(HUD_VehBG, 255);
	TextDrawBoxColor(HUD_VehBG, 150);
	TextDrawUseBox(HUD_VehBG, 1);
	TextDrawSetProportional(HUD_VehBG, 1);
	TextDrawSetSelectable(HUD_VehBG, 0);
	return 1;
}

hook OnGameModeExit() {
	TextDrawDestroy(HUD_VehBG);
	return 1;
}

hook OnPlayerConnect(playerid) {
	HUD_HungerBG[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 416.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_HungerBG[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_HungerBG[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_HungerBG[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_HungerBG[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_HungerBG[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_HungerBG[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_HungerBG[playerid], 1296911871);
	PlayerTextDrawBackgroundColor(playerid, HUD_HungerBG[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_HungerBG[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_HungerBG[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_HungerBG[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_HungerBG[playerid], 0);

	HUD_Hunger[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 416.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_Hunger[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_Hunger[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_Hunger[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_Hunger[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_Hunger[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_Hunger[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_Hunger[playerid], -174898433);
	PlayerTextDrawBackgroundColor(playerid, HUD_Hunger[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_Hunger[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_Hunger[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_Hunger[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_Hunger[playerid], 0);

	HUD_ThirstBG[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 423.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_ThirstBG[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_ThirstBG[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_ThirstBG[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_ThirstBG[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_ThirstBG[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_ThirstBG[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_ThirstBG[playerid], 1296911871);
	PlayerTextDrawBackgroundColor(playerid, HUD_ThirstBG[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_ThirstBG[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_ThirstBG[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_ThirstBG[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_ThirstBG[playerid], 0);

	HUD_Thirst[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 423.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_Thirst[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_Thirst[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_Thirst[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_Thirst[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_Thirst[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_Thirst[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_Thirst[playerid], -2016478465);
	PlayerTextDrawBackgroundColor(playerid, HUD_Thirst[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_Thirst[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_Thirst[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_Thirst[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_Thirst[playerid], 0);

	HUD_StaminaBG[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 430.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_StaminaBG[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_StaminaBG[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_StaminaBG[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_StaminaBG[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_StaminaBG[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_StaminaBG[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_StaminaBG[playerid], 1296911871);
	PlayerTextDrawBackgroundColor(playerid, HUD_StaminaBG[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_StaminaBG[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_StaminaBG[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_StaminaBG[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_StaminaBG[playerid], 0);

	HUD_Stamina[playerid] = CreatePlayerTextDraw(playerid, 575.000000, 430.000000, "llllllllllllllllllll");
	PlayerTextDrawFont(playerid, HUD_Stamina[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_Stamina[playerid], 0.275000, 1.049998);
	PlayerTextDrawTextSize(playerid, HUD_Stamina[playerid], 635.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_Stamina[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_Stamina[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_Stamina[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_Stamina[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_Stamina[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_Stamina[playerid], 0);
	PlayerTextDrawUseBox(playerid, HUD_Stamina[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_Stamina[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_Stamina[playerid], 0);

	HUD_VehName[playerid] = CreatePlayerTextDraw(playerid, 513.000000, 410.000000, "Bloodring Banger");
	PlayerTextDrawFont(playerid, HUD_VehName[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_VehName[playerid], 0.220833, 1.200000);
	PlayerTextDrawTextSize(playerid, HUD_VehName[playerid], 400.000000, 100.000000);
	PlayerTextDrawSetOutline(playerid, HUD_VehName[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_VehName[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_VehName[playerid], 2);
	PlayerTextDrawColor(playerid, HUD_VehName[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_VehName[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_VehName[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_VehName[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_VehName[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_VehName[playerid], 0);

	HUD_VehFuel[playerid] = CreatePlayerTextDraw(playerid, 470.000000, 424.000000, "100");
	PlayerTextDrawFont(playerid, HUD_VehFuel[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_VehFuel[playerid], 0.220833, 1.000000);
	PlayerTextDrawTextSize(playerid, HUD_VehFuel[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_VehFuel[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_VehFuel[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_VehFuel[playerid], 1);
	PlayerTextDrawColor(playerid, HUD_VehFuel[playerid], -342936321);
	PlayerTextDrawBackgroundColor(playerid, HUD_VehFuel[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_VehFuel[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_VehFuel[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_VehFuel[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_VehFuel[playerid], 0);

	HUD_VehBattery[playerid] = CreatePlayerTextDraw(playerid, 513.000000, 424.000000, "100");
	PlayerTextDrawFont(playerid, HUD_VehBattery[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_VehBattery[playerid], 0.220833, 1.000000);
	PlayerTextDrawTextSize(playerid, HUD_VehBattery[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_VehBattery[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_VehBattery[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_VehBattery[playerid], 2);
	PlayerTextDrawColor(playerid, HUD_VehBattery[playerid], -2016478465);
	PlayerTextDrawBackgroundColor(playerid, HUD_VehBattery[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_VehBattery[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_VehBattery[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_VehBattery[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_VehBattery[playerid], 0);

	HUD_VehSpeed[playerid] = CreatePlayerTextDraw(playerid, 557.000000, 424.000000, "100");
	PlayerTextDrawFont(playerid, HUD_VehSpeed[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_VehSpeed[playerid], 0.220833, 1.000000);
	PlayerTextDrawTextSize(playerid, HUD_VehSpeed[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_VehSpeed[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_VehSpeed[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_VehSpeed[playerid], 3);
	PlayerTextDrawColor(playerid, HUD_VehSpeed[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_VehSpeed[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_VehSpeed[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_VehSpeed[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_VehSpeed[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_VehSpeed[playerid], 0);

	HUD_Zone[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 430.000000, "Palomino Creek");
	PlayerTextDrawFont(playerid, HUD_Zone[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_Zone[playerid], 0.270832, 1.500000);
	PlayerTextDrawTextSize(playerid, HUD_Zone[playerid], 400.000000, 640.000000);
	PlayerTextDrawSetOutline(playerid, HUD_Zone[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_Zone[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_Zone[playerid], 2);
	PlayerTextDrawColor(playerid, HUD_Zone[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_Zone[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_Zone[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_Zone[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_Zone[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_Zone[playerid], 0);

	HUD_Level[playerid] = CreatePlayerTextDraw(playerid, 629.000000, 404.000000, "Lv.0");
	PlayerTextDrawFont(playerid, HUD_Level[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUD_Level[playerid], 0.219999, 1.200000);
	PlayerTextDrawTextSize(playerid, HUD_Level[playerid], 400.000000, 100.000000);
	PlayerTextDrawSetOutline(playerid, HUD_Level[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUD_Level[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_Level[playerid], 3);
	PlayerTextDrawColor(playerid, HUD_Level[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_Level[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_Level[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_Level[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_Level[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_Level[playerid], 0);

	HUD_WatchTime[playerid] = CreatePlayerTextDraw(playerid, 578.000000, 22.000000, "00:00");
	PlayerTextDrawFont(playerid, HUD_WatchTime[playerid], 3);
	PlayerTextDrawLetterSize(playerid, HUD_WatchTime[playerid], 0.554166, 2.449999);
	PlayerTextDrawTextSize(playerid, HUD_WatchTime[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUD_WatchTime[playerid], 2);
	PlayerTextDrawSetShadow(playerid, HUD_WatchTime[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUD_WatchTime[playerid], 2);
	PlayerTextDrawColor(playerid, HUD_WatchTime[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUD_WatchTime[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUD_WatchTime[playerid], 50);
	PlayerTextDrawUseBox(playerid, HUD_WatchTime[playerid], 0);
	PlayerTextDrawSetProportional(playerid, HUD_WatchTime[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUD_WatchTime[playerid], 0);

	AnnounceMessage[playerid] = CreatePlayerTextDraw(playerid, 23.000000, 210.000000, "_");
	PlayerTextDrawFont(playerid, AnnounceMessage[playerid], 1);
	PlayerTextDrawLetterSize(playerid, AnnounceMessage[playerid], 0.262499, 1.399999);
	PlayerTextDrawTextSize(playerid, AnnounceMessage[playerid], 142.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, AnnounceMessage[playerid], 0);
	PlayerTextDrawSetShadow(playerid, AnnounceMessage[playerid], 0);
	PlayerTextDrawAlignment(playerid, AnnounceMessage[playerid], 1);
	PlayerTextDrawColor(playerid, AnnounceMessage[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, AnnounceMessage[playerid], 255);
	PlayerTextDrawBoxColor(playerid, AnnounceMessage[playerid], 200);
	PlayerTextDrawUseBox(playerid, AnnounceMessage[playerid], 1);
	PlayerTextDrawSetProportional(playerid, AnnounceMessage[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, AnnounceMessage[playerid], 0);

	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	PlayerTextDrawDestroy(playerid, HUD_HungerBG[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_Hunger[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_ThirstBG[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_Thirst[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_StaminaBG[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_Stamina[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_VehName[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_VehFuel[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_VehBattery[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_VehSpeed[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_Zone[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_Level[playerid]);
	PlayerTextDrawDestroy(playerid, HUD_WatchTime[playerid]);
	PlayerTextDrawDestroy(playerid, AnnounceMessage[playerid]);
	return 1;
}

hook OnPlayerUpdate(playerid) {

	static str[128];

	if(IsPlayerInGame(playerid)) {

		ChangePlayerStatusBar(playerid, HUD_Hunger[playerid], CharacterData[playerid][Hunger], MAX_PLAYER_HUNGER);
		ChangePlayerStatusBar(playerid, HUD_Thirst[playerid], CharacterData[playerid][Thirst], MAX_PLAYER_THIRST);
		ChangePlayerStatusBar(playerid, HUD_Stamina[playerid], CharacterData[playerid][Stamina], MAX_PLAYER_STAMINA);

		if(IsPlayerInAnyVehicle(playerid)) {
			format(str, sizeof str, "%d", floatround(EVF::GetVehicleSpeed(GetPlayerVehicleID(playerid))));
			PlayerTextDrawSetString(playerid, HUD_VehName[playerid], GetVehicleName(GetPlayerVehicleID(playerid)));
			PlayerTextDrawSetString(playerid, HUD_VehSpeed[playerid], str);
		}

		static level, exp;
		sscanf(CharacterData[playerid][Level], "ii", level, exp);
		format(str, sizeof str, "Lv.%d", level);
		PlayerTextDrawSetString(playerid, HUD_Level[playerid], str);

		static hour, minute, second;
		gettime(hour, minute, second);
		#pragma unused second
		format(str, sizeof str, "%02d:%02d", hour, minute);
		PlayerTextDrawSetString(playerid, HUD_WatchTime[playerid], str);

		new hid = -1, str[MAX_MAP_ZONE_NAME];
		if((hid = House_Nearest(playerid)) != -1) {
			GetMapZoneName(GetMapZoneAtPoint(HouseData[hid][ExteriorX], HouseData[hid][ExteriorY], HouseData[hid][ExteriorZ]), str);
			format(str, sizeof str, "Nha so %d, %s", hid, str);
			PlayerTextDrawSetString(playerid, HUD_Zone[playerid], str);
		}
		else PlayerTextDrawSetString(playerid, HUD_Zone[playerid], GetPlayerZone(playerid));

		if(Inventory_HasItem(playerid, 20, 1) != -1) PlayerTextDrawShow(playerid, HUD_Zone[playerid]);
		if(Inventory_HasItem(playerid, 20, 1) == -1) PlayerTextDrawHide(playerid, HUD_Zone[playerid]);
		if(Inventory_HasItem(playerid, 21, 1) != -1) PlayerTextDrawShow(playerid, HUD_WatchTime[playerid]);
		if(Inventory_HasItem(playerid, 21, 1) == -1) PlayerTextDrawHide(playerid, HUD_WatchTime[playerid]);
	}
	return 1;
}

ShowPlayerHUD(playerid) {
	PlayerTextDrawShow(playerid, HUD_HungerBG[playerid]);
	PlayerTextDrawShow(playerid, HUD_Hunger[playerid]);
	PlayerTextDrawShow(playerid, HUD_ThirstBG[playerid]);
	PlayerTextDrawShow(playerid, HUD_Thirst[playerid]);
	PlayerTextDrawShow(playerid, HUD_StaminaBG[playerid]);
	PlayerTextDrawShow(playerid, HUD_Stamina[playerid]);
	PlayerTextDrawShow(playerid, HUD_Level[playerid]);
	/*
	PlayerTextDrawShow(playerid, HUD_VehName[playerid]);
	PlayerTextDrawShow(playerid, HUD_VehFuel[playerid]);
	PlayerTextDrawShow(playerid, HUD_VehBattery[playerid]);
	PlayerTextDrawShow(playerid, HUD_VehSpeed[playerid]);
	PlayerTextDrawShow(playerid, AnnounceMessage[playerid]);
	*/
}

static ChangePlayerStatusBar(playerid, PlayerText:playertd, Float:var, Float:max_var) {
	static Float:max_var_5p;
	max_var_5p = max_var/20;
	if(var <= 0) 									PlayerTextDrawSetString(playerid, playertd, "");
	if(1 <= var <= max_var_5p*1) 					PlayerTextDrawSetString(playerid, playertd, "l");
	if(max_var_5p+1 <= var <= max_var_5p*2) 		PlayerTextDrawSetString(playerid, playertd, "ll");
	if((max_var_5p*2)+1 <= var <= max_var_5p*3) 	PlayerTextDrawSetString(playerid, playertd, "lll");
	if((max_var_5p*3)+1 <= var <= max_var_5p*4) 	PlayerTextDrawSetString(playerid, playertd, "llll");
	if((max_var_5p*4)+1 <= var <= max_var_5p*5) 	PlayerTextDrawSetString(playerid, playertd, "lllll");
	if((max_var_5p*5)+1 <= var <= max_var_5p*6) 	PlayerTextDrawSetString(playerid, playertd, "llllll");
	if((max_var_5p*6)+1 <= var <= max_var_5p*7) 	PlayerTextDrawSetString(playerid, playertd, "lllllll");
	if((max_var_5p*7)+1 <= var <= max_var_5p*8) 	PlayerTextDrawSetString(playerid, playertd, "llllllll");
	if((max_var_5p*8)+1 <= var <= max_var_5p*9) 	PlayerTextDrawSetString(playerid, playertd, "lllllllll");
	if((max_var_5p*9)+1 <= var <= max_var_5p*10) 	PlayerTextDrawSetString(playerid, playertd, "llllllllll");
	if((max_var_5p*10)+1 <= var <= max_var_5p*11) 	PlayerTextDrawSetString(playerid, playertd, "lllllllllll");
	if((max_var_5p*11)+1 <= var <= max_var_5p*12) 	PlayerTextDrawSetString(playerid, playertd, "llllllllllll");
	if((max_var_5p*12)+1 <= var <= max_var_5p*13) 	PlayerTextDrawSetString(playerid, playertd, "lllllllllllll");
	if((max_var_5p*13)+1 <= var <= max_var_5p*14) 	PlayerTextDrawSetString(playerid, playertd, "llllllllllllll");
	if((max_var_5p*14)+1 <= var <= max_var_5p*15) 	PlayerTextDrawSetString(playerid, playertd, "lllllllllllllll");
	if((max_var_5p*15)+1 <= var <= max_var_5p*16) 	PlayerTextDrawSetString(playerid, playertd, "llllllllllllllll");
	if((max_var_5p*16)+1 <= var <= max_var_5p*17) 	PlayerTextDrawSetString(playerid, playertd, "lllllllllllllllll");
	if((max_var_5p*17)+1 <= var <= max_var_5p*18) 	PlayerTextDrawSetString(playerid, playertd, "llllllllllllllllll");
	if((max_var_5p*18)+1 <= var <= max_var_5p*19) 	PlayerTextDrawSetString(playerid, playertd, "lllllllllllllllllll");
	if((max_var_5p*19)+1 <= var <= max_var_5p*20) 	PlayerTextDrawSetString(playerid, playertd, "llllllllllllllllllll");
}
