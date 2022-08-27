
ProxDetector(const string[], Float:radi, playerid, col1, col2, col3, col4, col5) {
    if(IsPlayerInGame(playerid)) {
        static Float:posx, Float:posy, Float:posz;
        static Float:oldposx, Float:oldposy, Float:oldposz;
        static Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
        foreach(new i : Player) {
            if(IsPlayerInGame(i)) {
                if(!GetPVarInt(playerid, #BigEar)) {
                    GetPlayerPos(i, posx, posy, posz);
                    tempposx = (oldposx -posx);
                    tempposy = (oldposy -posy);
                    tempposz = (oldposz -posz);
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) {
                        if((GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid)) && 
                        	(GetPlayerInterior(i) == GetPlayerInterior(playerid))) ClientMsg(i, col5, string);
                    }
                }
                else ClientMsg(i, col1, string);
            }
        }
    }
}
