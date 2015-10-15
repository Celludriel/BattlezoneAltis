if (!isNull player) then {
    GRPMNU_groupActions = player addAction["<t color='#DF01D7'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];
};
