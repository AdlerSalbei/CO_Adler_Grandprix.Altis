params ["_unit"];

if (isServer) exitWith {};
if (isNull _unit) exitWith {};

_finishTime = diag_tickTime;
_startTime = _unit getVariable "Grad_prix_stageTime";
_time = _finishTime - _startTime;
_infoTime = [_time,"HH:MM:SS"] call BIS_fnc_timeToString;

hint format ["Congratulations. You took %1 to get here!", _infoTime];
