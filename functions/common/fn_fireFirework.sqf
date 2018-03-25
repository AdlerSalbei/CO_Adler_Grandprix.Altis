[getPos firework_launcher_01, "normal","red"]   remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_03, "normal","blue"]  remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
sleep 4;
[getPos firework_launcher_02, "normal","green"]  remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_04, "normal","white"]  remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];

sleep 4;
[getPos firework_launcher_01, "fizzer","red"]    remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_03, "fizzer","blue"]   remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
sleep 4;
[getPos firework_launcher_02, "fizzer","green"]  remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_04, "fizzer","white"]  remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];

sleep 4;
[getPos firework_launcher_01, "rain","red"]     remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_03, "rain","blue"]    remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
sleep 7;
[getPos firework_launcher_02, "rain","green"]   remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
[getPos firework_launcher_04, "rain","white"]   remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
bomb_truck_01 hideObjectGlobal false;
bomb_truck_01 allowDamage true;
driver_truck_01 hideObjectGlobal false;
driver_truck_01 allowDamage true;
bomb_truck_01 setFuel 1;
