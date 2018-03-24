if (isServer) then {
    addMissionEventHandler ["HandleDisconnect",Grad_Items_fnc_onDisconnect];
};

if (!hasInterface) exitWith {};

{
    if (local _x) then {
        _x addEventhandler ["GetInMan",Grad_Items_fnc_onGetIn];
        _x addEventhandler ["GetOutMan",Grad_Items_fnc_onGetOut];
        _x addEventhandler ["Killed",Grad_Items_fnc_onKilled];
        _x addEventhandler ["AnimChanged",Grad_Items_fnc_onAnimChanged];
    };
} forEach allUnits;

["weapon",Grad_Items_fnc_onWeaponChanged] call CBA_fnc_addPlayerEventHandler;
["ace_unconscious",Grad_Items_fnc_onUnconscious] call CBA_fnc_addEventHandler;

_actionDrop = ["Grad_Items_drop","Drop Item","",{
    params ["_caller"];

    [_caller] remoteExec ["Grad_Items_fnc_dropItem",2,false];

},{!(isNull ((_this select 0) getVariable ["Grad_Items_hasItem",objNull]))}] call ace_interact_menu_fnc_createAction;
["CAManBase",1,["ACE_SelfActions"],_actionDrop,true] call ace_interact_menu_fnc_addActionToClass;
