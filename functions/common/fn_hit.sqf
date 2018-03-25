params ["_type"];

if (_type == "target") then {
    Grad_Prix_TargetsHit = Grad_Prix_TargetsHit+1;
}else{
    Grad_Prix_CivsHit = Grad_Prix_CivsHit+1;
};
