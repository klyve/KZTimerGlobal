# KZTimer
===========================
[![Build Status](https://travis-ci.com/klyve/KZTimerGlobal.svg?token=hSFB3DtorbbWteZwQ3Vp&branch=master)](https://travis-ci.com/klyve/KZTimerGlobal)

Global Stats: www.kzstats.com |
Steam Group: www.steamcommunity.com/groups/KZTIMER
============================

KZTimer is a standalone [SourceMod](http://www.sourcemod.net/) plugin for CS:GO servers.

**About**
- Latest version: *1.84 Global* (SM-Compiler 1.7.3)
- Multi-Language support (english, chinese, french, german, russian, portuguese brazilian  and swedish)

KZTimer is a powerful climb timer plugin including local ranking system, global ranking system, replay bots, jumpstats, strafestats, failstats, anticheat-system, sourcebans support, mysql&sqlite access, custom models, prestrafe, prespeed cap, double-duck, autobhop, client options and more.


**Please read the following information carefully before you start asking questions:**
- KZTimer Client/Admin Commands: http://pastebin.com/H5ULxsdJ
- Detailed explanation how the ranking system of kztimer works: http://kuala-lumpur-court-8417.pancakeapps.com/ranking_index2.html
- Make sure that you have added all maps to your mapcycle.txt. You don't get any experience points from a map which is not in this list. Keep it always up to date!
- A very large sqlite database might cause server lags (i prefer a mysql database)
- KZTimer interferes with menus of other plugins. You are able to add exceptions in addons\sourcemod\configs\kztimer\exceptions_list.txt for sourcemod commands which create menus (e.g. sm_knife)
(Example for menus which requires an internal fix: https://forums.alliedmods.net/showpost.php?p=2265536&postcount=487)
- Download includes DHooks2 extension (https://forums.alliedmods.net/showthread.php?t=180114), Cleaner extension (https://forums.alliedmods.net/showthread.php?t=195008)  and latest GeoIP database (http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/)
- How do I get my server whitelisted? Send an email to sooletus@gmail.com with your server's information.

**Installation**
- 1. KZTimer requires sourcemod and metamod
- 2. Extract everything to your servers csgo folder
- 3. Edit the file addons/sourcemod/configs/databases.cfg
- 4. Add in a value called "kztimer", which holds your databases information
- 5. Both SQLite and MySQL are supported
- 6. Example with using SQLite: https://www.dropbox.com/s/dzk4mt3jze0ek78/databasecfg.jpg
- 7. Make sure that you have added all maps to your csgo\mapcycle.txt. You don't get any experience points from a map which is not in this list
- 8. Done.

**Credits to**
DieterM75 (cP mod), Zephyrus (Cleaner), Peace-Maker (Botmimic2), exvel/bara(csgo fix) (color.inc), GoD-Tony (setname methods), Dr!fter/Powerlord (Dhooks), Inami/ThatOneGuy (Macrodox), DaFox (Measure Plugin), berni & Chanz (smlib), psychonic and tsunami (sdkhooks), Tanskin, Klyve, Chuckles, so0le, Kenneth, versaceLORD

**Please show your appreciation for the work on KZTimer and support future development by [donating!](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7REZX9RD6G6QL)**

**KZTimer Global Changelog**
=======
<SPOILER>
v1.84
- Changed the global database to a new host
- Increased some of the golden jump stats

v1.83
- fixed wrong spawn positions on challenges after reconnecting
- divided global times in pro, tp and overall top20 lists
- added mp_drop_knife_enable (0) to kz settings enforcer
- removed server convar kz_global_banlist (enabled by default from now on)
- added 'forwards' KZTimer_TimerStarted, KZTimer_TimerStopped, KZTimer_TimerStoppedValid (Credits to Tanskin @ kz-endo)
- added client language option 'Portuguese Brazilian' (Credits to FrZ)
- minor optimizations
- Added files: sound\quake\ownage.mp3 (*golden serect*)
- Updated files: addons\sourcemod\plugins\KZTimerGlobal.smx, addons\sourcemod\configs\geoip\GeoIP.dat, addons\sourcemod\scripting\include\KZTimer.inc, sourcemod\configs\kztimer\sounds.cfg and , addons\sourcemod\translations\*ALL FILES*

v1.82
- fixed a glitch which did not allow you to do checkpoints on valid grounds
- updated files: KZTimerGlobal.smx

v1.81
- fixed checkpoint exploit which allowed players to do checkpoints mid-air
- added mappers access to vip servers
- updated files: KZTimerGlobal.smx

v1.80 (requires sourcemod 1.7 build 5279 or higher)
- fixed info bot and replay bots
- fixed a minor jumpstats bug on kz_conrun_mq
- updated files: KZTimerGlobal.smx

v1.79
- added "Top Ranked On Map" shortcut to the spectator menu
- added server convar kz_default_language (Default: 0) --> 0: english,  1: german, 2: swedish, 3: french, 4: russian, 5: simplified chinese
- added personal best (PB) notifier to all jumpstats messages
- fixed jumpstats bug with low gravity zones (entity name: "trigger_gravity")
- minor bug fixes

NOTE: Please delete your cfg/sourcemod/KZTimerGlobal.cfg and restart your server! KZTimer will automatically create a new config file, which will be up2date!


v1.78
- fixed a minor jumpstats bug

v1.77
- fixed wrong max speed on prestrafing
- fixed kz_prestrafe server convar
- minor optimizations

v1.76
- enforced sv_ladder_scale_speed to 1.0
- fixed a bug where players could get a pre-speed > 276 through weapon switching
- optimized undo-tp mid-air detection
- adjusted default jumpstats values for blue/green/red jumps (tickrate 64,102,128)
- added checkpoint support on kzpro_ maps while the timer is not running (thx 2 AzaZPLL)
- minor bug fixes

v1.75
- fixed several undo-tp exploits
- added convar kz_player_transparency (default: 100): Modifies the transparency of players. 0 is invisible and 255 is visible.
- added ability to change the quake sounds (scripted by AzaZPPL)
- added client option "replay route" / client command "!route" (shows the route of the quickest replay bot with glowing dots)
- added hgr:source support
- integrated language option into the options menu
- removed arrow/triangle icon above player heads
- minor bug fixes and optimizations

modified files:
addons\sourcemod\gamedata\dhooks-test.games.txt
addons\sourcemod\extensions\dhooks.ext.dll
addons\sourcemod\extensions\dhooks.ext.so
addons\sourcemod\configs\geoip\GeoIP.dat
addons\sourcemod\configs\kztimer\hidden_chat_commands.txt
addons\sourcemod\configs\kztimer\sounds.cfg (NEW)
addons\sourcemod\plugins\KZTimerGlobal.smx
addons\sourcemod\translations\*ALL FILES MODIFIED*

v1.74
- fixed an issue where players used boosters to gain speed for count jumps
- fixed several minor jumpstats bugs
- added server convar "kz_speclist_advert_interval" (default 300.0) (Amount of seconds between spectator list advertisements in chat. This advert appears only from 3 specs on)
- added new versions of 'holyshit' and 'wickedsick' quake sounds
- updated english language phrases
- general optimization and bug fixes
- changed files: "addons\sourcemod\plugins\KZTimerGlobal.smx", "sound\quake\holyshit_new.mp3", "sound\quake\holyshit_new.mp3 and sound\quake\wickedsick_new.mp3", "addons/sourcemod/translations/kztimer.phrases.txt"
NOTE: Don't forget to upload the new sounds files to your fastdl

v1.73
- added server convar "kz_double_duck" (DEFAULT: 0): on/off - Allows you to get up edges that are 32 units high or less without jumping ("0": double duck feature is only enabled if your map timer is disabled. "1": always enabled; (credits to Mehis, https://forums.alliedmods.net/showpost.php?p=2308824&postcount=4)
- added server convar "kz_team_restriction" (DEFAULT: 0): Team restriction (0 = both allowed, 1 = only ct allowed, 2 = only t allowed)
- added jump technique "countjump" (https://www.youtube.com/watch?v=tX5Iz3A1lbo) - prespeed limit: 315
- added colorchat option "red jumps only"
- added a protection against chat flooding
- added client command "!stopsound" (Stops map music)
- added client command "!specs" (prints in chat a list of all spectators)
- updated all language files
- minor bug fixes and optimizations
- updated files: all language files (sourcemod\translations), sourcemod\plugins\KZTimerGlobal.smx, sourcemod\configs\kztimer\hidden_chat_commands.txt and sourcemod\configs\kztimer\skillgroups.cfg

v1.72
- fixed the abuse of slap commands to achieve better jumpstats (thx 2 pLekz)
- fixed spectator voice communication
- improved kztimer anti-cheat system
- added server convar "kz_min_skill_group": Minimum skill group to play on this server excluding vips and admins. Everyone below the chosen skill group gets kicked.
- added server convar "kz_slay_on_endbutton_press" (default 0): Slays other players when someone finishs the map.
- added server convar "kz_allow_round_end" (default 0): on/off - Allows to end the current round
- added support for Right-to-Left Languages (credits: https://forums.alliedmods.net/showthread.php?t=178279)
- updated "cfg\sourcemod\kztimer\main.cfg" and all map type configs
- optimized prestrafe values on tickrate 64 servers
- lowered default skill group limits (sourcemod\configs\kztimer\skillgroups.cfg)
- added latest versions of cleaner (+windows support), dhooks, smlib and geoip.dat to the kztimer package
- minor optimizations and bug fixes

Installation notes v1.72 if you want to upgrade kztimer from an older version:
1) Backup your sourcemod folder and csgo/cfg/sourcemod/KZTimer.cfg
2) Make sure that your server is running sourcemod 1.7.0 or a newer version.
3) Shutdown your cs:go server
4) You have to remove all files from "csgo\addons\sourcemod\extensions" which CONTAIN "dhooks.ext.2" in their name. (Reason: KZTimer archive includes a newer dhooks version with a different file name)
5) Delete csgo/cfg/sourcemod/KZTimer.cfg
6) Extract all files from the archive to the root folder of csgo. I'd recommend to replace all files.
7) Restart your server. Done!

v1.71b
- fixed two minor bugs
- added forcesuicide on left/right script detection

v1.71
- fixed displaying of a wrong pre strafe value after players used +noclip (thx 2 haru)
- fixed map end glitch where the map does not change
- optimized strafe air-time calculation
- optimized jump sync calculation
- optimized default jump stats values
- added +left/+right script detection
- added "godlike jumps and map records only" choice for "quake sounds" player option
- added "advanced center panel" player option: Displays whether or not players have hit a crouch jump and whether or not players have released their forward key in the right moment on long jumps
- minor optimizations and bug fixes

v1.7
- fixed a undo exploit (i won't go into detail but thx to aMo)
- added a few missing chat phrases to the russian translation file
- reworked spec list options (options: 1. counter+names...  2. counter.. 3. disabled) | default: 1
- removed landing edge value from longjump stats... too inaccurate at the moment
- added airtime(%) to strafe stats (beta)
- added impressive jumpstats chat message, new order: perfect (blue), impressive(green), godlike (red)
- added impressive sound file "csgo/sound/quake/impressive_kz.mp3"
- renamed all jumpstats convars (i'd recommend to delete your old KZTimer.cfg. The plugin creates a new config on server restart)
- minor bug fixes
- modified files: sourcemod/plugins/KZTimerGlobal.smx, sourcemod/translations/ru/kztimer.phrases.txt
...
</SPOILER>
