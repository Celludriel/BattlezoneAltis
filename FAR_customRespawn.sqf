diag_log format ["Calling FAR_customRespawn.sqf with: %1", _this];
waitUntil {!isNull player};

[] call compile PreprocessFileLineNumbers "refreshplayeractions.sqf";

if (vGearSaved) then {
	[] call compile PreprocessFileLineNumbers "gearload.sqf";
};