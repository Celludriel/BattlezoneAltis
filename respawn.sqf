diag_log format ["Calling respawn.sqf with: %1", _this];
waitUntil {!isNull player};

_handle = [] execVM "refreshplayeractions.sqf";
waitUntil { scriptDone _handle };

if (vGearSaved) then {
	nul = [] execVM "gearload.sqf";
};
