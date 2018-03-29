params ["_unit"];

//if !(isDedicated) exitWith {};
if (isNull _unit) exitWith {};

_stageTime = time - (_unit getVariable "Grad_prix_stageTime");
_seconds = floor (_stageTime);
if (_stageTime > 60) then {
    _count = floor (_stagetime / 60);
    _seconds = floor (_stageTime - (60*_count));
};

_min = floor (_stagetime / 60);
_infoTime = format ["%1min %2sec", _min, _seconds];
systemchat format ["%1 = %2, %3, %4", _infoTime, _min, _seconds, _stageTime];
_targets = _unit getVariable ["Grad_Prix_TargetsHit", 0];
_civs = _unit getVariable ["Grad_Prix_CivsHit", 0];

_text = format ["Zeit: %1, Gegner: %2/74, Zivilisten: %3/12",  _infoTime, _targets, _civs];
_text remoteExec ["hint", _unit, false];
diag_log format ["Player: %1, %2", _unit, _text];
