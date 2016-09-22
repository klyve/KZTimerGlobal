#KZTimer

[![Build Status](https://travis-ci.com/klyve/KZTimerGlobal.svg?token=hSFB3DtorbbWteZwQ3Vp&branch=master)](https://travis-ci.com/klyve/KZTimerGlobal)


KZTimer is a powerful feature rich [SourceMod](http://www.sourcemod.net/) plugin for CS:GO servers

Global Stats: [KZStats](http://kzstats.com)
Steam Group: [SteamGroup](http://steamcommunity.com/groups/KZTimerOfficial)

============================

**Features include:**
- Tested against
 -- Sourcemod 1.7 Latest
 -- Sourcemod 1.8 Latest
 -- Sourcemod 1.9 Latest

Multi-Language support
- We support multiple languages

- Local and Global ranking
- Replay bots
- Jumpstats, strafestats & failstats
- prestrafe & prespeed cap
- Double-duck
- Autobhop
- Sourcebans support
- Multiple databases ( mysql & sqlite )
- Custom models

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


##Commands
#### Client Commands
-- ``!Menu`` Open the climber menu
-- ``!options`` Open options menu

#### Server/Admin Commands
-- ``!Menu`` Open the climber menu
-- ``!options`` Open options menu
