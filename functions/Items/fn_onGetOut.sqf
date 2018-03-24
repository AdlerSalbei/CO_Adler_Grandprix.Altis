params ["_unit"];

if (isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) exitWith {};

[_unit,false] remoteExec ["Grad_Items_fnc_attachItem",2,false];
