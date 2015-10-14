diag_log format ["Calling groupActions.sqf with: %1", _this];
private ["_caller"];
_caller = _this select 1;

_caller removeAction GRPMNU_groupActions;

GRPMNU_joinGroup = _caller addAction["<t color='#DF01D7'>Join Group</t>", "scripts\groupsMenu\joinGroup.sqf", nil, -200, false, false, "", "(cursorTarget distance _this) < 4 && (count units group _this) == 1 && side cursorTarget == side _this"];
GRPMNU_leaveGroup = _caller addAction["<t color='#DF01D7'>Leave Group</t>", "scripts\groupsMenu\leaveGroup.sqf", nil, -200, false, false, "", "(count units group _this) > 1"];
GRPMNU_makeLead = _caller addAction["<t color='#DF01D7'>Become Group Lead</t>", "scripts\groupsMenu\leadGroup.sqf", nil, -200, false, false, "", "(count units group _this) > 1 && leader group _this != _this"];
GRPMNU_quitLead = _caller addAction["<t color='#DF01D7'>Step Down as Group Lead</t>", "scripts\groupsMenu\quitLead.sqf", nil, -200, false, false, "", "(count units group _this) > 1 && leader group _this == _this"];
GRPMNU_exitGroup = _caller addAction["<t color='#DF01D7'>Exit Groups Menu</t>", "scripts\groupsMenu\exitGroup.sqf", nil, -201, false, false, "", "_target == vehicle _this || _target == _this"];

if true exitWith {};