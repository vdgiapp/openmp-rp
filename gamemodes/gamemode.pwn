

/*
	S A - M P   S E R V E R   R O L E P L A Y
	W I T H   O P E N . M P   B Y   G I A P P

	Pawn Dir: openmp-rp\pawno\pawncc.exe
	Pawn Options: -d1, -(, -;
*/


#define MEMORYSQUEEZE
#define PP_SYNTAX_AWAIT // ASYNC AWAIT
#define YSI_YES_HEAP_MALLOC // HEAP MEMORY ALLOCATION
#define CGEN_MEMORY	(150000)

#define SERVER_NAME "GTA Playground Vietnam"
#define SERVER_SNAME "GTAPG.VN"
#define SERVER_WEBSITE "\"http://gtapg.vn\""
#define SERVER_VERSION "RP v1.415"


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
#include <a_bcrypt> // SA-MP Bcrypt
#include <pwnraknet> // PAWN RakNet
#include <pwnplus> // PAWN plus
#include <pwncmd> // PAWN commands
#include <pwnregex> // PAWN Regex
#include <callbacks> // More callbacks
#include <sampvoice> // SA-MP voice

#include <YSI_Data\y_iterate> // or YSI_Data/y_foreach (instead of foreach)
#include <YSI_Coding\y_va> // Variable arguments (va_args<>, va_format, va_start<3>)
#include <YSI_Coding\y_timers> // task, ptask, timer - (pause, resume, defer, repeat, stop)
#include <YSI_Coding\y_inline> // inline const, using inline
#include <YSI_Extra\y_inline_mysql> // mysql inline (MySQL_TQueryInline, MySQL_PQueryInline)
#include <YSI_Extra\y_inline_bcrypt> // bcrypt inline
#include <YSI_Coding\y_hooks> // hook, hook function, hook callback

#include <open.mp> // YSF included in Open.MP
#include <modelsizes> // Modelsize use SQL
#include <mapfix> // Texture bug fixes
#include <physics> // Physics
#include <mapandreas> // Map Andreas
#include <colandreas> // Collision
#include <3dtryg> // 3DTryG
#include <evf> // Extended vehicles functions
#include <nvs> // Vehicle streamer
#include <streamer> // Streamer plugins
#include <streamerf> // Streamer more functions
#include <streamertp> // Streamer teleport
#include <streamerfix> // CreateDynamicObject fix

#include <cDialog> // Center text in dialog '\\c'
#include <eDialog> // Easy Dialog
#include <mDialog> // Preview Model Dialog
#include <pDialog> // Dialog page
#include <playertd> // Player textdraw
#include <UmSelection> // Upgraded model selection
#include <notification> // Textdraw notification
#include <InfoTD> // Info Textdraw
#include <MenuStore> // Menu store texdraw
#include <progress2> // Progress bar
#include <progress3D> // Progress bar 3D

#include <chatbreaker> // Break long chat string
#include <humanize> // Format something
#include <nametag> // Set player nametag
#include <fader> // Fader

#include <gmtime> // gettime, getdate by time zone
#include <filelog> // Simple file log

#include <cctv> // CCTV
#include <lights> // Lights controller
#include <walkstyles> // Player walking style


/////////////////////////////////////////////////////////////////////////////////////////////////


// Core
#include "include\core\macro.pwn"

main() {
	printf("%s da khoi dong thanh cong", SERVER_NAME);
	printf("Phien ban: %s", SERVER_VERSION);
}

#include "include\core\timer.pwn"
#include "include\core\callback.pwn"
#include "include\core\function.pwn"

/*
#include "map_exteriors.pwn"
#include "map_interiors.pwn"
*/

// Systems
#include "include\auth\auth_entry.pwn"

// Character
#include "include\character\character_entry.pwn"

// Property
#include "include\property\inventory\inv_entry.pwn"
#include "include\property\door\door_entry.pwn"
#include "include\property\house\house_entry.pwn"

#include "include\player\player_entry.pwn"

#include "include\staff\staff_entry.pwn"

#include "include\system\damage.pwn"

#include "include\misc\playerhud.pwn"
