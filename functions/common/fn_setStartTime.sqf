params ["_units"];

{
    _time = _x getVariable "grad_prix_time";
    if !(isNil "_time") then {
        _x setVariable ["grad_prix_time", diag_tickTime];
    };
} forEach _units;
