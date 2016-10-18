#KZTimer

[![Build Status](https://travis-ci.org/klyve/KZTimerGlobal.svg?branch=dev)](https://travis-ci.org/klyve/KZTimerGlobal)


###**KZTimer is a powerful, feature rich [SourceMod](http://www.sourcemod.net/) climb timer plugin for CS:GO servers**

####[Global KZ Stats](http://kzstats.com)
####[Steam Group](http://steamcommunity.com/groups/KZTimerOfficial)

============================

####**Tested against:**
 -- Sourcemod 1.7 Latest
 -- Sourcemod 1.8 Latest
 -- Sourcemod 1.9 Latest

####**Features include:**
- Multi-Language support
- Local and Global player ranking
- Replay bots
- Jumpstats, strafestats & failstats
- Anticheat system
- Prestrafe & prespeed cap
- Double-duck
- Autobhop
- Sourcebans support
- MySQL and SQLite support
- Custom models
- Client options

####**Prerequisites:**
- KZTimer requires SourceMod and Metamod

####**Installation**
 1. Extract everything to your servers csgo folder
 2. Edit the file addons/sourcemod/configs/databases.cfg
 3. Add in a value called "kztimer", which holds your databases information
 4. Both SQLite and MySQL are supported
 5. Example with using SQLite: https://www.dropbox.com/s/dzk4mt3jze0ek78/databasecfg.jpg
 6. Make sure that you have added all maps to your csgo\mapcycle.txt. You don't get any experience points from a map which is not in this list.
 7. Done.

####**Please read the following information carefully before you start asking questions:**
- KZTimer Client/Admin Commands: http://pastebin.com/H5ULxsdJ
- Detailed explanation how the ranking system of kztimer works: http://kuala-lumpur-court-8417.pancakeapps.com/ranking_index2.html
- Make sure that you have added all maps to your mapcycle.txt. You don't get any experience points from a map which is not in this list. Make sure to keep it updated with the latest Global maps.
- A very large SQLite database might cause server lag, a MySQL database is preferable
- KZTimer interferes with menus of other plugins. You are able to add exceptions in addons\sourcemod\configs\kztimer\exceptions_list.txt for sourcemod commands which create menus (e.g. sm_models)
(Example for menus which requires an internal fix: https://forums.alliedmods.net/showpost.php?p=2265536&postcount=487)
- Download includes DHooks2 extension (https://forums.alliedmods.net/showthread.php?t=180114), Cleaner extension (https://forums.alliedmods.net/showthread.php?t=195008)  and latest GeoIP database (http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/)
- How do I get my server whitelisted? Follow the instructions given here: http://www.kzstats.com/faq/

###Commands:
#### Client Commands:
- ``!menu/!cpmenu`` Opens the KZTimer checkpoint menu
- ``!adv`` - Opens an advanced climbers menu (adds !next, !prev and !undo as numbered commands)
- ``!speed/!showkeys`` - Toggles a centre panel showing player speed/keypresses
- ``!checkpoint`` - Save your current position
- ``!gocheck`` - Teleports you to the latest checkpoint
- ``!next`` - Teleports you to the next checkpoint
- ``!prev/!stuck/!unstuck`` - Teleports you to the previous checkpoint
- ``!undo`` - Undoes your last teleport, teleporting you back to your originating point
- ``!pause`` - Toggles pause (Pauses the timer and freezes the player)
- ``!r/!start`` - Teleport back to the start
- ``!stop`` - Stops your timer
- ``!options`` - Opens the options menu
- ``!help/!helpmenu`` - Opens a help menu which displays all KZTimer commands
- ``!help2`` - Explanation of the KZTimer ranking system
- ``!goto/!goto <playername>`` - Allows you to teleport to any player via a menu, or to a specific player identified by their name
- ``!spec/!spectate/!watch`` - Allows you to spectate a player via a menu, switching you to spectators, or spectate a specific player  via ``!spec/!spectate/!watch <playername>``
- ``!specs`` - Prints a list of all spectators in chat
- ``!flashlight`` - Toggles a flashlight
- ``!route`` - Toggles glowing dots which show the route of the fastest replay bot
- ``!profile/!rank`` Allows you to view player profiles via a menu or a specific players profile via ``!profile/!rank <playername>``
- ``!top/!topclimbers`` - Displays a menu for viewing top rankings (top 100 Players, top 50 overall, top 20 Pro/TP and top 20 for all jumpstats)
- ``!maptop/!maptop <mapname>`` - displays local map records (top 50 overall and top 20 Pro/TP) either for the current map or a given map
- ``!avg`` - Prints average completion time for the current map in the chat
- ``!wr`` - Prints records for the current map in the chat
- ``!globaltop`` - Displays a menu showing the global records for the current map
- ``!mapinfo`` - Prints information about the current map in chat
- ``!latest`` - Shows latest map records
- ``!globalcheck`` - Checks if the server/current map is globally whitelisted
- ``!hide`` - Toggles hiding of other players
- ``!hidechat`` - Hides your ingame chatbox and voice icons
- ``!hideweapon`` - Hides your weapon model
- ``!stopsound`` - Stops map music
- ``!challenge`` - Allows you to start a race against another player via a menu
- ``!accept`` - Allows you to accept a challenge request
- ``!surrender/!abort`` - Surrenders your current challenge
- ``!compare`` - Compare your challenge results
- ``!sync`` - Toggles the printing of player strafe sync to chat
- ``!beam`` - Toggles a beam show jump trajectory
- ``!measure`` - Allows you to measure the height/distance between 2 points
- ``!ljblock`` - Registers an LJ block (usage: Stand on one LJ block and aim your crosshair at the opposite block to register it)
- ``!ranks`` - Prints the available player ranks in chat
- ``!showsettings`` - Prints a list of the KZTimer server settings to the console
- ``!bhopcheck (Usage: @all, @me, <playername>)`` - Checks bhop stats for a given player, printing them the both chat and console (except for !bhopcheck @all, which prints only to console)
- ``!usp`` - Spawns a USP-S for the player
- ``!join`` - Opens the KZTimer Steam group
- ``!bhop`` - Toggles autobhop (only mg_, surf_ and bhop_ maps supported)


####Server/Admin Commands:

- ``!kzadmin`` - Displays the KZTimer admin menu  (requires flag e)
- ``!refreshprofile`` - Recalculates player profile for a given STEAMID
- ``!resetchallenges`` - Resets all player challenges (drops table challenges) - requires z flag
- ``!resettimes`` - Resets all player times (drops table playertimes) - requires z flag
- ``!resetranks`` - Resets all player points (drops table playerrank) - requires z flag
- ``!resetmaptimes`` - Resets player times for a given map - requires z flag
- ``!resetplayerchallenges`` - Resets (won) challenges for a given STEAMID - requires z flag
- ``!resetplayertimes`` - Resets tp & pro map times (+extrapoints) for a given STEAMID with or without given map - requires z flag
- ``!resetplayertptime`` - Resets tp map time for a given STEAMID and map - requires z flag
- ``!resetplayerprotime`` - Resets pro map time for a given STEAMID and map - requires z flag
- ``!resetjumpstats`` - Resets all jump stats (drops table playerjumpstats) - requires z flag    
- ``!resetallljrecords`` - Resets all lj records - requires z flag
- ``!resetallladderjumprecords`` - Resets all ladderjump records - requires z flag
- ``!resetallljblockrecords`` - Resets all lj block records - requires z flag
- ``!resetallwjrecords`` - Resets all wj records - requires z flag
- ``!resetallcjrecords`` - Resets all cj records - requires z flag
- ``!resetallbhoprecords`` - Resets all bhop records - requires z flag
- ``!resetalldropbhopecords`` - Resets all dropbhop records - requires z flag
- ``!resetallmultibhoprecords`` - Resets all multibhop records - requires z flag
- ``!resetljrecord`` - Resets lj record for a given STEAMID - requires z flag
- ``!resetcjrecord`` - Resets cj record for a given STEAMID - requires z flag
- ``!resetladderjumprecord`` - Resets ladderjump record for a given STEAMID - requires z flag
- ``!resetljblockrecord`` - Resets lj block record for a given STEAMID - requires z flag
- ``!resetbhoprecord`` - Resets bhop record for a given STEAMID - requires z flag  
- ``!resetdropbhoprecord`` - Resets dropbhop record for a given STEAMID - requires z flag
- ``!resetwjrecord`` - Resets wj record for a given STEAMID - requires z flag  
- ``!resetmultibhoprecord`` - Resets multibhop record for a given STEAMID - requires z flag
- ``!resetplayerjumpstats`` - Resets all jumpstats for a given STEAMID - requires z flag
- ``!deleteproreplay`` - Deletes pro replay for a given map - requires z flag
- ``!deletetpreplay`` - Deletes tp replay for a given map - requires z flag  
- ``!resetextrapoints`` - Resets given extra points for all players with or without given STEAMID

#####**(Note: STEAMID must be in the format STEAM_1: x:xxxxx)**
