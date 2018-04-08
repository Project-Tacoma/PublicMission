#include "..\..\script_common_macros.hpp"

params['_type'];

[{
  params["_args", "_idPFH"];
  _resource = _args select 0;
  [_resource, 10] call FUNC(addResource);
}, 10 , [_type]] call CBA_fnc_addPerFrameHandler;
