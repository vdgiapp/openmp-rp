
enum ENUM_CHARACTER_INFO {
	Name[MAX_PLAYER_NAME+1],
	DateCreated[32],
	LastTimePlayed[32],
	Birthday[16],
	Gender,
	Nation,
	Description[512],
	SkinID,
	Level[16],
	Respects,
	JobID,
	FightStyle,
	WalkStyle,
	WeaponSkills[64],
	Playtime,
	Payday,
	RespawnLocation,
	Faction,
	Warns,
	Wanted,
	Arrested,
	Float:Hunger,
	Float:Thirst,
	Float:Stamina,
	MaxStamina,
	Injured,
	Float:Health,
	Float:Armour,
	Position[128],
	ImprisonData[128],
	MuteData[16],
	Cash,
	Coins,
	Bank[32],
	IDCard,
	LicenseData[32],
	PhoneData[32],
	ContactData[1024],
	WalkieTalkieData[64],
	Settings,

	// not save
	ChatCD,
	CmdCD,

	HouseAdminID,
	HouseCreateIntID,
	HouseCreatePrice
}

/*
togOOC, // +
togAdv, // +
togGov, // +
togPM, // +
togAdm, // +
togNews, // +
togHUD, // +
togFaction, // +
togService
*/

new CharacterData[MAX_PLAYERS][ENUM_CHARACTER_INFO];
