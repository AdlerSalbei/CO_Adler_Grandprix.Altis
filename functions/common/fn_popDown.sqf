{
    (_this select 0) animate ["Terc",1];									    //pop down
    (_this select 0) RemoveEventHandler ["HIT",0];							    //remove EH
} forEach _this;
