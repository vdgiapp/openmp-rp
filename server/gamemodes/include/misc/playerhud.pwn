
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
		switch(CharacterData[playerid][Hunger]) {
			case 0: 		PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "");
			case 1..50: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "l");
			case 51..100: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "ll");
			case 101..150: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lll");
			case 151..200: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llll");
			case 201..250: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllll");
			case 251..300: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllll");
			case 301..350: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllll");
			case 351..400: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllll");
			case 401..450: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllll");
			case 451..500: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllll");
			case 501..550: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllllll");
			case 551..600: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllllll");
			case 601..650: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllllllll");
			case 651..700: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllllllll");
			case 701..750: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllllllllll");
			case 751..800: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllllllllll");
			case 801..850: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllllllllllll");
			case 851..900: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllllllllllll");
			case 901..950: 	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "lllllllllllllllllll");
			case 951..1000:	PlayerTextDrawSetString(playerid, HUD_Hunger[playerid], "llllllllllllllllllll");
		}

		switch(CharacterData[playerid][Thirst]) {
			case 0: 		PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "");
			case 1..50: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "l");
			case 51..100: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "ll");
			case 101..150: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lll");
			case 151..200: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llll");
			case 201..250: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllll");
			case 251..300: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllll");
			case 301..350: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllll");
			case 351..400: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllll");
			case 401..450: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllll");
			case 451..500: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllll");
			case 501..550: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllllll");
			case 551..600: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllllll");
			case 601..650: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllllllll");
			case 651..700: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllllllll");
			case 701..750: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllllllllll");
			case 751..800: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllllllllll");
			case 801..850: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllllllllllll");
			case 851..900: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllllllllllll");
			case 901..950: 	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "lllllllllllllllllll");
			case 951..1000:	PlayerTextDrawSetString(playerid, HUD_Thirst[playerid], "llllllllllllllllllll");
		}

		static maxsta5pt, stamina;
		maxsta5pt = floatround(1000/20);
		stamina = CharacterData[playerid][Stamina];
		if(stamina <= 0) 									PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "");
		if(1 <= stamina <= maxsta5pt*1) 					PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "l");
		if(maxsta5pt+1 <= stamina <= maxsta5pt*2) 			PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "ll");
		if((maxsta5pt*2)+1 <= stamina <= maxsta5pt*3) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lll");
		if((maxsta5pt*3)+1 <= stamina <= maxsta5pt*4) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llll");
		if((maxsta5pt*4)+1 <= stamina <= maxsta5pt*5) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllll");
		if((maxsta5pt*5)+1 <= stamina <= maxsta5pt*6) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllll");
		if((maxsta5pt*6)+1 <= stamina <= maxsta5pt*7) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllll");
		if((maxsta5pt*7)+1 <= stamina <= maxsta5pt*8) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllll");
		if((maxsta5pt*8)+1 <= stamina <= maxsta5pt*9) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllll");
		if((maxsta5pt*9)+1 <= stamina <= maxsta5pt*10) 		PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllll");
		if((maxsta5pt*10)+1 <= stamina <= maxsta5pt*11) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllllll");
		if((maxsta5pt*11)+1 <= stamina <= maxsta5pt*12) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllllll");
		if((maxsta5pt*12)+1 <= stamina <= maxsta5pt*13) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllllllll");
		if((maxsta5pt*13)+1 <= stamina <= maxsta5pt*14) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllllllll");
		if((maxsta5pt*14)+1 <= stamina <= maxsta5pt*15) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllllllllll");
		if((maxsta5pt*15)+1 <= stamina <= maxsta5pt*16) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllllllllll");
		if((maxsta5pt*16)+1 <= stamina <= maxsta5pt*17) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllllllllllll");
		if((maxsta5pt*17)+1 <= stamina <= maxsta5pt*18) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllllllllllll");
		if((maxsta5pt*18)+1 <= stamina <= maxsta5pt*19) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "lllllllllllllllllll");
		if((maxsta5pt*19)+1 <= stamina <= maxsta5pt*20) 	PlayerTextDrawSetString(playerid, HUD_Stamina[playerid], "llllllllllllllllllll");

		if(IsPlayerInAnyVehicle(playerid)) {
			static vehid; vehid = GetPlayerVehicleID(playerid);
			PlayerTextDrawSetString(playerid, HUD_VehName[playerid], GetVehicleName(vehid));

			format(str, sizeof str, "%d", floatround(EVF::GetVehicleSpeed(vehid)));
			PlayerTextDrawSetString(playerid, HUD_VehSpeed[playerid], str);
		}

		PlayerTextDrawSetString(playerid, HUD_Zone[playerid], GetPlayerZone(playerid));

		static level, exp;
		sscanf(CharacterData[playerid][Level], "ii", level, exp);
		format(str, sizeof str, "Lv.%d", level);
		PlayerTextDrawSetString(playerid, HUD_Level[playerid], str);
		
		static hour, minute, second;
		gettime(hour, minute, second);
		#pragma unused second
		format(str, sizeof str, "%02d:%02d", hour, minute);
		PlayerTextDrawSetString(playerid, HUD_WatchTime[playerid], str);
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
	PlayerTextDrawShow(playerid, HUD_Zone[playerid]);
	PlayerTextDrawShow(playerid, HUD_WatchTime[playerid]);
	PlayerTextDrawShow(playerid, AnnounceMessage[playerid]);
	*/
}