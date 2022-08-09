
#define MAX_INV_ITEMS   (200) // a.k.a Max items

enum invItemInf {
    ID,
    Amount, // So luong
    Durable, // Do ben

    GunAmmo, // Dan trong sung
    MagAmmo, // Bang dan
}
new InventoryData[MAX_PLAYERS][MAX_INV_ITEMS][invItemInf];
