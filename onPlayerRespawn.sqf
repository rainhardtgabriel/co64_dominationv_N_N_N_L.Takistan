waitUntil{!isNull player};

["JIP",["Your standard Gear was selected."]] call BIS_fnc_showNotification;

_loadout = (player getVariable "f_var_assignGear");
_slotName = format ["%1", player];

// UnitNATO_CO co
// UnitNATO_CO_M m
// UnitNATO_DC dc
// UnitNATO_DC_D uav
// UnitNATO_ST1_SP sp
// UnitNATO_ST1_SN sn
// UnitNATO_C1_AT rat
// UnitNATO_C1_AR ar
// UnitNATO_A3_AAR aar
// UnitNATO_B2_FTL ftl
// UnitNATO_CSL_SL dc
// UnitNATO_CSL_M m
// UnitNATO_IFV1_D vd
// UnitNATO_IFV1_C vc
// UnitNATO_IFV1_G vg
// UnitNATO_AH1_P pp
// UnitNATO_AH1_CP ppc
// UnitNATO_AFW1_P pp
// UnitNATO_TH2_G2 pc

switch true do {
	case (["_AT", _slotName] call BIS_fnc_inString): {
		_loadout = "rat";
	};
	case (["_AR", _slotName] call BIS_fnc_inString): {
		_loadout = "ar";
	};
	case (["_AAR", _slotName] call BIS_fnc_inString): {
		_loadout = "aar";
	};
	case (["_FTL", _slotName] call BIS_fnc_inString): {
		_loadout = "ftl";
	};
	case (["_SL", _slotName] call BIS_fnc_inString): {
		_loadout = "dc";
	};
	case (["_M", _slotName] call BIS_fnc_inString): {
		_loadout = "m";
	};
	case (["_CO", _slotName] call BIS_fnc_inString): {
		_loadout = "co";
	};	
	case (["_DC_D", _slotName] call BIS_fnc_inString): {
		_loadout = "uav";
	};
	case (["_DC", _slotName] call BIS_fnc_inString): {
		_loadout = "dc";
	};
	case (["_SP", _slotName] call BIS_fnc_inString): {
		_loadout = "sp";
	};
	case (["_SN", _slotName] call BIS_fnc_inString): {
		_loadout = "sn";
	};
	case (["_D", _slotName] call BIS_fnc_inString): {
		_loadout = "vd";
	};
	case (["_C", _slotName] call BIS_fnc_inString): {
		_loadout = "vc";
	};
	case (["_G", _slotName] call BIS_fnc_inString): {
		_loadout = "vg";
	};
	case (["_P", _slotName] call BIS_fnc_inString): {
		_loadout = "pp";
	};
	case (["_CP", _slotName] call BIS_fnc_inString): {
		_loadout = "ppc";
	};
	case (["_G2", _slotName] call BIS_fnc_inString): {
		_loadout = "pc";
	};
	default {
		diag_log format["Slot: %1 couldnt be machted to a loadout!!!------------", _slotName];
	}
};
[_loadout,player] call f_fnc_assignGear;
