
#define MAX_INV_ITEMS   (60)

enum ENUM_INVENTORY_INFO {
    ItemID,
    Amount, // So luong
    Float:Durable, // Do ben
    IsEquipped,
    MagType,
    MagAmmo, // Bang dan / dan trong sung
}
new InventoryData[MAX_PLAYERS][MAX_INV_ITEMS][ENUM_INVENTORY_INFO];
new InvSelectedItem[MAX_PLAYERS]; // selected item slot

new stock InvItemName[][] = {

    "None", //                                 0
    "Brass Knuckles", //                    1
    "Golf Club",
    "Nightstick",
    "Knife",
    "Gay bong chay", //                     5
    "Cai xeng",
    "Pool Cue",
    "Katana",
    "Chainsaw",

    "Dien thoai", //                        10
    "Van truot",
    "May nghe nhac",
    "Boombox",

    "Flower",
    "Cane", //                              15
    "Grenade",
    "Smoke Grenade",
    "Motolov Cocktail",

    "Bo dam",
    "Dinh vi GPS", //                       20
    "Dong ho",

    "Colt M1911",
    "Colt M1911 Silenced",
    "Desert Eagle",
    "Ithaca 37", //                  25
    "Sawnoff Shotgun",
    "Franchi SPAS-12",
    "Micro Uzi",
    "MP5A2",
    "AK-47", //                             30
    "M4 Carbine",
    "TEC-9",
    "Marlin Model 336", // (Country rifle)
    "Remington Model 700", // (Sniper rifle)

    "Stun Grenade", //                      35
    "9mm Suppressor",
    "Normal Backpack",
    "Hunter Backpack",
    "Military Backpack",

    "Pepper Spray", // Binh xit hoi cay     40
    "Spraycan",
    "Fire Extinguisher",
    "Camera",
    "Night Vision Goggles",
    "Thermal Goggles", //                   45
    "Parachute",

    // 9mm Mag
    ".45 ACP", // 7v
    ".45 ACP .ext", // 17v

    // Desert Eagle Mag
    ".357 Magnum", // 9.07 mm
    ".41 Magnum", // 10.4mm                 50
    ".50 AE", // 13.9 mm
    ".44 Magnum", // 10.9mm

    // Shotgun + Sawnoff Shotgun + SPAS-12 Mag
    "12-G BIRDSHOT", // 7v
    "12-G BUCKSHOT",
    "12-G SLUG", //                         55

    // Micro Uzi Mag
    ".22 LR", // 25v
    ".22 LR .ext", // 50v
    "9×21mm", // 20v - dmg > .22 LR
    "9×21mm .ext", // 40v

    // MP5 Mag
    "10mm Auto", // 20v                     60
    "10mm Auto .ext", // 30v
    ".40 S&W", // 20v - dmg > 10mm
    ".40 S&W .ext", // 30v

    // AK-47 Mag
    "7.62×39mm", // 20v
    "7.62×39mm .ext", // 30v                65

    // M4 Mag
    "5.56×45mm NATO", // 30v

    // Tec-9 Mag
    "9x19mm", // 32v
    "9x19mm .ext", // 50v

    // Country rifle
    ".219 Zipper", // 6v
    ".338 Marlin Express", // 6v - higher dmg       70

    // Sniper rifle
    ".308 Winchester", // 6v
    ".30-06 Springfield", // 6v - higher dmg

    // Health, Armour
    "Bo cuu thuong", //
    "Bang cap cuu", //
    "Bo sua chua giap", //                  75

    // Food, Drink
    "Qua tao",
    "Qua cam",
    "Rau tron",
    "Sandwich salad",
    "Banh mi", //                           80
    "Thit ga ran",
    "Thit bo nuong",
    "Pizza",
    "Thit huou rung",
    "Ca nuong", //                          85
    "Nuoc khoang",
    "Nuoc tang luc",
    "Nuoc ep hoa qua",
    "Nuoc co gas",
    "Ca phe", //                            90
    "Sprunk",
    "Sua tuoi",
    "Bia tuoi",
    "Ruou vang",
    "Ruou vodka", //                        95

    // Misc
    "Cay but",
    "O khoa"

};
