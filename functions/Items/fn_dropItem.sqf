params ["_unit"];

_item = _unit getVariable ["Grad_Items_hasItem",objNull];
if (isNull _item) exitWith {};

systemChat format ["Drop: %1", _item];
detach _Item;
[_unit,true] remoteExec ["allowSprint",_unit,false];

private _offset = if !(isNull objectParent _unit) then {[3,0,0]} else {[2,0,0]};
_Item attachTo [_unit,_offset,""];
[{detach _this},_Item,0.5] call CBA_fnc_waitAndExecute;

_unit setVariable ["Grad_Items_hasItem",objNull,true];
_Item setVariable ["Grad_Items_owner",objNull,true];
