params [["_unit",objNull]];

if !(isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) then {
    [_unit] call Grad_Items_fnc_dropItem;
};

false
