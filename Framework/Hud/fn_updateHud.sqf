#include "..\..\script_common_macros.hpp"

_fuelText = parseText format["%1: <br/>%2 ", localize "STR_pta_ui_fuel", 100];
((GET_PLAYER_UI) displayCtrl FUEL) ctrlSetStructuredText _fuelText;
((GET_PLAYER_UI) displayCtrl DIESEL) ctrlSetText (format["%1: %2", localize "STR_pta_ui_oil", 100]);
((GET_PLAYER_UI) displayCtrl KEROSENE) ctrlSetText (format["%1: %2", localize "STR_pta_ui_sulfur", 100]);
((GET_PLAYER_UI) displayCtrl MORAL) ctrlSetText format["%1: %2", localize "STR_pta_ui_moral", (call FUNC(getTicket))];
