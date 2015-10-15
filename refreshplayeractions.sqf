if (isDedicated) exitWith {};
waitUntil {!isNull player};

player enableFatigue false;
removeAllActions player;

player addAction ["<t color='#cccccc'>Lift vehicle</t>", "scripts\lift.sqf", nil, 10, true, true, "", "call CUP_checkLift"];
player addAction ["<t color='#cccccc'>Drop vehicle</t>", "scripts\drop.sqf", nil, 10, true, true, "", "call CUP_checkDrop"];

if (vAllowVD == 1) then {
	player addAction["<t color='#cccccc'>View distance</t>",TAWVD_fnc_openTAWVD,nil,0,false];
};

if (vSupplyEnable == 1) then {
	player addAction["<t color='#cccccc'>Call resupply drop</t>", "callsupplydrop.sqf",nil,1,false];
	if (vSupplyDown) then {
		removeAllActions ResupplyBox;
		ResupplyBox addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	};
};

if (vBunkerEnable == 1) then {
	player addAction["<t color='#cccccc'>Build bunker</t>", "buildbunker.sqf",nil,1,false];
};

player execVM "scripts\MGI\MGI_add_actions.sqf";
[player] execVM "scripts\groupsMenu\initGroups.sqf";
