nul = [bomb_truck_01,200,false,false,false,false] execvm "AlNuke\alias_nuke.sqf";
[{"EveryoneWon" call BIS_fnc_endMissionServer},[],10] call CBA_fnc_waitAndExecute;
