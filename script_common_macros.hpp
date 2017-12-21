#include "\x\cba\addons\main\script_macros_mission.hpp"

#define CONSTVAR(var) var = compileFinal (if (var isEqualType "") then {var} else {str(var)})
/*
#define PREP(var) GVAR(var) = compile preProcessFileLineNumbers 'Framework\COMPONENT\functions\fnc_##var.sqf'
#define FUNC(functionName) call GVAR(functionName)
#define EFUNC(var1,var2) call PREFIX##_##var1##_##var2*/
