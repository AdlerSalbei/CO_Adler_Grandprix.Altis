params ["_unit"];

if (isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) exitWith {};

[_unit,true] remoteExec ["Grad_Items_fnc_attachItem",2,false];
