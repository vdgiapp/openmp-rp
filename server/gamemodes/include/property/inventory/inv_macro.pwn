
#define MAX_CARRIED_WEIGHT      (40.0)
#define MAX_INV_ITEMS           (60)

#define MAX_DROP_ITEMS          (2000)
#define DROP_ITEM_TIME          (300000)

enum ENUM_INVENTORY_INFO {
    ItemID,
    Amount, // So luong
    Float:Durable, // Do ben
    IsEquipped,
    MagType,
    MagAmmo, // Bang dan / dan trong sung
    ExData
}
new InventoryData[MAX_PLAYERS][MAX_INV_ITEMS][ENUM_INVENTORY_INFO];

enum ENUM_DROPPED_ITEM {
    STREAMER_TAG_OBJECT:Object,
    STREAMER_TAG_3D_TEXT_LABEL:Label,
    Params[128],
    Timer
}
new DroppedItem[MAX_DROP_ITEMS][ENUM_DROPPED_ITEM];

enum ENUM_ITEM_INFO {
    ItemID,
    Name[64],
    Float:Weight, // kilogram
    Model
}
new const ItemInfo[][ENUM_ITEM_INFO] = {

    {0,     "Trong",                   0.0,        3086},
    {1,     "Brass knuckles",          0.1,        331},
    {2,     "Golf club",               0.44,       333},
    {3,     "Baton",                   0.037,      334},
    {4,     "Knife",                   0.32,       335},
    {5,     "Gay bong chay",           1.0,        336},
    {6,     "Cai xeng",                1.5,        337},
    {7,     "Pool cue",                0.54,       338},
    {8,     "Katana",                  1.5,        339},
    {9,     "May cua",                 6.2,        341},

    {10,    "Dien thoai",              0.13,       18868},
    {11,    "Van truot",               3.7,        19878},
    {12,    "May nghe nhac",           0.03,       18875},
    {13,    "Boombox",                 5.2,        2232},

    {14,    "Flower",                  0.3,        325},
    {15,    "Cane",                    0.36,       326},
    {16,    "Luu dan",                 0.18,       342},
    {17,    "Luu dan khoi",            0.5,        1672},
    {18,    "Motolov Cocktail",        0.453,      344},

    {19,    "Bo dam",                  0.355,      19942},
    {20,    "Dinh vi GPS",             0.078,      18875},
    {21,    "Dong ho",                 0.056,      19042},

    {22,    "Standard Pistol",         1.24,       346},
    {23,    "Silenced Pistol",         1.54,       347},
    {24,    "Desert Eagle",            2.0,        348},
    {25,    "Standard Shotgun",        2.62,       349},
    {26,    "Sawnoff Shotgun",         1.65,       350},
    {27,    "Franchi SPAS-12",         3.3,        351},
    {28,    "Micro SMG",               2.7,        352},
    {29,    "MP5 SMG",                 2.54,       353},
    {30,    "AK-47",                   3.47,       355},
    {31,    "M4 Carbine",              2.92,       356},
    {32,    "TEC-9",                   1.4,        372},
    {33,    "Country Rifle",           3.18,       357},
    {34,    "Sniper Rifle",            4.08,       358},

    {35,    "Luu dan choang",          0.37,       1672},
    {36,    "Giam thanh pistol",       0.3,        3028},
    {37,    "Small Backpack",          0.51,       3026},
    {38,    "Average Backpack",        0.94,       19559},
    {39,    "Large Backpack",          1.36,       1310},

    {40,    "Mu bao hiem",             1.6,        18645},
    {41,    "Binh son",                0.2,        365},
    {42,    "Binh cuu hoa",            2.26,       366},
    {43,    "Camera",                  0.72,       367},
    {44,    "Night Vision Goggles",    0.91,       3070},
    {45,    "Thermal Goggles",         0.91,       3070},
    {46,    "Parachute",               1.5,        371},

    // 9mm Mag
    {47,    ".45 ACP TFSP",            0.006,      19995}, // 7v
    {48,    ".45 ACP TFSP .ext",       0.006,      19995}, // 17v

    // Desert Eagle Mag
    {49,    ".357 Magnum JHP",         0.008,      19995}, // 9.07 mm
    {50,    ".41 Magnum JHP",          0.014,      19995}, // 10.4mm
    {51,    ".50 AE XTP",              0.019,      19995}, // 13.9 mm
    {52,    ".44 Magnum +P+",          0.022,      19995}, // 10.9mm

    // Shotgun + Sawnoff Shotgun + SPAS-12 Mag
    {53,    "12-G BIRDSHOT",           0.0024,     19995}, // 7v
    {54,    "12-G BUCKSHOT",           0.0026,     19995},
    {55,    "12-G SLUG",               0.0097,     19995},

    // Micro SMG Mag
    {56,    ".22 LR solid",            0.0026,     19995}, // 25v
    {57,    ".22 LR solid .ext",       0.0026,     19995}, // 50v
    {58,    "9×21mm FMJ",              0.00745,    19995}, // 20v - dmg > .22 LR
    {59,    "9×21mm FMJ .ext",         0.00745,    19995}, // 40v

    // MP5 Mag
    {60,    "10mm Auto TFSP",          0.005,      19995}, // 20v
    {61,    "10mm Auto TFSP .ext",     0.005,      19995}, // 30v
    {62,    ".40 S&W",                 0.0087,     19995}, // 20v - dmg > 10mm
    {63,    ".40 S&W .ext",            0.0087,     19995}, // 30v

    // AK-47 Mag
    {64,    "7.62×39mm",               0.008,      19995}, // 20v
    {65,    "7.62×39mm .ext",          0.008,      19995}, // 30v

    // M4 Mag
    {66,    "5.56×45mm NATO",          0.0041,     19995}, // 30v

    // Tec-9 Mag
    {67,    "9mm NATO",                0.0083,     19995}, // 32v
    {68,    "9mm NATO .ext",           0.0083,     19995}, // 50v

    // Country rifle
    {69,    ".219 Zipper",             0.004,      2061}, // 6v
    {70,    ".338 ME FTX",             0.013,      2061}, // 6v - higher dmg

    // Sniper rifle
    {71,    ".308 Winchester",         0.0097,     2061}, // 6v
    {72,    ".30-06 SF RN",            0.014,      2061}, // 6v - higher dmg

    // Health
    {73,    "Bang cap cuu",            0.027,      11747},
    {74,    "Thuoc giam dau",          0.15,       2709},
    {75,    "Bo cuu thuong",           0.3,        11738},

    // Food, Drink
    {76,    "Qua tao",                 0.115,      19575},
    {77,    "Qua cam",                 0.14,       19574},
    {78,    "Ca chua",                 0.15,       19577},
    {79,    "Sandwich",                0.25,       19883},
    {80,    "Banh mi",                 0.4,        2769},
    {81,    "Hamburger",               0.3,        2768},
    {82,    "Chan gio xong khoi",      1.2,        19847},
    {83,    "Pizza",                   1.0,        2814},
    {84,    "Thit bo nuong",           0.8,        19882},
    {85,    "Qua chuoi",               0.17,       19578},
    {86,    "Nuoc khoang",             0.7,        19570},
    {87,    "Nuoc tang luc",           0.5,        2647},
    {88,    "Nuoc ep tao",             0.6,        19564},
    {89,    "Nuoc ep cam",             0.6,        19563},
    {90,    "Ca phe",                  0.5,        19835},
    {91,    "Sprunk",                  0.5,        2647},
    {92,    "Sua hop",                 0.6,        19569},
    {93,    "Bia tuoi",                0.7,        2683},
    {94,    "Ruou vang",               0.7,        2683},
    {95,    "Ruou vodka",              0.7,        2683},

    // Misc
    {96,    "Can xang",                0.75,       1650},
    {97,    "Thuoc la",                0.2,        19897},
    {98,    "Cigar",                   0.05,       3044}

};
