
#define MAX_INV_ITEMS   (200) // a.k.a Max items

enum invItemInf {
    ID,
    Amount, // So luong
    Durable, // Do ben

    GunAmmo, // Dan trong sung
    MagAmmo, // Bang dan
}
new InventoryData[MAX_PLAYERS][MAX_INV_ITEMS][invItemInf];

new bool:IsPlayerViewingInventory[MAX_PLAYERS];

new const InvItemName[][] = {

    " ", //                                 0
    "Brass Knuckles", //                    1
    "Golf Club",
    "Nightstick",
    "Knife",
    "Baseball Bat", //                      5
    "Shovel",
    "Pool Cue",
    "Katana",
    "Chainsaw",

    "Dien thoai", //                        10
    "Van truot",
    "Sandwich - Food",
    "Cafe - Drink",

    "Flower",
    "Cane", //                              15
    "Grenade",
    "Smoke Grenade",
    "Motolov Cocktail",

    "Nuoc khoang - Drink",
    "Bread - Food", //                      20
    "Chocolate - Food",

    "Colt M1911",
    "Colt M1911 Silenced",
    "Desert Eagle",
    "Wooden Ithaca 37", //                  25
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
    ".45 ACP Ext", // 17v

    // Desert Eagle Mag
    ".357 Magnum", // 9.07 mm
    ".41 Magnum", // 10.4mm                 50
    ".50 AE", // 13.9 mm
    ".44 Magnum", // 10.9mm

    // Shotgun + Sawnoff Shotgun + SPAS-12 Mag
    "12 Gauge",

    // Micro Uzi Mag
    ".22 LR", // 25v
    ".22 LR Ext", // 50v
    "9×21mm", // 20v - dmg > .22 LR
    "9×21mm Ext", // 40v                    55

    // MP5 Mag
    "10mm Auto", // 20v
    "10mm Auto Ext", // 30v
    ".40 S&W", // 20v - dmg > 10mm
    ".40 S&W Ext", // 30v

    // AK-47 Mag
    "7.62×39mm", // 20v                     60
    "7.62×39mm Ext", // 30v

    // M4 Mag
    "5.56×45mm NATO", // 30v

    // Tec-9 Mag
    "9x19mm", // 32v
    "9x19mm Ext", // 50v

    // Country rifle
    ".219 Zipper", // 6v                     65
    ".338 Marlin Express", // 6v - higher dmg

    // Sniper rifle
    ".308 Winchester", // 6v
    ".30-06 Springfield" // 6v - higher dmg

};
