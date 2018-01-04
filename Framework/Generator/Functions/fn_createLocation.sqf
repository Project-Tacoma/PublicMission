/*
 * Author: [1st] Commander
 *Set Location of the Mission
 *
 * 0: Type of needed Location
 *
 * Return Value:
 * Positionsarray
 *
 * Example:
 * ["house"] call framework_fnc_createLocation
 *
 * Public: [Yes/No]
 */

 params ["_type"];
 private ["_pos"];

/*switch (_type) do {
    //cases (insertable by snippet)
    case ("house"): {
      _pos = [getMarkerPos "Basis", 800, 5000, 3, 0, 35, 0] call BIS_fnc_findSafePos;
    };
};*/
while {true} do {
    _pos = [getMarkerPos "Basis", 800, 5000, 3, 0, 35, 0] call BIS_fnc_findSafePos;
    sleep 0.1;
    if ((_pos select 0 > 0) AND  (_pos select 1 > 0)) exitWith {};
};



 _pos
