params ["_unit", "_newAnimation"];

if (!(isNull (_unit getVariable ["Grad_Items_hasItem",objNull])) && {_newAnimation == "ACE_AmovPercMstpSsurWnonDnon"}) then {
    [_unit] remoteExec ["Grad_Items_fnc_dropItem",2,false];
};
