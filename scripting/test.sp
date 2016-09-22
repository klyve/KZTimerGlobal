#pragma semicolon 1
#include <sourcemod>
#include <kztimer>

public Plugin:myinfo = {
    name = "",
    author = "Klyve",
    description = "",
    version = "1.0",
    url = ""
};

public OnPluginStart() {
    PrintToServer("Plugin succesfully started");
}

public test(int client) {
  KZTimer_GetCurrentTime(client);
}
