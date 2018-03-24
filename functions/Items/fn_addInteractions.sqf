params ["_Item"];

private _actionPick = ["Grad_Items_pickup","Pick up","",{

    params ["_Item","_caller"];
    [_Item, _caller] remoteExec ["Grad_Items_fnc_attachItem",2,false];

},{isNull ((_this select 0) getVariable ["Grad_Items_owner",objNull])},{},[],[0,0,0],2] call ace_interact_menu_fnc_createAction;
[_Item,0,["ACE_MainActions"],_actionPick] call ace_interact_menu_fnc_addActionToObject;
