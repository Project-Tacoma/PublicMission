#include "..\..\script_common_macros.hpp"

params['_type'];

//if !({isNil{missionNamespace getVariable[format[]]}}) exitWith {};
//Add tick
[{
  params["_args", "_idPFH"];
  _resource = _args select 0;
  [_resource, 10] call FUNC(addResource);
}, 10 , [_x]] call CBA_fnc_addPerFrameHandler;
