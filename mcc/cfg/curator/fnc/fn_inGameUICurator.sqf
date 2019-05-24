//============================================================MCC_fnc_inGameUICurator====================================================================================
// setting MCC's UI
//===========================================================================================================================================================================
private ["_pos","_module","_factionArray","_resualt","_civRelations"];
_module = param [0, objNull, [objNull]];
if (isNull _module) exitWith {deleteVehicle _module};

//Not curator exit
if !(local _module) exitWith {};

_pos = getpos _module;

 _resualt = ["UI Настройки",[
 						["3-е Лицо",["Выключено","Только в транспорте","Только в Воздухе","Включено"]],
 						["Компас HUD",true],
 						["Компас показывает отряд",true],
 						["Маркеры отрядов на карте",true],
 						["Маркеры бойцов на карте",true],
 						["Имена игроков",true],
 						["Имена игроков только когда наводишься",true],
 						["Эффект подавления",true],
 						["Индикатор стрельбы",["Реалистичный","Аркадный","Выключено"]],
 						["Тикеты",true],
 						["Туториал",true]
 					  ]] call MCC_fnc_initDynamicDialog;

if (count _resualt == 0) exitWith {deleteVehicle _module};

//Start
_resualt remoteExec ["MCC_fnc_inGameUI", 0, true];
deleteVehicle _module;