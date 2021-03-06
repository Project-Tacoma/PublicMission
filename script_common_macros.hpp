#define PREFIX pta
#define COMPONENT framework

#define PT_Dev true
#define FUEL 1000
#define DIESEL 1001
#define KEROSENE 1002
#define MORAL 1003

#define MAJOR 1
#define MINOR 0
#define PATCHLVL 0

#include "\x\cba\addons\main\script_macros_mission.hpp"

#define CONSTVAR(var) var = compileFinal (if (var isEqualType "") then {var} else {str(var)})
#define FETCH_CONST(var) (call var)
#define DB "extDB3" callExtension
#define GET_PLAYER_UI uiNamespace getVariable 'Pta_UI'
