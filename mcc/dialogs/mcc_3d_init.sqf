#define MCC3D_IDD 8000
#define MCC_FACTION 8008
#define MCC_UNIT_TYPE 8001
#define MCC_UNIT_CLASS 8002
#define MCC_NAMEBOX 8003
#define MCC_INITBOX 8004
#define MCC_PRESETS 8005
#define MCC_SETTING_EMPTY 8006
#define MCC_ZONE_LOC 8007

#define MCC_3DDOCIDC 8017
#define MCC_3DCargoGen 8018
#define MCC_3dTasksControlsIDC 8020

ctrlShow [MCC_3DDOCIDC,false];
ctrlShow [MCC_3DCargoGen,false];
ctrlShow [MCC_3dTasksControlsIDC,false];

disableSerialization;
private ["_mccdialog","_comboBox","_displayname","_x"];

MCC3DInitDone = false;
missionNamespace setVariable ["MCC_mcc_screen",1];

_mccdialog = findDisplay MCC3D_IDD;
uiNamespace setVariable ["MCC3D_Dialog", _this select 0];

//track Units
MCC_trackMarkerHandler3DDialog = ((uiNamespace getVariable "MCC3D_Dialog") displayCtrl 0) ctrladdeventhandler ["draw","_this call MCC_fnc_trackUnits;"];

((uiNamespace getVariable "MCC3D_Dialog") displayCtrl 0) ctrlMapAnimAdd [0, uiNamespace getVariable "MCC3D_DialogMapScale", getpos MCC_3D_CAM];
ctrlMapAnimCommit ((uiNamespace getVariable "MCC3D_Dialog") displayCtrl 0);

_comboBox = _mccdialog displayCtrl MCC_FACTION;		//fill combobox CFG factions
	lbClear _comboBox;
	{
		_displayname = format ["%1(%2)",_x select 0,_x select 1];
		_comboBox lbAdd _displayname;
	} foreach U_FACTIONS;
	_comboBox lbSetCurSel MCC_faction_index;

_comboBox = _mccdialog displayCtrl MCC_UNIT_TYPE;		//fill combobox CFG unit
lbClear _comboBox;
{
	_displayname =  _x;
	_index = _comboBox lbAdd _displayname;
} foreach ["Пехота", "Транспорт", "Бронетехника/Статичные", "Мотоциклы", "Вертолеты", "Самолеты", "Лодки", "D.O.C", "Патроны", "Объекты (Укрепления)", "Объекты (Могилы)", "Объекты (Мебель)",
			"Объекты (Рынок)", "Объекты (Строительство)", "Объекты (Знаки)", "Объекты (Флаги)", "Объекты (Военное)","Объекты (Маленькие)", "Объекты (Обломки)", "Объекты (Подводные)", "Объекты (Палатки)","Объекты (Мусор)","Объекты (Лампы)",
			"Объекты (Контейнеры)","Объекты (Помощники)","Объекты (Тренировка)","Мины","Животные","Структуры (Аэропорт)","Структуры (Военное)","Структуры (Культурные)","Структуры (Стены)","Структуры (Инфраструктура)","Структуры (Коммерция)",
			"Структуры (Промышленное)","Структуры (Город)","Структуры (Деревня)","Структуры (Забор)","Структуры (Главное)","Рюкзаки","Данные","Вещи","Вещи (На голову)","Вещи (Униформа)","Вещи (Бронежилеты)","Оружие (Модули)","Оружие (Пистолеты)",
			"Оружие (Основное)","Оружие (Гранатометы)","Палатки с возрождением"];
_comboBox lbSetCurSel MCC_class_index;

_comboBox = _mccdialog displayCtrl MCC_SETTING_EMPTY;		//fill combobox Empty on/off
lbClear _comboBox;
{
	_displayname = format ["%1",_x select 0];
	_comboBox lbAdd _displayname;
} foreach MCC_spawn_empty;
_comboBox lbSetCurSel MCC_empty_index;

_comboBox = _mccdialog displayCtrl MCC_ZONE_LOC;		//fill zone locations
lbClear _comboBox;
{
	_displayname = _x select 0;
	_comboBox lbAdd _displayname;
} foreach MCC_ZoneLocation;
_comboBox lbSetCurSel mcc_hc;	//MCC_ZoneLocation_index;

sleep 1;
MCC3DInitDone = true;