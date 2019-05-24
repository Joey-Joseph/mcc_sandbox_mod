//IED small
[
    "MCC_ied_small",
    "EDITBOX",
    ["IEDs small","Array first element is display name, second is the object class"],
    ["MCC Classes", "IED"],
    '[["Пластиковые ящики","Land_CratesPlastic_F"],["Пластиковая канистра","Land_CanisterPlastic_F"],["Мешок","Land_Sack_F"],["Дорожный конус","RoadCone"],["Колесо","Land_Tyre_F"],["Радио","Land_SurvivalRadio_F"],["Чемодан","Land_Suitcase_F"],["Пила","Land_Grinder_F"],["Мультиметр","Land_MultiMeter_F"],["Пластиковая бутылка","Land_BottlePlastic_V1_F"],["Канистра с бензином","Land_CanisterFuel_F"],["Радио","Land_FMradio_F"],["Камера","Land_HandyCam_F"],["Ноутбук","Land_Laptop_F"],["Мобильный телефон","Land_MobilePhone_old_F"],["Смартфон","Land_MobilePhone_smart_F"],["ДВ","Land_PortableLongRangeRadio_F"],["Спутниковый телефон","Land_SatellitePhone_F"],["Деньги","Land_Money_F"]]',
    true,
    {
        params ["_value"];
        MCC_ied_small = call compile _value;
    }
] call CBA_Settings_fnc_init;

//IED medium
[
    "MCC_ied_medium",
    "EDITBOX",
    ["IEDs medium","Array first element is display name, second is the object class"],
    ["MCC Classes", "IED"],
    '[["Тележка","Land_WheelCart_F"],["Железная бочка","Land_MetalBarrel_F"],["Пластиковая бочка","Land_BarrelSand_F"],["Трубы","Land_Pipes_small_F"],["Деревянные ящики","Land_CratesShabby_F"],["Деревянный ящик","Land_WoodenBox_F"],["Шлакоблоки","Land_Ytong_F"],["Куча мешков","Land_Sacks_heap_F"], ["Бочка с водой","Land_WaterBarrel_F"],["Резервуар с водой","Land_WaterTank_F"]]',
    true,
    {
        params ["_value"];
        MCC_ied_medium = call compile _value;
    }
] call CBA_Settings_fnc_init;

//IED wrecks
[
    "MCC_ied_wrecks",
    "EDITBOX",
    ["IEDs wrecks","Array first element is display name, second is the object class"],
    ["MCC Classes", "IED"],
    '[["МИ-48","Land_UWreck_Heli_Attack_02_F"],["БМП2","Land_Wreck_BMP2_F"],["Машина","Land_Wreck_Car_F"],["Машина2","Land_Wreck_Car2_F"],["Разобранная машина","Land_Wreck_CarDismantled_F"],["Блэкфут","Land_Wreck_Heli_Attack_01_F"],["Хаммер","Land_Wreck_HMMWV_F"],["Хантер","Land_Wreck_Hunter_F"],["Внедорожник","Land_Wreck_Offroad2_F"],["Шкода","Land_Wreck_Skodovka_F"],["Слэммер","Land_Wreck_Slammer_F"],["Т72","Land_Wreck_T72_hull_F"],["Грузовик","Land_Wreck_Truck_dropside_F"],["Грузовик","Land_Wreck_Truck_F"],["УАЗ","Land_Wreck_UAZ_F"],["Фургон","Land_Wreck_Van_F"],["Остатки машины","Land_Wreck_Car3_F"],["Остатки БРДМ","Land_Wreck_BRDM2_F"],["Остатки внедорожника","Land_Wreck_Offroad_F"],["Остатки грузовика","Land_Wreck_Truck_FWreck"]]',
    true,
    {
        params ["_value"];
        MCC_ied_wrecks = call compile _value;
    }
] call CBA_Settings_fnc_init;

//IED Hidden
[
    "MCC_ied_hidden",
    "EDITBOX",
    ["IEDs wrecks","Array first element is display name, second is the object class"],
    ["MCC Classes", "IED"],
    '[["В земле маленькое","IEDLandSmall_Remote_Ammo"],["В земле большое","IEDLandBig_Remote_Ammo"],["Город маленькое","IEDUrbanSmall_Remote_Ammo"],["Город большое","IEDUrbanBig_Remote_Ammo"]]',
    true,
    {
        params ["_value"];
        MCC_ied_hidden = call compile _value;
    }
] call CBA_Settings_fnc_init;

//-======================= Convoy ==========================
//HVT
[
    "MCC_convoyHVT",
    "EDITBOX",
    ["HVT","High value target, array first element is display name, second is the unit class"],
    ["MCC Classes", "Convoy"],
    '[["Нет","0"],["С. Офицер","B_officer_F"],["С. Пилот","B_Helipilot_F"],["К. Офицер","O_officer_F"],["К. Пилот","O_helipilot_F"],["З. Командир","I_officer_F"],["Гражданский","C_man_polo_1_F"],["Г. Пилот","C_man_pilot_F"],["Орест","C_Orestes"],["Никос","C_Nikos"],["Охотник","C_man_hunter_1_F"],["Керри","I_G_Story_Protagonist_F"]]',
    true,
    {
        params ["_value"];
        MCC_convoyHVT = call compile _value;
    }
] call CBA_Settings_fnc_init;

//HVT
[
    "MCC_convoyHVTcar",
    "EDITBOX",
    ["HVT Vehicle","High value target, array first element is display name, second is the vehicle class"],
    ["MCC Classes", "Convoy"],
    '[["Стандарт",""],["Охотник","B_Hunter_F"],["Страйдер","I_MRAP_03_F"],["Квадроцикл","B_Quadbike_F"],["Ифрит","O_Ifrit_F"],["Внедорожник","C_Offroad_01_F"],["SUV","C_SUV_01_F"],["Хэтчбек","C_Hatchback_01_F"]]',
    true,
    {
        params ["_value"];
        MCC_convoyHVTcar = call compile _value;
    }
] call CBA_Settings_fnc_init;