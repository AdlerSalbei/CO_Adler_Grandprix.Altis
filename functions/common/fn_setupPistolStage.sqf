params ["_unit"];

//if !(isDedicated) exitWith {};
if (isNull _unit) exitWith {};

_unit setVariable ["Grad_prix_stageTime", time];
_unit setVariable ["Grad_Prix_TargetsHit", 0];
_unit setVariable ["Grad_Prix_CivsHit", 0];
