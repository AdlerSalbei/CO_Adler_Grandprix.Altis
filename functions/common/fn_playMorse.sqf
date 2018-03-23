params ["_obj"];
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "data\Sound\morse.ogg";

[{
    params ["_args", "_handle"];
    _args params ["_soundToPlay", "_obj"];
    playSound3D [_soundToPlay, _obj, false, (getPos _obj), 30, 1, 15];
},20,[_soundToPlay, _obj]] call CBA_fnc_addPerFrameHandler;
