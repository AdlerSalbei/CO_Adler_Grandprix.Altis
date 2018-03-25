params ["_unit"];

if (isServer) exitWith {};
if (isNull _unit) exitWith {};

_unit setVariable ["Grad_prix_stageTime", diag_tickTime];
Grad_Prix_TargetsHit = 0;
Grad_Prix_CivsHit = 0;
