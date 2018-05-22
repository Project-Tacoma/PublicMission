_sectors = getArray(missionConfigFile >> "CfgSector" >> "sectors");

{
  _markerName = getText(missionConfigFile >> "CfgSector" >> _x >> "marker");
  _markerPos = getMarkerPos _markerName;

  deleteMarker _markerName;

  _marker = createMarker [_markerName, _markerPos];
  _marker setMarkerShape "RECTANGLE";
  _marker setMarkerSize [400, 400];
  _marker setMarkerColor "ColorOpfor";

  //Create activation trigger
  _t=createTrigger["EmptyDetector",_markerPos,false];
	_t setTriggerArea[400,400,(markerDir _markerName),true];
	_t setTriggerTimeout[2,2,2,true];
	_t setTriggerActivation["ANYPLAYER","PRESENT",TRUE];
  _t setTriggerStatements [
    //Condition
    "this",

    //onActivate
    (format["['%1'] call pta_framework_fnc_initTask", _x]),

    //onDecativte
    ""
  ];
  nil
} count _sectors;
