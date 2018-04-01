#include "..\..\script_common_macros.hpp"

cutRsc ["Pta_UI", "PLAIN"];

((GET_PLAYER_UI) displayCtrl FULE) ctrlSetText format["%1: &2", localize "STR_pta_ui_fule", 100];
((GET_PLAYER_UI) displayCtrl OIL) ctrlSetText format["%1: &2", localize "STR_pta_ui_oil", 100];
((GET_PLAYER_UI) displayCtrl SULFUR) ctrlSetText format["%1: &2", localize "STR_pta_ui_sulfur", 100];

((GET_PLAYER_UI) displayCtrl MORAL) ctrlSetText format["%1: &2", localize "STR_pta_ui_moral", call FUNC(getTicket)];
