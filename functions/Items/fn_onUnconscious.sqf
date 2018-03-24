params ["_unit","_isUnconscious"];

if !(_isUnconscious) exitWith {};
if (isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) exitWith {};

[_unit] remoteExec ["Grad_Items_fnc_dropItem",2,false];
