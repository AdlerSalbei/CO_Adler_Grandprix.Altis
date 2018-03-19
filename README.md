# CO_Adler_Grandprix.Altis

Activate Truck:
bomb_truck_01 hideObjectGlobal false;
bomb_truck_01 allowDamage true;
driver_truck_01 hideObjectGlobal false;
driver_truck_01 allowDamage true;
bomb_truck_01 setFuel 1;


Blow it:
nul = [bomb_truck_01,200,false,false,false,false] execvm "AlNuke\alias_nuke.sqf";
