params ["_unit"];
systemchat format ["Start: %1", _unit];

if (isNull _unit) exitWith {};

_unit setVariable ["Grad_prix_stageTime", diag_tickTime];
_unit setVariable ["Grad_Prix_TargetsHit", 0];
_unit setVariable ["Grad_Prix_CivsHit", 0];
