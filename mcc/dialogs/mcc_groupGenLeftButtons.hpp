#define MCC_buttonsSpace 0.0769695
class MCC_leftButtonsControls: MCC_RscControlsGroup
{
	idc = -1;
	x = 0.105 * safezoneW + safezoneX;
	y = 0.0711672 * safezoneH + safezoneY;	//0.0439824
	w = 0.0802083 * safezoneW;
	h = 0.53879 * safezoneH;

	class Controls
	{
		class MCC_leftButtonsControlsFrame: MCC_RscText
		{
			idc = -1;
			text = "";

			w = 0.0802083 * safezoneW;	//2.18182
			h = 0.53879 * safezoneH;	//1.81889
			colorBackground[] = { 0.120, 0.120, 0.120,1};
		};

		class MCC_groupGenSpawnButton: MCC_RscButton
		{
			idc = -1;
			text = "Спавн";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Спавн Юнитов и Групп";
			onButtonClick = __EVAL("[6] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.0109958271253347 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_callCASButton: MCC_RscButton
		{
			idc = -1;
			text = "Авиаподдержка"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть меню Авиаподдержки";
			onButtonClick = __EVAL("[4] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.054978585840815 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_airdropButton: MCC_RscButton
		{
			idc = -1;
			text = "Припасы"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть меню Сброса Припасов";
			onButtonClick = __EVAL("[16] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.0989620042993254 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_callArtilleryButton: MCC_RscButton
		{
			idc = -1;
			text = "Артиллерия"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть Меню Артиллерии";
			onButtonClick = __EVAL("[5] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.1429437734002606 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_callEvacButton: MCC_RscButton
		{
			idc = -1;
			text = "Эвакуация"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть Меню Эвакуации";
			onButtonClick = __EVAL("[7] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.1869266420729126 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_callIEDButton: MCC_RscButton
		{
			idc = -1;
			text = "СВУ"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть Меню СВУ";
			onButtonClick = __EVAL("[8] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.2309084111738478 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_callConvoyButton: MCC_RscButton
		{
			idc = -1;
			text = "Конвой"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Открыть Меню Конвоя";
			onButtonClick = __EVAL("[9] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.274890180274783 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_AC130Button: MCC_RscButton
		{
			idc = 620; // idc set to allow hiding button when no mcc_console available
			text = "AC-130"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Спавн AC-130 (использозуйте КОМЛОГ)";
			onButtonClick = "MCC_CASrequestMarker = true;MCC_spawnkind = ['ac-130'];MCC_planeType = ['B_T_VTOL_01_armed_F']";

			x = 0.0057 * safezoneW;
			y = 0.3188719493757182 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_DeleteButton: MCC_RscButton
		{
			idc = -1;
			text = "Кисть"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Меню Кистей";
			onButtonClick = __EVAL("[17] execVM '"+MCCPATH+"mcc\general_scripts\groupGen\controlsHandle.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.3628537184766534 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_roleSelectionButton: MCC_RscButton
		{
			idc = 520;
			text = ""; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Включить/Выключить Меню Ролей";
			onButtonClick =  __EVAL("[6] execVM '"+MCCPATH+"mcc\general_scripts\mcc_start_location.sqf'");

			x = 0.0057 * safezoneW;
			y = 0.4068354875775886 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_curatorButton: MCC_RscButton
		{
			idc = -1;
			text = "Зевс"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Нажмите чтобы открыть Меню Зевса";
			onButtonClick = "uiNameSpace setVariable ['MCC_ZeusOpen',true]";

			x = 0.0057 * safezoneW;
			y = 0.4508172566785238 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};

		class MCC_arsenalButton: MCC_RscButton
		{
			idc = -1;
			text = "Арсенал"; //--- ToDo: Localize;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Нажмите чтобы открыть Виртуальный Арсенал";
			onButtonClick = "closeDialog 0; ['Open',true] call BIS_fnc_arsenal;";

			x = 0.0057 * safezoneW;
			y = 0.494799025779459 * safezoneH;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
	};
};