{
    _x animate ["Terc",0];
    _x addEventHandler ["HIT", {
        params ["_popTarget", "_shooter"];
        if ((typeOf _popTarget) in ["TargetP_Inf_F","TargetP_Inf2_F","TargetP_Inf3_F","TargetP_Inf4_F","TargetP_HVT1_F","TargetP_HVT2_F","TargetP_Zom_F"]) then {
            _hits = _shooter getVariable ["Grad_Prix_TargetsHit", 0];
            _hits = _hits +1;
            _shooter setVariable ["Grad_Prix_TargetsHit", _hits];

        };
        if ((typeOf _popTarget) in ["TargetP_Civ_F","TargetP_Civ2_F"]) then {
            _hits = _shooter getVariable ["Grad_Prix_CivsHit", 0];
            _hits = _hits +1;
            _shooter setVariable ["Grad_Prix_CivsHit", _hits];
        };
        _popTarget animate ["Terc",1];
        _popTarget RemoveEventHandler ["HIT",0];
        }
    ]
} forEach _this;
