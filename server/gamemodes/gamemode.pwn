
#define MEMORYSQUEEZE
#define PP_SYNTAX_AWAIT // ASYNC AWAIT
#define YSI_NO_HEAP_MALLOC // NO HEAP MEMORY ALLOCATION

#define GM_VERSION "1.415.122"
#define SV_WEBSITE "\"http://none.vn\""

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
#include <playertd> // Player Textdraw
#include <eSelection>
#include <progress2>
#include <progress3D>
#include <chatbreaker>
#include <dialogcenter>
#include <humanize>
#include <nametag>
#include <fader>

#include <YSI_Data/y_iterate> // or YSI_Data/y_foreach (instead of foreach)
#include <YSI_Coding/y_va> // Variable arguments (va_args<>, va_format, va_start<3>)
#include <YSI_Coding/y_timers> // task, ptask, timer - (pause, resume, defer, repeat, stop)
#include <YSI_Coding/y_hooks> // hook, hook function, hook callback

#include "include/main0.pwn"
main ( ) { }
#include "include/main1.pwn"

#include "include/authentication.pwn"