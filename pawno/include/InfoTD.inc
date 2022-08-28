/*
    Info Textdraw
    Created by Giapp
*/

#if defined _INC_INFO_TEXTDRAW_
    #endinput
#endif
#define _INC_INFO_TEXTDRAW_

#if !defined _INC_TEXTDRAW_STRING_WIDTH_
	#tryinclude <tdstrwidth>
#endif

// Defines

#if !defined INFO_TEXTDRAW@_TEST__
    #define INFO_TEXTDRAW@_TEST__%0(%1) forward%0(%1);public%0(%1)
#endif

#if !defined InfoTD_Show
    #define InfoTD_Show(%1) INFO_TEXTDRAW@_SHOW_(%1)
#endif

#define MAX_INFO_TEXTDRAW           (20)
#define MAX_VISIBLE_INFO_TEXTDRAW   (5)
#define MAX_INFO_TEXTDRAW_STR       (800)
#define INFO_TEXTDRAW_DISTANCE      (5)

// Modes
#define INFO_TEXTDRAW_MODE_DOWN     (0)
#define INFO_TEXTDRAW_MODE_UP       (1)
#define INFO_TEXTDRAW_MODE_RIGHT    (2)
#define INFO_TEXTDRAW_MODE_LEFT     (3)

// Types
#define INFO_TEXTDRAW_TYPE_MSG      (0)
#define INFO_TEXTDRAW_TYPE_CASH     (1)

enum INFO_TEXTDRAW@_ENUM__
{
    QUEUE,
    VISIBLE,
    VISIBLE_TIME,
    LINE,
    TIMER,
    STRING[MAX_INFO_TEXTDRAW_STR],
    PlayerText:TD,
    Float:MIN_POS_X,
    Float:MIN_POS_Y,
    Float:MAX_POS_X,
    Float:MAX_POS_Y
}
new INFO_TEXTDRAW@__[MAX_PLAYERS][MAX_INFO_TEXTDRAW][INFO_TEXTDRAW@_ENUM__];
new INFO_TEXTDRAW@_COUNTER__[MAX_PLAYERS];

INFO_TEXTDRAW@_TEST__ INFO_TEXTDRAW@_SHOW_(playerid, mode, type, time, const string[])
{
    /*
    for(new cycle; cycle < MAX_TDN; cycle++)
    {
        if(!TextDrawsNotification[playerid][cycle][Use])
        {
            TextDrawsNotification[playerid][cycle][Text][0] = EOS;

            new text[MAX_TDN_TEXT];

            for(new len = strlen(reason), pos; pos < len; pos ++)
            {
                switch(reason[pos])
                {
                    case '`': text[pos] = 177;
                    case '&': text[pos] = 38;
                    default:  text[pos] = reason[pos];
                }
            }

            strcat(TextDrawsNotification[playerid][cycle][Text], text, MAX_TDN_TEXT);

            TextDrawsNotification[playerid][cycle][Use] = 1;

            LinesTDN(playerid, cycle);

            #if defined TDN_MODE_DOWN

            MinPosYTDN(playerid, cycle);
            MaxPosYTDN(playerid, cycle);

            #endif

            #if defined TDN_MODE_UP

            MaxPosYTDN(playerid, cycle);
            MinPosYTDN(playerid, cycle);

            #endif

            TextDrawsNotification[playerid][cycle][Hide] = -1;

            CreateTDN(playerid, cycle);

            SetTimerEx("TimerHideTDN", TDN_TIME, false, "i", playerid);

            return 1;
        }
    }
    */
    return -1;
}

/* Hook example
#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif

#define OnPlayerDisconnect TDN_OnPlayerDisconnect
#if defined TDN_OnPlayerDisconnect
	forward TDN_OnPlayerDisconnect(playerid, reason);
#endif
*/
