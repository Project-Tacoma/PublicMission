#include "..\..\script_common_macros.hpp"
[{
   params["_args", "_idPFH"];
	_sectors = getArray(missionConfigfile >> "CfgSector" >> "sectors");
		{
			_tasks = missionNamespace getVariable[(format["pta_sector_tasks_%1", _x]), []];
      _currentSector = _x;
			if !(_tasks isEqualTo []) then {
				{
					_condition = getText(missionConfigfile >> "CfgTaskSystem" >> _x >> "winCond");
					if(call compile (_condition)) then {
						 [_x, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
             ["pta_onSectorConquered",[_currentSector]] call CBA_fnc_GlobalEvent;
					};
					nil
				} count _tasks;
			};
			nil
		} count _sectors;
}, 10 , []] call CBA_fnc_addPerFrameHandler;
