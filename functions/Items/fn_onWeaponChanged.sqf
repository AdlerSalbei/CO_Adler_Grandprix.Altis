params ["_unit","_weapon"];

if (isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) exitWith {};

if !(_weapon in ["","ACE_FakePrimaryWeapon"]) then {
    [_unit] remoteExec ["Grad_Items_fnc_dropItem",2,false];
};
