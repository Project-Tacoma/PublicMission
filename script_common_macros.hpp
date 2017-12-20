#include "\x\cba\addons\main\script_macros_mission.hpp"


#define PREP(var) GVAR(var) = compile preProcessFileLineNumbers 'Framework\COMPONENT\functions\fnc_##var.sqf'
#define FUNC(functionName) call GVAR(functionName)
#define EFUNC(var1,var2) call PREFIX##_##var1##_##var2
