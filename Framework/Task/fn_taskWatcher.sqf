#include "..\..\script_common_macros.hpp"
[{
   params["_args", "_idPFH"];
	_sectors = getArray(missionConfigfile >> "CfgSector" >> "sectors");
		{
			_tasks = missionNamespace getVariable[(format["pta_sector_tasks_%1", _x]), []];
      _currentSector = _x;
      _markerName = getText(missionConfigfile >> "CfgSector" >> _currentSector >> "marker");

			if !(_tasks isEqualTo []) then {
				{
					_condition = getText(missionConfigfile >> "CfgTaskSystem" >> _x >> "winCond");
					if(call compile (_condition)) then {
            _tasks deleteAt _forEachIndex;
		       [_x, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;

           if (count(_tasks) == 0) then {
              missionNamespace setVariable [(format["pta_sector_tasks_%1", _currentSector]), ["s"]];
           } else {
              missionNamespace setVariable [(format["pta_sector_tasks_%1", _currentSector]), _tasks];
           };

           _count = 0;
            {
              if(side _x == opfor && ((getMarkerPos _markerName) distance _x < 400)) then {
              	_count = _count + 1;
              };
              nil
            } count allUnits;

           if (count(_tasks) == 0 && _count == 0) then {
              ["pta_onSectorConquered",[_currentSector]] call CBA_fnc_GlobalEvent;
           };

					};

          _count = 0;
           {
             if(side _x == opfor && ((getMarkerPos _markerName) distance _x < 400)) then {
               _count = _count + 1;
             };
             nil
           } count allUnits;

          if (_x == 's' && _count == 0) then {
            missionNamespace setVariable [(format["pta_sector_tasks_%1", _currentSector]), []];
            ["pta_onSectorConquered",[_currentSector]] call CBA_fnc_GlobalEvent;
          };

					nil
				} forEach _tasks;
			};
			nil
		} count _sectors;
}, 10 , []] call CBA_fnc_addPerFrameHandler;
