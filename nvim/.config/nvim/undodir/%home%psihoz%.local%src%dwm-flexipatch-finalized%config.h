Vim�UnDo� �}	ܪ�n����WV�i�j*�%�s���t�             ,                       a �B    _�                     1   3    ����                                                                                                                                                                                                                                                                                                                                                             `�/�    �   0   2        Mstatic char selbordercolor[]             = "#4c3f64" ; // WIndow border color5��    0   -                 �
                    �    0   -                 �
                    �    0   -                 �
                    �    0   -                 �
                    5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             `�0    �      	        Mstatic const unsigned int borderpx       = 2;   /* border pixel of windows */5��       +                                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a �A     �                 9/* See LICENSE file for copyright and license details. */   // Constants   #define TERM "st"   a/* This defines the name of the executable that handles the bar (used for signalling purposes) */   #define STATUSBAR "dwmblocks"       /* appearance */   Mstatic const unsigned int borderpx       = 3;   /* border pixel of windows */   @static const unsigned int snap           = 32;  /* snap pixel */   astatic const int swallowfloating         = 1;   /* 1 means swallow floating windows by default */   Tstatic const unsigned int gappih         = 5;  /* horiz inner gap between windows */   Sstatic const unsigned int gappiv         = 5;  /* vert inner gap between windows */   dstatic const unsigned int gappoh         = 5;  /* horiz outer gap between windows and screen edge */   cstatic const unsigned int gappov         = 5;  /* vert outer gap between windows and screen edge */   ~static const int smartgaps_fact          = 1;   /* gap factor when there is only one client; 0 = no gaps, 3 = 3x outer gaps */   Dstatic const int showbar                 = 1;   /* 0 means no bar */   Hstatic const int topbar                  = 1;   /* 0 means bottom bar */   Lstatic const int vertpad                 = 5;  /* vertical padding of bar */   Nstatic const int sidepad                 = 5;  /* horizontal padding of bar */   8/* Indicators: see patch/bar_indicators.h for options */   q// Indicators for tags and app name. Nothing interesting here, can skip. Just included in patches for some reason   Estatic int tagindicatortype              = INDICATOR_TOP_LEFT_SQUARE;   :static int tiledindicatortype            = INDICATOR_NONE;   Estatic int floatindicatortype            = INDICATOR_TOP_LEFT_SQUARE;       /* Layouts */   Rstatic const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */   Kstatic const int nmaster     = 1;    /* number of clients in master area */   Wstatic const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */       /* Fonts */   "static const char *fonts[]     = {   G  "CaskaydiaCove Nerd Font Mono:size=10:antialias=true:autohint=true",    8   "JoyPixels:pixelsize=12:antialias=true:autohint=true"   						     	};   fstatic const char dmenufont[]            =  "FiraCode Nerd Font:size=14:antialias=true:autohint=true";       /* Colors */   Jstatic char c000000[]                    = "#000000"; // placeholder value           Ostatic char normfgcolor[]                = "#f8f8f2"; // Right panel text color   Lstatic char normbgcolor[]                = "#282a36"; //Right panel bg color   5static char normbordercolor[]            = "#282a36";   <static char normfloatcolor[]             = "#282a36"; // ???       Wstatic char selfgcolor[]                 = "#f8f8f2"; // Left panel text color ( tabs )   Lstatic char selbgcolor[]                 = "#282a36"; // Left Panel bf color   Mstatic char selbordercolor[]             = "#ff79c6" ; // WIndow border color   ;static char selfloatcolor[]              = "#282a36"; // ??       ;static char titlenormfgcolor[]           = "#f9f9f2"; // ??   hstatic char titlenormbgcolor[]           = "#4c3f64"; // App name bg color, when there is no runned apps   <static char titlenormbordercolor[]       = "#282a36"; // ??    :static char titlenormfloatcolor[]        = "#282a36";// ??       Lstatic char titleselfgcolor[]            = "#f9f9f2"; // App name text color   Jstatic char titleselbgcolor[]            = "#4c3f64"; // App name bg color   ;static char titleselbordercolor[]        = "#44475a"; // ??   ;static char titleselfloatcolor[]         = "#44475a"; // ??       Ostatic char tagsnormfgcolor[]            = "#f9f9f2"; // Non selected tags text   Mstatic char tagsnormbgcolor[]            = "#282a36"; // Non selected tags bg   5static char tagsnormbordercolor[]        = "#282a36";   5static char tagsnormfloatcolor[]         = "#282a36";       Jstatic char tagsselfgcolor[]             = "#f9f9f2"; // Selected tag text   Hstatic char tagsselbgcolor[]             = "#4c3f64"; // Selected tag bg   5static char tagsselbordercolor[]         = "#654321";   5static char tagsselfloatcolor[]          = "#654321";       5static char hidnormfgcolor[]             = "#ff5555";   5static char hidselfgcolor[]              = "#50fa7b";   5static char hidnormbgcolor[]             = "#123456";   5static char hidselbgcolor[]              = "#123456";       5static char urgfgcolor[]                 = "#f1fa8c";   5static char urgbgcolor[]                 = "#ffb86c";   5static char urgbordercolor[]             = "#111111";   5static char urgfloatcolor[]              = "#111111";           *static const unsigned int baralpha = 0xE6;   /static const unsigned int borderalpha = OPAQUE;   )static const unsigned int alphas[][3] = {   9	/*                       fg      bg        border     */   :	[SchemeNorm]         = { OPAQUE, baralpha, borderalpha },   :	[SchemeSel]          = { OPAQUE, baralpha, borderalpha },   :	[SchemeTitleNorm]    = { OPAQUE, baralpha, borderalpha },   :	[SchemeTitleSel]     = { OPAQUE, baralpha, borderalpha },   :	[SchemeTagsNorm]     = { OPAQUE, baralpha, borderalpha },   :	[SchemeTagsSel]      = { OPAQUE, baralpha, borderalpha },   :	[SchemeHidNorm]      = { OPAQUE, baralpha, borderalpha },   :	[SchemeHidSel]       = { OPAQUE, baralpha, borderalpha },   :	[SchemeUrg]          = { OPAQUE, baralpha, borderalpha },   };   // #define NUMCOLORS         4       % static char *colors[][ColCount] = {	   [/*                       fg                bg                border                float */       d[SchemeNorm]         = { normfgcolor,      normbgcolor,      normbordercolor,      normfloatcolor },   d	[SchemeSel]          = { selfgcolor,       selbgcolor,       selbordercolor,       selfloatcolor },   j	[SchemeTitleNorm]    = { titlenormfgcolor, titlenormbgcolor, titlenormbordercolor, titlenormfloatcolor },   i	[SchemeTitleSel]     = { titleselfgcolor,  titleselbgcolor,  titleselbordercolor,  titleselfloatcolor },   i	[SchemeTagsNorm]     = { tagsnormfgcolor,  tagsnormbgcolor,  tagsnormbordercolor,  tagsnormfloatcolor },   h	[SchemeTagsSel]      = { tagsselfgcolor,   tagsselbgcolor,   tagsselbordercolor,   tagsselfloatcolor },   ^	[SchemeHidNorm]      = { hidnormfgcolor,   hidnormbgcolor,   c000000,              c000000 },   ^	[SchemeHidSel]       = { hidselfgcolor,    hidselbgcolor,    c000000,              c000000 },   d	[SchemeUrg]          = { urgfgcolor,       urgbgcolor,       urgbordercolor,       urgfloatcolor },   };                   
/* TAGS */   $static char *tagicons[][NUMTAGS] = {   I	[DEFAULT_TAGS]        = { "1", "2", "3", "4", "5", "6", "7", "8", "9" },   I	[ALTERNATIVE_TAGS]    = { "A", "B", "C", "D", "E", "F", "G", "H", "I" },   [	[ALT_TAGS_DECORATION] = { "<1>", "<2>", "<3>", "<4>", "<5>", "<6>", "<7>", "<8>", "<9>" },   };       /* RULES */   static const Rule rules[] = {   J    // class      instance  title  wintype  tags mask  isfloating  monitor   H    { "Gimp",     NULL,     NULL,  NULL,    1 << 4,    0,          -1 },   P    { NULL,       NULL,     "curseradio",  NULL,    1 << 8,    0,          -1 },   M    { NULL,       NULL,     "castero",  NULL,    1 << 7,    0,          -1 },   };           #static const BarRule barrules[] = {   w	/* monitor  bar    alignment         widthfunc                drawfunc                clickfunc                name */   {	{ -1,       0,     BAR_ALIGN_LEFT,   width_ltsymbol,          draw_ltsymbol,          click_ltsymbol,          "layout" },   y	{ -1,       0,     BAR_ALIGN_LEFT,   width_tags,              draw_tags,              click_tags,              "tags" },   }	{ 'A',      0,     BAR_ALIGN_RIGHT,  width_status2d,          draw_status2d,          click_statuscmd,         "status2d" },   }	{ -1,       0,     BAR_ALIGN_NONE,   width_wintitle,          draw_wintitle,          click_wintitle,          "wintitle" },   };       /* layout(s) */       !static const Layout layouts[] = {   "	/* symbol     arrange function */   	{ "[\\]",     dwindle },   6	{ "[]=",      tile },    /* first entry is default */   J	{ "><>",      NULL },    /* no layout function means floating behavior */   	{ "[M]",      monocle },   };           /* key definitions */   $/* Mod4Mask is SUPER(windows) key */   #define MODKEY Mod4Mask   #define TAGKEYS(KEY,TAG) \   P	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \   P	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \   P	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \   N	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },               C/* helper for spawning shell commands in the pre dwm-5.0 fashion */   I#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }       /* commands */   Tstatic char dmenumon[2] = "0";  /* component of dmenucmd, manipulated in spawn()  */   !static const char *dmenucmd[] = {   	"dmenu_run",   	"-m", dmenumon,   	"-fn", dmenufont,   	"-nb", normbgcolor,   	"-nf", normfgcolor,   	"-sb", selbgcolor,   	"-sf", selfgcolor,   	NULL   };   7static const char *termcmd[]  = { TERM, "-e", "fish" };           /* SHORTCUTS */   #include "keys.c"   R/* Keys changed due to in XK_* way, my hotkeys doesn't work with russion layout */   static Key keys[] = {   I	/* modifier           key            function                argument */   k  {MODKEY|ShiftMask,    N,             spawn,             SHCMD(TERM " -e nvim -c VimwikiMakeDiaryNote") },   k  {MODKEY,              V,             spawn,             SHCMD(TERM " -e nvim -c 'Telescope oldfiles'") },   c  { MODKEY,             N,             spawn,             SHCMD(TERM " -e nvim -c VimwikiIndex") },   U  { MODKEY,             R,             spawn,             SHCMD(TERM " -e ranger") },   H	{ 0 ,            Alt_R,     spawn,             SHCMD("change-layout")},   N	{ MODKEY,             Q,             killclient,        {0} }, // Kill client   K	{ MODKEY,             Backspace,     spawn,             SHCMD("sysact") },   M	{ MODKEY,             W,             spawn,             SHCMD("$BROWSER") },   X  { MODKEY,             F6,            spawn,             SHCMD("volumecontrol mute") },   X  { MODKEY,             F7,            spawn,             SHCMD("volumecontrol down") },   V  { MODKEY,             F8,            spawn,             SHCMD("volumecontrol up") },   \  { MODKEY,             F2,            spawn,             SHCMD("brightnesscontrol down") },   Z  { MODKEY,             F3,            spawn,             SHCMD("brightnesscontrol up") },   V  { MODKEY,             M,             spawn,             SHCMD(TERM " -e ncmpcpp") },   Y  { MODKEY|ShiftMask,   M,             spawn,             SHCMD(TERM " -e curseradio") },   M  { MODKEY,             F12,           spawn,             SHCMD("mpvStop") },   O  { MODKEY|ShiftMask,   F12,          spawn,              SHCMD("mpvToggle") },   j  { MODKEY,             Comma,         spawn,             SHCMD("mpcControl seek -10") }, // 10 sec before   Y  { MODKEY|ShiftMask,   Comma,         spawn,             SHCMD("mpcControl seek -60") },   i  { MODKEY,             Period,        spawn,             SHCMD("mpcControl seek +10") }, // 10 sec after   Y  { MODKEY|ShiftMask,   Period,        spawn,             SHCMD("mpcControl seek +60") },   U  { MODKEY,             F9,            spawn,             SHCMD("mpcControl prev") },   W  { MODKEY,             F10,           spawn,             SHCMD("mpcControl toggle") },   U  { MODKEY,             F11,           spawn,             SHCMD("mpcControl next") },   e  { MODKEY,             KP_0,          spawn,             SHCMD(TERM " -e newsboat") }, // Rss feeder   V  { MODKEY|ShiftMask,   KP_1,          spawn,             SHCMD(TERM " -e castero") },   ^	{ MODKEY,             Space,         zoom,              {0} }, // Make selected window master   N	{ MODKEY,             D,             spawn,             SHCMD("rofi_drun") },   [	{ MODKEY,             Return,        spawn,             {.v = termcmd } }, // Run terminal   M	{ MODKEY,             B,             togglebar,         {0} }, // Toggle bar   e	{ MODKEY,             J,             focusstack,        {.i = +1 } }, // Change focus on next window   e	{ MODKEY,             K,             focusstack,        {.i = -1 } }, // Change focus on prev window   d  { MODKEY,             Bracket_left,  incnmaster,        {.i = +1 } }, // Inc amount master windows   c	{ MODKEY,             Bracket_right, incnmaster,        {.i = -1 } }, // Dec amount master windows   f	{ MODKEY,             H,             setmfact,          {.f = -0.05} }, // Inc width of master window   f	{ MODKEY,             L,             setmfact,          {.f = +0.05} }, // Dec width of master window   V	{ MODKEY,             Zero,          togglegaps,        {0} }, // Enabl//disable gaps   Y	{ MODKEY,             Tab,           view,              {0} }, // Change to the prev tab   �	{ MODKEY,             T,             setlayout,         {.v = &layouts[0]} }, // Default layout (Master to the left, other to the right in rows )   b	{ MODKEY,             Z,             setlayout,         {.v = &layouts[3]} }, // Fibonacci layout   X	{ MODKEY|ShiftMask,   Space,         togglefloating,    {0} }, //Toggle floating window   S	{ MODKEY,             F,             togglefullscreen,  {0} }, //Toggle fullscreen   a	{ 0,                  Print,         spawn,             SHCMD("maimpick")}, // Take a screenshot   _  { MODKEY,			        Print,	       spawn,		          SHCMD("dmenurecord") }, // Record a video   k	{ MODKEY|ShiftMask,	  Print,	       spawn,		          SHCMD("dmenurecord kill") }, // Stop recording video   j	{ MODKEY,			        Delete,	       spawn,		          SHCMD("dmenurecord kill") }, // Stop recording video   	  // Tags   	TAGKEYS(One,    0)   	TAGKEYS(Two,    1)   	TAGKEYS(Three,  2)   	TAGKEYS(Four,   3)   	TAGKEYS(Five,   4)   	TAGKEYS(Six,    5)   	TAGKEYS(Seven,  6)   	TAGKEYS(Eight,  7)   	TAGKEYS(Nine,   8)   };   /* button definitions */   b/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */   static Button buttons[] = {   Y	/* click                event mask           button          function        argument */   T	{ ClkLtSymbol,          0,                   Button1,        setlayout,      {0} },   c	{ ClkLtSymbol,          0,                   Button3,        setlayout,      {.v = &layouts[2]} },   T	{ ClkWinTitle,          0,                   Button2,        zoom,           {0} },   Z	{ ClkStatusText,        0,                   Button1,        sigstatusbar,   {.i = 1 } },   Z	{ ClkStatusText,        0,                   Button2,        sigstatusbar,   {.i = 2 } },   Z	{ ClkStatusText,        0,                   Button3,        sigstatusbar,   {.i = 3 } },   Y	{ ClkStatusText,        MODKEY,             Button3,        sigstatusbar,   {.i = 6 } },   T	{ ClkClientWin,         MODKEY,              Button1,        movemouse,      {0} },   T	{ ClkClientWin,         MODKEY,              Button2,        togglefloating, {0} },   T	{ ClkClientWin,         MODKEY,              Button3,        resizemouse,    {0} },   T	{ ClkTagBar,            0,                   Button1,        view,           {0} },   T	{ ClkTagBar,            0,                   Button3,        toggleview,     {0} },   T	{ ClkTagBar,            MODKEY,              Button1,        tag,            {0} },   T	{ ClkTagBar,            MODKEY,              Button3,        toggletag,      {0} },   };            5�5�_�                    �   7    ����                                                                                                                                                                                                                                                                                                                                                             `�YE    �   �   �        5��    �                      S$      I               5��