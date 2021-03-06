diag_log format ["Calling refreshactions.sqf with: %1", _this];
if (isDedicated) exitWith {};

removeAllActions MedicOfficer;
MedicOfficer addAction["<t color='#cccccc'>Fully heal</t>", "heal.sqf"];

if (vSpawnEvac == 1) then {
	if (vEvacSpawned) then {
		removeAllActions MainEVAC;
		MainEVAC addAction["<t color='#cccccc'>EVAC to base</t>", "playerevac.sqf"];
	};
};

if (vHaloEnable == 1) then {
	removeAllActions HaloFlag;
	HaloFlag addAction["<t color='#cccccc'>HALO jump</t>", "ATM_airdrop\atm_airdrop.sqf"];
};

if (vAllowRecruitingAI == 1) then {
	removeAllActions RecruitOfficer;
	RecruitOfficer addAction["<t color='#cccccc'>Recruit rifleman</t>", "recruitrifleman.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit medic</t>", "recruitmedic.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit grenadier</t>", "recruitgrenadier.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit autorifleman</t>", "recruitautorifleman.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit rifleman AT</t>", "recruitriflemanat.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit missile specialist AA</t>", "recruitmissilespecialistaa.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit missile specialist AT</t>", "recruitmissilespecialistat.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit marksman</t>", "recruitmarksman.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit sniper</t>", "recruitsniper.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Recruit spotter</t>", "recruitspotter.sqf"];
	RecruitOfficer addAction["<t color='#cccccc'>Delete all AI recruits</t>", "deleterecruitsai.sqf"];
};

if (!isNil "FriendlyCaptive") then {
	removeAllActions FriendlyCaptive;
	FriendlyCaptive addAction["<t color='#cccccc'>Rescue</t>", "rescuecaptive.sqf",nil,1,false];
};

if (!isNil "SupplyBox1") then {
	removeAllActions SupplyBox1;
	SupplyBox1 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox1 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox2") then {
	removeAllActions SupplyBox2;
	SupplyBox2 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox2 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox3") then {
	removeAllActions SupplyBox3;
	SupplyBox3 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox3 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox4") then {
	removeAllActions SupplyBox4;
	SupplyBox4 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox4 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox5") then {
	removeAllActions SupplyBox5;
	SupplyBox5 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox5 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox6") then {
	removeAllActions SupplyBox6;
	SupplyBox6 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox6 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox7") then {
	removeAllActions SupplyBox7;
	SupplyBox7 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox7 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox8") then {
	removeAllActions SupplyBox8;
	SupplyBox8 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox8 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox9") then {
	removeAllActions SupplyBox9;
	SupplyBox9 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox9 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox10") then {
	removeAllActions SupplyBox10;
	SupplyBox10 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox10 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox11") then {
	removeAllActions SupplyBox11;
	SupplyBox11 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox11 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};

if (!isNil "SupplyBox12") then {
	removeAllActions SupplyBox12;
	SupplyBox12 addAction["<t color='#cccccc'>Virtual Ammobox</t>", "VAS\open.sqf"];
	this addAction["<t color='#cccccc'>Virtual Arsenal</t>", "arsenalbox.sqf"];
	SupplyBox12 addAction["<t color='#cccccc'>Save gear</t>", "gearsave.sqf"];
};