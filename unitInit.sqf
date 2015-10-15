if (isDedicated) exitWith {};

diag_log format ["ParamsArray: %1", ParamsArray];
vReviveEnable = ParamsArray select 15;
vAllowVD = ParamsArray select 18;
vSupplyEnable = ParamsArray select 13;
vBunkerEnable = ParamsArray select 22;
vSupplyDown = false;

waitUntil {!isNull player};

if(_this == player) then {
	player enableFatigue false;
	[] execVM "scripts\MGI\MGI_init.sqf";
	if (vReviveEnable == 1) then {
		["FAR_customRespawn.sqf"] call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
	} else {
		player addeventhandler ["respawn","_this execVM 'respawn.sqf'"];
	};
};
