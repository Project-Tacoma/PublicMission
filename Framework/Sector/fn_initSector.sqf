_sectors = getArray(missionConfigFile >> "CfgSector" >> "sectors");

{
  _markerName = getText(missionConfigFile >> "CfgSector" >> _x >> "marker");
  _markerPos = getMarkerPos _markerName;

  deleteMarker _markerName;

  _marker = createMarker [_markerName, _markerPos];
  _marker setMarkerShape "RECTANGLE";
  _marker setMarkerSize [400, 400];
  _marker setMarkerColor "ColorOpfor";

  nil
} count _sectors;
