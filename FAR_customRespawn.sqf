waitUntil {!isNull player};

[] call compile PreprocessFileLineNumbers "refreshplayeractions.sqf";

if (vGearSaved) then {
	[] call compile PreprocessFileLineNumbers "gearload.sqf";
};
