
#define MAX_CARRIED_WEIGHT      (40.0)
#define MAX_INV_ITEMS           (60)

#define DROP_SPEED              (10.0)
#define DROP_Z_SPEED            (4.0)
#define DROP_GRAVITY            (13.0)

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

enum ENUM_ITEM_INFO {
    Name[64],
    Float:Weight, // kilogram
    Model
}

new const ItemInfo[][ENUM_ITEM_INFO] = {

    {"None",                    0.0,        3086},//                                 0
    {"Brass knuckles",          0.1,        331}, //                    1
    {"Golf club",               0.44,       333},
    {"Baton",                   0.037,      334},
    {"Knife",                   0.32,       335},
    {"Gay bong chay",           1.0,        336}, //                     5
    {"Cai xeng",                1.5,        337},
    {"Pool cue",                0.54,       338},
    {"Katana",                  1.5,        339},
    {"May cua",                 6.2,        341},

    {"Dien thoai",              0.13,       18868}, //                        10
    {"Van truot",               3.7,        19878},
    {"May nghe nhac",           0.03,       18875},
    {"Boombox",                 5.2,        2232},

    {"Flower",                  0.3,        325},
    {"Cane",                    0.36,       326}, //                              15
    {"Luu dan",                 0.18,       342},
    {"Luu dan khoi",            0.5,        1672},
    {"Motolov Cocktail",        0.453,      344},

    {"Bo dam",                  0.355,      19942},
    {"Dinh vi GPS",             0.078,      18875}, //                       20
    {"Dong ho",                 0.056,      19042},

    {"Pistol",                  1.24,       346},
    {"Silenced Pistol",         1.54,       347},
    {"Desert Eagle",            2.0,        348},
    {"Standard Shotgun",        2.62,       349}, //                   25
    {"Sawnoff Shotgun",         1.65,       350},
    {"Franchi SPAS-12",         3.3,        351},
    {"Micro SMG",               2.7,        352},
    {"MP5 SMG",                 2.54,       353},
    {"AK-47",                   3.47,       355}, //                    30
    {"M4 Carbine",              2.92,       356},
    {"TEC-9",                   1.4,        372},
    {"Country Rifle",           3.18,       357},
    {"Sniper Rifle",            4.08,       358},

    {"Luu dan choang",          0.37,       1672}, //                   35
    {"Giam thanh pistol",       0.3,        3028},
    {"Normal Backpack",         0.51,       3026},
    {"Travel Backpack",         0.94,       19559},
    {"Large Backpack",          1.36,       1310},

    {"Mu bao hiem",             1.6,        18645}, //                  40
    {"Binh son",                0.2,        365},
    {"Binh cuu hoa",            2.26,       366},
    {"Camera",                  0.72,       367},
    {"Night Vision Goggles",    0.91,       3070},
    {"Thermal Goggles",         0.91,       3070}, //                   45
    {"Parachute",               1.5,        371},

    // 9mm Mag
    {".45 ACP TFSP",            0.006,      19995}, // 7v
    {".45 ACP TFSP (.ext)",     0.006,      19995}, // 17v

    // Desert Eagle Mag
    {".357 Magnum JHP",         0.008,      19995}, // 9.07 mm
    {".41 Magnum JHP",          0.014,      19995}, // 10.4mm                 50
    {".50 AE XTP",              0.019,      19995}, // 13.9 mm
    {".44 Magnum +P+",          0.022,      19995}, // 10.9mm

    // Shotgun + Sawnoff Shotgun + SPAS-12 Mag
    {"12-G BIRDSHOT",           0.0024,     19995}, // 7v
    {"12-G BUCKSHOT",           0.0026,     19995},
    {"12-G SLUG",               0.0097,     19995}, //                         55

    // Micro SMG Mag
    {".22 LR solid",            0.0026,     19995}, // 25v
    {".22 LR solid (.ext)",     0.0026,     19995}, // 50v
    {"9×21mm FMJ",              0.00745,    19995}, // 20v - dmg > .22 LR
    {"9×21mm FMJ (.ext)",       0.00745,    19995}, // 40v

    // MP5 Mag
    {"10mm Auto TFSP",          0.005,      19995}, // 20v                     60
    {"10mm Auto TFSP (.ext)",   0.005,      19995}, // 30v
    {".40 S&W",                 0.0087,     19995}, // 20v - dmg > 10mm
    {".40 S&W (.ext)",          0.0087,     19995}, // 30v

    // AK-47 Mag
    {"7.62×39mm",               0.008,      19995}, // 20v
    {"7.62×39mm (.ext)",        0.008,      19995}, // 30v                65

    // M4 Mag
    {"5.56×45mm NATO",          0.0041,     19995}, // 30v

    // Tec-9 Mag
    {"9mm NATO",                0.0083,     19995}, // 32v
    {"9mm NATO (.ext)",         0.0083,     19995}, // 50v

    // Country rifle
    {".219 Zipper",             0.004,      2061}, // 6v
    {".338 ME FTX",             0.013,      2061}, // 6v - higher dmg       70

    // Sniper rifle
    {".308 Winchester",         0.0097,     2061}, // 6v
    {".30-06 SF RN",            0.014,      2061}, // 6v - higher dmg

    // Health
    {"Bang cap cuu",            0.027,      11747},
    {"Thuoc giam dau",          0.15,       2709},
    {"Bo cuu thuong",           0.3,        11738}, //                      75

    // Food, Drink
    {"Qua tao",                 0.115,      19575},
    {"Qua cam",                 0.14,       19574},
    {"Ca chua",                 0.15,       19577},
    {"Sandwich",                0.25,       19883},
    {"Banh mi",                 0.4,        2769}, //                           80
    {"Hamburger",               0.3,        2768},
    {"Chan gio xong khoi",      1.2,        19847},
    {"Pizza",                   1.0,        2814},
    {"Thit bo nuong",           0.8,        19882},
    {"Qua chuoi",               0.17,       19578}, //                          85
    {"Nuoc khoang",             0.7,        19570},
    {"Nuoc tang luc",           0.5,        2647},
    {"Nuoc ep tao",             0.6,        19564},
    {"Nuoc ep cam",             0.6,        19563},
    {"Ca phe",                  0.5,        19835}, //                            90
    {"Sprunk",                  0.5,        2647},
    {"Sua hop",                 0.6,        19569},
    {"Bia tuoi",                0.7,        2683},
    {"Ruou vang",               0.7,        2683},
    {"Ruou vodka",              0.7,        2683}, //                        95

    // Misc
    {"Can xang",                0.75,       1650},
    {"Thuoc la",                0.2,        19897},
    {"Cigar",                   0.05,       3044}

};
