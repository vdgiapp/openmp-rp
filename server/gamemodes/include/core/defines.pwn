
#include <YSI_Coding\y_hooks>

// +-+-+-+-+- MAIN DEFINES +-+-+-+-+-
#define function%0(%1) 			forward%0(%1); public%0(%1)
#define ClientMsg 				SendClientMessagef
#define ServerMsg 				SendClientMessageToAllf

// +-+-+-+-+- DIALOG STYLES +-+-+-+-+-
#define DS_LIST 				DIALOG_STYLE_LIST
#define DS_TABLIST 				DIALOG_STYLE_TABLIST
#define DS_HEADERS 				DIALOG_STYLE_TABLIST_HEADERS
#define DS_MSGBOX 				DIALOG_STYLE_MSGBOX
#define DS_INPUT 				DIALOG_STYLE_INPUT
#define DS_PASS 				DIALOG_STYLE_PASSWORD
#define DS_MODEL				DIALOG_STYLE_PREVIEW_MODEL

// +-+-+-+-+- COLORS +-+-+-+-+-
#define COL_WHITE 				"{FFFFFF}"
#define COL_RED 				"{F81414}"
#define COL_LIGHTRED			"{FF6347}"
#define COL_GREEN 				"{33CC33}"
#define COL_GREEN2 				"{29B32E}"
#define COL_GREEN3 				"{6FA828}"
#define COL_LIGHTBLUE 			"{00CED1}"
#define COL_YELLOW 				"{FFFF00}"
#define COL_YELLOW2				"{FFF982}"
#define COL_ORANGE 				"{E68C0E}"
#define COL_BLUE 				"{39AACC}"
#define COL_AQUA				"{039DFC}"
#define COL_RED2 				"{FF0000}"
#define COL_GREY 				"{AFAFAF}"//"{7D8584}"
#define COL_BROWN 				"{6B3F34}"

#define COLOR_DIST1 	   		(0xE6E6E6E6)
#define COLOR_DIST2		   		(0xC8C8C8C8)
#define COLOR_DIST3		   		(0xAAAAAAAA)
#define COLOR_DIST4		   		(0x8C8C8C8C)
#define COLOR_DIST5 	   		(0x6E6E6E6E)

#define COLOR_CLIENT       		(0xAAC4E5FF)
#define COLOR_GRAD6 	   		(0xF0F0F0FF)
#define COLOR_WHITE		   		(0xFFFFFFFF)
#define COLOR_YELLOW       		(0xFFFF00FF)
#define COLOR_YELLOW2 	   		(0xF5DEB3AA)
#define COLOR_LIGHTYELLOW  		(0xF5DEB3FF)
#define COLOR_LIGHTYELLOW2 		(0xE0EA64AA)
#define COLOR_LIGHTYELLOW3 		(0xFF6347AA)
#define COLOR_GOLD 		   		(0xF6C861AA)
#define COLOR_GREY         		(0xAFAFAFFF)
#define COLOR_RED          		(0xFF0000FF)
#define COLOR_DARKRED 	   		(0xCD000000)
#define COLOR_LIGHTRED 	   		(0xFF6347AA)
#define COLOR_GREEN        		(0x33CC33FF)
#define COLOR_LIGHTGREEN   		(0x9ACD32AA)
#define COLOR_LIME         		(0x00FF00FF)
#define COLOR_BLUE         		(0x2641FEFF)
#define COLOR_CYAN         		(0x33CCFFFF)
#define COLOR_LIGHTBLUE    		(0x33CCFFAA)
#define COLOR_LIGHTBLUE2   		(0x007FFFFF)
#define COLOR_MEDIUMBLUE   		(0x1ED5C7FF)
#define COLOR_DARKBLUE     		(0x1394BFFF)
#define COLOR_ORANGE       		(0xFFA500FF)
#define COLOR_LIGHTORANGE  		(0xFF8000FF)
#define COLOR_PURPLE       		(0xD0AEEBFF)
#define COLOR_DARKPURPLE   		(0x5F56F8AA)
#define COLOR_DARKBROWN    		(0xB36C42FF)
#define COLOR_HOSPITAL     		(0xFF8282FF)
#define COLOR_FACTION      		(0xBDF38BFF)
#define COLOR_RADIO        		(0x8D8DFFFF)
#define COLOR_SERVER       		(0xFFFF90FF) // 6688FF
#define COLOR_DEPARTMENT   		(0xF0CC00FF)
#define COLOR_ADMINCHAT    		(0x33EE33FF)

// +-+-+-+-+- CONFIGS +-+-+-+-+-
new MySQL:Database;
#define host_mysql 				"localhost"
#define user_mysql 				"root"
#define pass_mysql 				""
#define dbase_mysql 			"sa-mp"

#define NAMETAG_DISTANCE		(20)

// +-+-+-+-+- LOG FILES +-+-+-+-+-
#define AUTH_LOG_FILE 			"logs/auth.log"

// +-+-+-+-+- UMSELECTION LISTS +-+-+-+-+-
#define MALE_SKIN_LIST 			"lists/male_skins_list.txt"
#define FEMALE_SKIN_LIST		"lists/female_skins_list.txt"