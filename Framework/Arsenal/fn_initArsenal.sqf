/*
 * Author: [1st ECOM] flaver
 * Loads the content out of the config
 * and saves it in the missionNamespace
 *
 * Arguments:
 * NONE

 * Return Value:
 * Void
 *
 */

private _resultArray = [];

//Load items and add them to result
{
  _resultArray pushBack _x;
} count getArray(missionConfigFile >> "CfgArsenalSystem" >> "items");
