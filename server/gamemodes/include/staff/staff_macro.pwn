
#define MAX_STAFF_ID			(200)

#define HELPER_RANK				(1)
#define TRIAL_ADMIN_RANK		(2)
#define OFFICAL_ADMIN_RANK 		(3)
#define JUNIOR_ADMIN_RANK 		(4)
#define SENIOR_ADMIN_RANK 		(5)
#define LEAD_ADMIN_RANK 		(6)
#define HEAD_ADMIN_RANK 		(7)
#define MANAGER_RANK 			(8)
#define DEVELOPER_RANK 			(9)
#define FOUNDER_RANK 			(10)

enum ENUM_ADMIN_INFO {
	Account[25],
	Nick[25],
	Rank,
	Helped,

	// Not save
	bool:OnDuty,
	bool:togPM,
	bool:togCMD,
	bool:togKill,
	bool:togNewb,
	bool:Spectating
}
new StaffData[MAX_STAFF_ID][ENUM_ADMIN_INFO];
