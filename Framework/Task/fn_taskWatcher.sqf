#include "..\..\script_common_macros.hpp"

params['_task'];

[{
  params["_args", "_idPFH"];
  _resource = _args select 0;
  
  if () exitWith {

  };
}, 10 , [_task]] call CBA_fnc_addPerFrameHandler;
