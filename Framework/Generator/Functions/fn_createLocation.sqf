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
 * ["house_position"] call framework_fnc_createLocation
 *
 * Public: [Yes/No]
 */

 params ["_type"];

 private _pos = [getMarkerPos "Basis", 800, 5000, 3, 0, 20, 0] call BIS_fnc_findSafePos;

 _pos
