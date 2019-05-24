//============================================================MCC_fnc_curatorAtmoshphere========================================================================================
// Manage atmosphere
//===========================================================================================================================================================================
private ["_pos","_module","_resualt","_atmosphere","_weather"];
_module = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _module) exitWith {};

_pos = getpos _module;

//did we get here from the 2d editor?
if (typeName (_module getVariable ["atmosphere",true]) == typeName 0) exitWith {

    _effect = (["custom","random","clearWeather","cloudy","rain","stormy","sandstorm","storm","snow","heatwave"]) select (_module getVariable ["atmosphere",1]);
    _dust = _module getVariable ["dust",false];
    _snow = _module getVariable ["snow",false];
    _papers = _module getVariable ["newspapers",false];
    _mist = _module getVariable ["mist",false];
    _fog = _module getVariable ["fog",false];
    _leaves = _module getVariable ["leaves",false];
    _wind = _module getVariable ["windsounds",false];
    _changeTime = _module getVariable ["changeTime",false];

    _color = (["none","cold","murky","green","sand","yellow","hot","gray"]) select (_module getVariable ["filtercolor",0]);
    _grain = (["none","low","medium","heavy"]) select (_module getVariable ["filtergrain",0]);
    _weather = [];

    //If change Time
    if (_changeTime) then {
        MCC_date    = date;
        MCC_date    = [(MCC_date select 0) + floor (random 10 - random 10), floor ((random 12)+1)  ,  floor ((random 28)+1), floor ((random 24)+1),  floor (random 60)];
        publicVariable "MCC_date";

        [MCC_date] remoteExec ["MCC_fnc_setTime",0];
    };

    if (_effect == "random") then {
        _effect = [["clearWeather","cloudy","rain","stormy","sandstorm","storm","snow","heatwave"],[0.4,0.15,0.15,0.15,0.045,0.045,0.045,0.045]] call bis_fnc_selectRandomWeighted;
    };

    switch (_effect) do {
        case "clearWeather": {
            _weather = [(random 0.2), (random 0.2), (random 0.2), 0, 0,(random 0.1),0];
            _effect = "custom";
        };

        case "cloudy": {
            _weather =[0.4 + (random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2),0 +(random 0.2),0];
            _effect = "custom";
        };

        case "rain": {
            _weather = [0.6 + (random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2),0.1 +(random 0.2),0];
            _effect = "custom";
        };

        case "stormy": {
            _weather = [0.8 + (random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2),0.3 +(random 0.2),0];
            _effect = "custom";
        };
    };


	[_effect,false,_dust,_snow,_papers,_mist,_fog,_leaves,_wind,_color,_grain,_weather] spawn MCC_fnc_ppEffects;
};

//Not curator exit
if (!(local _module) || isnull curatorcamera) exitWith {};

_resualt = ["Добавить Атмосферу",[
 						["Атмосфера",["Своя","Рандом","Ясно","Облачно","Дождь","Гроза","Песочная буря","Шторм","Снег","Тепловой удар","Убрать все"]],
                        ["Рандомная погода",false],
 						["Пыль",false],
 						["Снег",false],
 						["Бумага",false],
 						["Дымка",false],
 						["Туман",false],
 						["Листья",false],
 						["Звук Ветра",false],
 						["Цвет",["Нет","Холодный","Мрачный","Зеленый","Песочный","Желтый","Теплый","Серый"]],
 						["Зернистость",["Нет","Мало","Средне","Много"]],
 						["Облачность",10],
 						["Ветер",10],
 						["Волны",10],
 						["Дождь",10],
 						["Молнии",10],
 						["Туман",10]
 					  ]] call MCC_fnc_initDynamicDialog;

if (count _resualt == 0) exitWith {deleteVehicle _module};
private ["_effect","_dust","_snow","_papers","_mist","_fog","_leaves","_wind","_color","_grain","_weather","_preDefinedWeather"];
_effect = (["custom","random","clearWeather","cloudy","rain","stormy","sandstorm","storm","snow","heatwave","clear"]) select (_resualt select 0);
_changeTime = _resualt select 1;
_dust = _resualt select 2;
_snow = _resualt select 3;
_papers = _resualt select 4;
_mist = _resualt select 5;
_fog = _resualt select 6;
_leaves = _resualt select 7;
_wind = _resualt select 8;
_color = (["none","cold","murky","green","sand","yellow","hot","gray"]) select (_resualt select 9);
_grain = (["none","low","medium","heavy"]) select (_resualt select 10);
_weather = [(_resualt select 11)/10,(_resualt select 12)/10,(_resualt select 13)/10,(_resualt select 14)/10,(_resualt select 15)/10,(_resualt select 16)/10];

//If change Time
if (_changeTime) then {
    MCC_date    = date;
    MCC_date    = [(MCC_date select 0) + floor (random 10 - random 10), floor ((random 12)+1)  ,  floor ((random 28)+1), floor ((random 24)+1),  floor (random 60)];
    publicVariable "MCC_date";

    [MCC_date] remoteExec ["MCC_fnc_setTime",0];
};

if (_effect == "random") then {
	_effect = [["clearWeather","cloudy","rain","stormy","sandstorm","storm","snow","heatwave"],[0.4,0.15,0.15,0.15,0.045,0.045,0.045,0.045]] call bis_fnc_selectRandomWeighted;
};

switch (_effect) do {
    case "clearWeather": {
    	_weather = [(random 0.2), (random 0.2), (random 0.2), 0, 0,(random 0.1),0];
    	_effect = "custom";
    };

    case "cloudy": {
    	_weather =[0.4 + (random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2), 0.4 +(random 0.2),0 +(random 0.2),0];
    	_effect = "custom";
    };

    case "rain": {
    	_weather = [0.6 + (random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2), 0.6 +(random 0.2),0.1 +(random 0.2),0];
    	_effect = "custom";
    };

    case "stormy": {
    	_weather = [0.8 + (random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2), 0.8 +(random 0.2),0.3 +(random 0.2),0];
    	_effect = "custom";
    };
};

[_effect,false,_dust,_snow,_papers,_mist,_fog,_leaves,_wind,_color,_grain,_weather] remoteExec ["MCC_fnc_ppEffects", 0, true];


deleteVehicle _module;