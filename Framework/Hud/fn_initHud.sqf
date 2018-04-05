#include "..\..\script_common_macros.hpp"

waitUntil {!(isNull (findDisplay 46))};

cutRsc ["Pta_UI", "PLAIN"];

_fuelText = parseText format["<t size='1.25'> %1 </t> <br/><t size='1.5' align='center'>%2</t> ", localize "STR_pta_ui_fuel", (['Fuel'] call FUNC(getResource))];
_dieselText = parseText format["<t size='1.25'> %1 </t> <br/><t size='1.5' align='center'>%2</t> ", localize "STR_pta_ui_oil", (['Diesel'] call FUNC(getResource))];
_keroseneText = parseText format["<t size='1.25'> %1 </t> <br/><t size='1.5' align='center'>%2</t> ", localize "STR_pta_ui_sulfur", (['Kerosene'] call FUNC(getResource))];
_moralText = parseText format["<t size='1.25'> %1 </t> <br/><t size='1.5' align='center'>%2</t> ", localize "STR_pta_ui_moral", (call FUNC(getTicket))];

((GET_PLAYER_UI) displayCtrl FUEL) ctrlSetStructuredText _fuelText;
((GET_PLAYER_UI) displayCtrl DIESEL) ctrlSetStructuredText _dieselText;
((GET_PLAYER_UI) displayCtrl KEROSENE) ctrlSetStructuredText _keroseneText;
((GET_PLAYER_UI) displayCtrl MORAL) ctrlSetStructuredText _moralText;
