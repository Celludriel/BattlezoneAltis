diag_log format ["Calling heal.sqf with: %1", _this];
waitUntil {!isNull player};
player setDamage 0;
systemChat "MEDIC: You are now fully healed.";