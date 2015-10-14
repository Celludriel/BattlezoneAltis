diag_log format ["Calling cleanup.sqf with: %1", _this];
if (!isServer) exitWith {};

{ deleteVehicle _x } forEach allDead;