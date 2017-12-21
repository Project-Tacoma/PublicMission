params["_query", "_params"];

if (!isNil "pt_running_query") then {
    waitUntil {!pt_running_query};
};

//lock query
pt_running_query = true;

//clear the old result
pt_result_content = nil;

_queryString = format["0:sql:%1", _query];

{
  _queryString = _queryString + format[":%1",_x];
} forEach _params;

pt_result_content = call compile ("extDB3" callExtension _queryString);
publicVariableClient "pt_result_content";

//unlock query
pt_running_query = false;
