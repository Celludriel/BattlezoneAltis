diag_log format ["Calling fn_mainInit.sqf with: %1", _this];
[] call compile PreprocessFileLineNumbers "VVS\configuration.sqf";
VVS_Checkbox = false;
[] spawn VVS_fnc_buildCfg;