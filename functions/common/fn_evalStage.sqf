params ["_unit"];

//if !(isDedicated) exitWith {};
if (isNull _unit) exitWith {};

_finishTime = serverTime;
_startTime = _unit getVariable "Grad_prix_stageTime";
_time = _finishTime - _startTime;
_infoTime = [_time,"HH:MM:SS:MM"] call BIS_fnc_timeToString;
_targets = _unit getVariable ["Grad_Prix_TargetsHit", 0];
_civs = _unit getVariable ["Grad_Prix_CivsHit", 0];

_text = format ["Zeit: %1, Gegner: %2/74, Zivilisten: %3/12",  _infoTime, _targets, _civs];
diag_log format ["Player: %1, Time: %2, Targets: %3/74, Civs: %4/12", _unit, _infoTime, _targets, _civs];
_text remoteExec ["hint", _unit, false];
