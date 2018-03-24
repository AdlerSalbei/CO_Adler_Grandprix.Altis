params [["_Item",objNull],["_unit",objNull],["_vehicleMode",false]];

if (isNull _unit) exitWith {};
if (isNull _Item) exitWith {};
if !(isNull (_unit getVariable "Grad_Items_hasItem")) exitWith {hint "You are allready carring a item!"};

private _prevOwner = _Item getVariable ["Grad_Items_owner",objNull];
if (!isNull _prevOwner) then {
    _prevOwner setVariable ["Grad_Items_hasItem",objNull,true];
    [_prevOwner,true] remoteExec ["allowSprint",_unit,false];
};

if (_vehicleMode) then {
    _Item attachTo [vehicle _unit,[0,0,-100]];
} else {
    _Item attachTo [_unit,[-0.03,-0.06,-0.19],"RightHand"];
};
_Item setVectorDirAndUp [[1,0,0],[0,0,1]];

[_unit,false] remoteExec ["allowSprint",_unit,false];
_unit setVariable ["Grad_Items_hasItem",_item,true];
_Item setVariable ["Grad_Items_owner",_unit,true];

if (currentWeapon _unit != "") then {
    [_unit,["SwitchWeapon",_unit,_unit,99]] remoteExec ["action",_unit,false];
};
