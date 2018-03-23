{
    _x animate ["Terc",0];	                                                    //get all targets to upright pos
    _x addEventHandler ["HIT", {											    //add EH
        (_this select 0) animate ["Terc",1];									//if hit, get to the ground
        (_this select 0) RemoveEventHandler ["HIT",0];							//remove EH
        }
    ]
} forEach _this;
