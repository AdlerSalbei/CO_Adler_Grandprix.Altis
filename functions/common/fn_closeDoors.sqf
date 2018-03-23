params ["_startPos"];
_buildings = nearestObjects [_startPos, ["house"], 200, true];

{
    _num = getNumber (configFile >> "CfgVehicles" >> (typeOf _x) >> "numberofdoors");

    if (_num > 0) then {
        for "_i" from 1 to _num do {
            _anim = format ["Door_%1_rot", _i];
        	_x animate[_anim, 0];
        };
    };
}forEach _buildings;
