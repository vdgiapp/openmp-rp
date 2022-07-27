
/*
	S A - M P   S E R V E R   
	W I T H   O P E N . M P   B Y   G I A P P
*/

/*
DEFINE_HOOK_REPLACEMENT__(Checkpoint, CP );
DEFINE_HOOK_REPLACEMENT__(Collisions, Col);
DEFINE_HOOK_REPLACEMENT__(Container , Cnt);
DEFINE_HOOK_REPLACEMENT__(Inventory , Inv);
DEFINE_HOOK_REPLACEMENT__(TextDraw  , TD );
DEFINE_HOOK_REPLACEMENT__(Command   , Cmd);
DEFINE_HOOK_REPLACEMENT__(Dynamic   , Dyn);
DEFINE_HOOK_REPLACEMENT__(Action    , Act);
DEFINE_HOOK_REPLACEMENT__(Object    , Obj);
DEFINE_HOOK_REPLACEMENT__(Update    , Upd);
*/

#define MEMORYSQUEEZE
#define PP_SYNTAX_AWAIT // ASYNC AWAIT
#define YSI_NO_HEAP_MALLOC // NO HEAP MEMORY ALLOCATION

#define SERVER_NAME "No name"
#define SERVER_WEBSITE "\"http://none.vn\""
#define SERVER_VERSION "NONAME 1.415.122"

#include <a_samp>
#undef MAX_PLAYERS
#define MAX_PLAYERS (50)
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
#include <cDialog> // Center text in dialog '\\c'
#include <eDialog> // Easy Dialog
#include <mDialog> // Preview Model Dialog
#include <playertd> // Player textdraw
#include <eSelection> // Selection menu
#include <notification> // Textdraw notification
#include <MenuStore> // Menu store texdraw
#include <progress2> // Progress bar
#include <progress3D> // Progress bar 3D
#include <chatbreaker> // Break long chat string
#include <humanize> // Format something
#include <nametag> // Set player nametag
#include <fader> // Fader

#include <stamina> // Player stamina

#include <YSI_Data/y_iterate> // or YSI_Data/y_foreach (instead of foreach)
#include <YSI_Coding/y_va> // Variable arguments (va_args<>, va_format, va_start<3>)
#include <YSI_Coding/y_timers> // task, ptask, timer - (pause, resume, defer, repeat, stop)
#include <YSI_Coding/y_hooks> // hook, hook function, hook callback

#include "include/main0.pwn" // Load trước main()
main() {
	printf("[S] %s da khoi dong thanh cong", SERVER_NAME);
	printf("[S] Phien ban %s", SERVER_VERSION);
}
#include "include/main1.pwn" // Load sau main()

#include "include/core/timer.pwn"
#include "include/core/chat.pwn"
#include "include/core/damage.pwn"
#include "include/core/cmd.pwn"

#include "include/authentication.pwn"

#include "include/property/character/character.pwn"
#include "include/property/house/house.pwn"