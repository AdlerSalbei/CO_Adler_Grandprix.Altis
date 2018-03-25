if (isServer) then {
    {
        [] remoteExecCall ["Grad_common_fnc_evalTime", _x];
    }forEach (this select 1);
};
if !(hasInterface) exitWith {};

_finishTime = diag_tickTime;
_startTime = _x getVariable "grad_prix_time";
if (isNil "_startTime") exitWith {};
_time = _finishTime - _startTime;
_infoTime = [_time,"HH:MM:SS"] call BIS_fnc_timeToString;

hint format ["Congratulations. You took %1 to get here!", _infoTime];
