
/*
	S A - M P   S E R V E R   R O L E P L A Y
	W I T H   O P E N . M P   B Y   G I A P P
*/

#define MEMORYSQUEEZE
#define PP_SYNTAX_AWAIT // ASYNC AWAIT
#define YSI_YES_HEAP_MALLOC // NO/YES HEAP MEMORY ALLOCATION

#define SERVER_NAME "San Andreas Playground: Roleplay"
#define SERVER_SNAME "SAP-RP.VN"
#define SERVER_WEBSITE "\"http://sap-rp.vn\""
#define SERVER_VERSION "SAP:RP v1.415"


/////////////////////////////////////////////////////////////////////////////////////////////////


#include <a_samp>
#undef MAX_PLAYERS
#define MAX_PLAYERS (100)
#include <memory> // Memory access
#include <sscanf> // sscanf 2
#include <strlib> // SA-MP string libraby
#include <a_sampdb> // SA-MP database
#include <a_zones> // SA-MP zones
#include <a_mysql> // SA-MP MySQL
#include <pwnraknet> // PAWN RakNet
#include <pwnplus> // PAWN plus
#include <pwncmd> // PAWN commands
#include <pp_mysql> // PAWN plus MySQL
#include <callbacks> // More callbacks
#include <sampvoice> // SA-MP voice
#include <ysf> // Y-Less server functions
#include <evf> // Extended vehicles functions
#include <streamer> // Streamer plugins
#include <streamerf> // Streamer more functions
#include <streamerfix> // CreateDynamicObject fix

#include <physics> // Physics
#include <mapandreas> // Map Andreas
#include <colandreas> // Collision

#include <cDialog> // Center text in dialog '\\c'
#include <eDialog> // Easy Dialog
#include <mDialog> // Preview Model Dialog
#include <playertd> // Player textdraw
#include <UmSelection> // Upgraded model selection
#include <notification> // Textdraw notification
#include <MenuStore> // Menu store texdraw
#include <progress2> // Progress bar
#include <progress3D> // Progress bar 3D

#include <chatbreaker> // Break long chat string
#include <humanize> // Format something
#include <nametag> // Set player nametag
#include <fader> // Fader

#include <mapfix> // Texture bug fixes
#include <stamina> // Player stamina

#include <gettime> // Simple gettime, getdate
#include <filelog> // Simple file log

#include <YSI_Data/y_iterate> // or YSI_Data/y_foreach (instead of foreach)
#include <YSI_Coding/y_va> // Variable arguments (va_args<>, va_format, va_start<3>)
#include <YSI_Coding/y_timers> // task, ptask, timer - (pause, resume, defer, repeat, stop)
#include <YSI_Coding/y_hooks> // hook, hook function, hook callback


/////////////////////////////////////////////////////////////////////////////////////////////////


#include "map_exteriors.pwn"
#include "map_interiors.pwn"	

#include "include/defines.pwn"
#include "include/variables.pwn"

main() {
	printf("[S] %s da khoi dong thanh cong", SERVER_NAME);
	printf("[S] Phien ban %s", SERVER_VERSION);
}

#include "include/callbacks.pwn"
#include "include/functions.pwn"

#include "include/core/timer.pwn"
#include "include/core/chat.pwn"
#include "include/core/damage.pwn"
#include "include/core/cmd.pwn"

#include "include/authentication.pwn"

#include "include/property/character/character.pwn"
#include "include/property/house/house.pwn"