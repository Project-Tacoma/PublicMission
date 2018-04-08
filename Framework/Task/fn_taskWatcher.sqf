#include "..\..\script_common_macros.hpp"

	null = [] spawn {
		
		while{true} do {
		
		_sectors = getArray(missionConfigfile >> "CfgSectors" >> "sectors");
		
		{
			_tasks = missionNamespace getVariable[(format["pta_sector_tasks_%1", _x]), []];
			diag_log format["%1", _tasks];
			if !(_tasks isEqualTo []) then {
				{
				
					_condition = getText(missionConfigfile >> "CfgTaskSystem" >> _x >> "winCond");
					diag_log format["%1", _condition];
					if(call compile (_condition)) then {
					diag_log format["%1", 'here'];
						 [_x, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
					};
					nil
				} count _tasks;
			};
			
			nil
		} count _sectors;
		
		sleep 5;
	};
};