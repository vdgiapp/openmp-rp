
// Interiors
#include <YSI_Coding/y_hooks>

stock static CreateStreamedObjectEx(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, Float:streamdistance = 300.0, Float:drawdistance = 300.0, vworld = -1, interiorid = -1)
{
    new Object_ID = CreateDynamicObject(modelid, x, y, z, rx, ry, rz, vworld, interiorid, -1, streamdistance);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, Object_ID, E_STREAMER_DRAW_DISTANCE, drawdistance);
    return Object_ID;
}

stock static SetDynObjMatText_Replace(objectid, text[], materialindex = 0, materialsize = OBJECT_MATERIAL_SIZE_256x128, fontface[] = "Arial", fontsize = 24, bold = 1, fontcolor = 0xFFFFFFFF, backcolor = 0, textalignment = 0) {
	return SetDynamicObjectMaterialText(objectid, materialindex, text, materialsize, fontface, fontsize, bold, fontcolor, backcolor, textalignment);
}

MappingInt_OnPlayerConnect(playerid) {

	return 1;
}

MappingInt_OnGameModeInit() {

	// Biker's bar
	new tmpobjid;
	tmpobjid = CreateStreamedObjectEx(19377, 2065.106445, 2348.542480, -90.281143, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2057.429443, 2358.174316, -90.281143, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_marble_checks", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2076.024414, 2353.373046, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2067.287841, 2353.372802, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2077.642822, 2352.266357, -90.603942, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2076.927734, 2351.547851, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2075.322021, 2351.552734, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2078.307861, 2352.375732, -89.818397, 0.000000, 0.000000, 339.521453, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2077.564453, 2352.311767, -88.860198, 0.000000, 0.000000, 0.059999, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2076.345458, 2351.531494, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2076.346679, 2351.971435, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2077.127197, 2353.191162, -88.860198, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2080.849365, 2351.802734, -84.947303, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "des_woodfence1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2086.104492, 2348.538574, -90.281143, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2085.578125, 2347.074218, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3241, "conhooses", "des_woodfence1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2082.364501, 2342.289794, -84.947303, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2077.526611, 2343.654785, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2077.641601, 2353.866455, -90.603942, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2073.719482, 2351.552490, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2074.349365, 2351.531738, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2074.347900, 2351.972167, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2072.350830, 2351.532470, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2072.348388, 2351.971923, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2072.251220, 2351.554443, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2069.380615, 2351.554687, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2069.138427, 2352.312988, -88.858200, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2068.699462, 2352.314208, -88.860198, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2070.354492, 2351.534667, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2070.354003, 2351.970458, -88.860198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2070.647460, 2351.554443, -90.603897, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2068.666015, 2352.273193, -90.603897, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2068.666259, 2353.873291, -90.603897, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2075.307128, 2353.069091, -88.551101, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2073.309082, 2353.068603, -88.551101, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2075.749511, 2353.068115, -88.047096, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2073.920654, 2353.053955, -87.037048, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2073.309082, 2353.068603, -87.549102, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2075.307128, 2353.069091, -87.549102, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2073.920654, 2353.053955, -88.049102, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2075.747558, 2353.052490, -87.035003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1569, 2082.298095, 2343.839843, -90.193199, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4552, "ammu_lan2", "corporate1", 0xFFFFFFCC);
	tmpobjid = CreateStreamedObjectEx(1569, 2082.292480, 2346.841308, -90.193199, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4552, "ammu_lan2", "corporate1", 0xFFFFFFCC);
	SetDynamicObjectMaterial(tmpobjid, 1, 14538, "ab_xit_box", "sw_door07", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2076.156494, 2351.520507, -91.612892, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 960, "cj_crate_will", "CJ_FLIGHT_CASE", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2077.673828, 2353.037597, -91.612899, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 960, "cj_crate_will", "CJ_FLIGHT_CASE", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2072.948242, 2351.520507, -91.612892, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 960, "cj_crate_will", "CJ_FLIGHT_CASE", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2070.144775, 2351.522460, -91.614898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 960, "cj_crate_will", "CJ_FLIGHT_CASE", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2068.627197, 2353.040039, -91.614898, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 960, "cj_crate_will", "CJ_FLIGHT_CASE", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2075.607177, 2348.541259, -90.281143, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19375, 2073.127197, 2353.363525, -90.195701, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12805, "ce_loadbay", "sw_corrug", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19375, 2072.392089, 2355.487548, -90.255699, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12805, "ce_loadbay", "sw_corrug", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19375, 2073.891845, 2355.487060, -90.257698, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12805, "ce_loadbay", "sw_corrug", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2067.489257, 2355.053222, -95.415901, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2073.131591, 2350.913574, -80.237297, 0.000000, 5.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2074.067626, 2350.147705, -95.417900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2078.032470, 2358.091552, -89.046440, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2078.794921, 2355.049560, -95.415901, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2068.222412, 2358.089843, -89.046440, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2067.894775, 2343.654541, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2078.072265, 2350.840332, -89.818397, 0.000000, 0.000000, 33329.523437, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2075.881103, 2350.699462, -89.818397, 0.000000, 0.000000, 333329.531250, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2073.839111, 2350.860107, -89.818397, 0.000000, 0.000000, 3133329.500000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2071.587890, 2350.779296, -89.818397, 0.000000, 0.000000, 333231328.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2350, 2069.075927, 2350.764160, -89.818397, 0.000000, 0.000000, 333231328.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1499, 2062.476806, 2353.375244, -90.193603, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10429, "hashblock1_sfs", "Bow_Concrete_drip", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2062.723632, 2358.247802, -84.947303, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2067.287353, 2353.368896, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2056.153564, 2353.386718, -81.656143, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2060.477050, 2348.472167, -84.947303, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2058.263916, 2343.652832, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2061.668701, 2353.382568, -85.933502, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2056.154296, 2353.371093, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2057.830566, 2361.861572, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2053.720703, 2358.255859, -84.947303, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2059.660644, 2360.197753, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2057.429443, 2358.174316, -85.770431, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3979, "civic01_lan", "sl_laglasswall1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1499, 2061.428710, 2358.678955, -89.993606, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 2028, "cj_games", "CJ_speaker4", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2063.025878, 2358.681152, -88.321502, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2059.835449, 2360.197753, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1499, 2059.584228, 2358.696777, -89.993606, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 2028, "cj_games", "CJ_speaker4", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2058.009033, 2360.181152, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2057.836181, 2360.179443, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1499, 2057.769287, 2358.681640, -89.993606, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 2028, "cj_games", "CJ_speaker4", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2056.181884, 2360.195068, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2056.003906, 2360.194335, -88.321502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1499, 2055.928710, 2358.703125, -89.993606, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 2028, "cj_games", "CJ_speaker4", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2052.828613, 2358.698242, -88.321502, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2063.025878, 2358.858886, -88.321502, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19370, 2052.829101, 2358.872314, -88.321502, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1730, "cj_furniture", "CJ_WOOD5", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(17951, 2057.258544, 2353.437500, -87.007202, 0.000000, 0.000000, 89.529998, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2056.154296, 2353.384765, -84.947303, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2058.595458, 2352.675292, -88.866798, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2055.918701, 2352.677978, -86.826263, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2058.595458, 2352.677246, -86.826263, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2055.918701, 2352.676025, -88.866798, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2060.426025, 2351.728515, -88.153297, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2060.426025, 2351.730468, -87.539299, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2054.081542, 2351.731933, -88.153297, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2054.081542, 2351.729980, -87.539299, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2057.841796, 2353.372070, -95.440101, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2053.723388, 2358.233642, -94.470283, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2056.155761, 2353.386474, -94.470298, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2067.288818, 2353.374023, -94.470298, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2062.721435, 2358.268066, -94.470283, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2057.831298, 2361.858886, -94.470298, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4004, "civic07_lan", "sl_rotnbrik", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2053.723388, 2358.233642, -80.766899, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2058.446289, 2353.387451, -80.766899, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2062.721435, 2358.268066, -80.766899, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2067.288818, 2353.374023, -80.766899, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2077.451904, 2348.921875, -85.238906, 0.000000, 85.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2056.337646, 2352.239501, -85.238906, 0.000000, 85.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2067.843994, 2348.914550, -85.238906, 0.000000, 85.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2058.223144, 2348.902343, -85.238906, 0.000000, 85.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2077.454589, 2348.072753, -85.238899, 0.000000, 85.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2067.890380, 2348.071777, -85.238899, 0.000000, 85.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, 2058.260986, 2348.076171, -85.238899, 0.000000, 85.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 11395, "corvinsign_sfse", "shutters", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2057.831298, 2361.858886, -80.766899, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14569, "traidman", "darkgrey_carpet_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2064.356933, 2353.614990, -80.558998, -5.000000, 0.000000, 360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2064.357666, 2343.400878, -80.558998, 5.000000, 0.000000, -360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2077.753906, 2353.597656, -80.558998, -5.000000, 0.000000, 360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2077.754638, 2343.319091, -80.558998, 5.000000, 0.000000, -360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2073.373046, 2353.601562, -80.558998, -5.000000, 0.000000, 360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2073.378662, 2343.403564, -80.558998, 5.000000, 0.000000, -360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2068.996337, 2343.368164, -80.558998, 5.000000, 0.000000, -360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2068.995605, 2353.582275, -80.558998, -5.000000, 0.000000, 360.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2076.787597, 2353.855468, -88.551101, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2076.787597, 2353.855468, -87.549102, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2072.464355, 2353.841064, -87.037002, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2072.464355, 2353.841064, -88.049102, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19375, 2073.131347, 2355.771484, -85.839866, 0.000000, 85.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3525, "excaliburtorch", "sw_cabinwall01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2072.218505, 2350.147460, -95.415901, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2068.227294, 2355.626220, -80.646301, 5.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, 2078.036376, 2355.623535, -80.646301, 5.000000, 0.000000, 180.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2068.699462, 2352.314208, -88.892196, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2070.354492, 2351.534667, -88.892196, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2069.138427, 2352.312988, -88.892196, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2072.350830, 2351.532470, -88.892196, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2074.349365, 2351.531738, -88.892196, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2076.345458, 2351.531494, -88.892196, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19940, 2077.564453, 2352.311767, -88.892196, 0.000000, 0.000000, 0.059999, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3374, "ce_farmxref", "sw_barnwood1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2762, 2062.960937, 2344.926757, -89.780799, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2746, 2060.735839, 2344.943847, -89.485900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2746, 2065.175048, 2344.903808, -89.485900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2746, 2069.715087, 2344.842285, -89.485900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2762, 2071.939941, 2344.900390, -89.780799, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2763, 2073.863281, 2347.995849, -89.800102, 0.000000, 0.000000, 351.467834, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2763, 2068.987304, 2348.166259, -89.800102, 0.000000, 0.000000, 3521.467773, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2763, 2064.247314, 2348.952880, -89.800102, 0.000000, 0.000000, 240.840393, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2065.283935, 2348.713623, -89.571098, 0.000000, 0.000000, 348.487915, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2063.143310, 2349.303710, -89.571098, 0.000000, 0.000000, 173.151657, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2063.729003, 2348.124267, -89.571098, 0.000000, 0.000000, 251.708282, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2064.613769, 2349.850830, -89.571098, 0.000000, 0.000000, 73.773178, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2069.053955, 2347.264160, -89.571098, 0.000000, 0.000000, 273.721893, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2069.866455, 2348.172119, -89.571098, 0.000000, 0.000000, 354.785552, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2068.684814, 2349.032470, -89.571098, 0.000000, 0.000000, 107.936958, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2067.995849, 2348.116455, -89.571098, 0.000000, 0.000000, 177.158966, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2072.792968, 2348.167968, -89.571098, 0.000000, 0.000000, 177.158966, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2636, 2074.962402, 2347.916015, -89.571098, 0.000000, 0.000000, 0.772310, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2671, 2062.761718, 2344.569580, -90.190101, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19373, 2060.498535, 2348.557128, -87.721801, 0.000014, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 8421, "pirateland", "tislndskullrock_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.794677, 2350.375000, -87.738342, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.796630, 2348.556152, -89.400802, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.798339, 2346.719238, -87.738342, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2070.168212, 2342.946044, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2080.268310, 2349.811767, -86.138130, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 6985, "vgnfremnt2", "vgntext1_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(3032, 2076.136474, 2343.774169, -87.776870, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18028, "cj_bar2", "GB_nastybar13", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(3032, 2070.069335, 2343.753906, -87.776870, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18028, "cj_bar2", "GB_nastybar13", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.794677, 2348.556152, -86.077598, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2069.960937, 2342.947998, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2076.280273, 2342.974609, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2076.004394, 2342.974853, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.426025, 2345.224609, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.380126, 2346.305175, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.351318, 2346.885253, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.375000, 2347.667724, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.375000, 2348.599853, -83.102462, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.383789, 2350.405273, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.385253, 2349.321289, -83.102462, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.364990, 2349.821289, -83.302459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2064.392578, 2351.555664, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.765625, 2345.423583, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.719726, 2346.504150, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.690917, 2347.084228, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.714599, 2347.866699, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2069.024902, 2345.258300, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2068.979003, 2346.338867, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2068.950195, 2346.918945, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2068.973876, 2347.701416, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2069.011962, 2348.633544, -83.102462, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2069.022216, 2349.354980, -83.102462, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2069.001953, 2349.854980, -83.302459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2068.982666, 2350.438964, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2068.991455, 2351.589355, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.737548, 2349.911621, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.750732, 2348.648193, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.690185, 2351.447998, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.697021, 2350.531250, -83.303459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2077.755371, 2349.348876, -83.303459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.348388, 2351.424560, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.355224, 2350.507812, -83.303459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.395751, 2349.888183, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.413574, 2349.325439, -83.303459, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.408935, 2348.624755, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.372802, 2347.843261, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.349121, 2347.060791, -83.202461, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.377929, 2346.480712, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2073.423828, 2345.400146, -83.403457, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2283, 2060.581054, 2351.793701, -86.358757, 0.000000, 0.000000, 90.000045, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 10429, "hashblock1_sfs", "ws_streak_billbd", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2060.479980, 2348.553222, -90.808868, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2080.848876, 2351.799072, -90.808868, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2082.362304, 2346.674072, -90.808868, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2082.899902, 2353.370605, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2068.076904, 2343.656005, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2058.451904, 2343.656982, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2067.289550, 2353.366943, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2056.152832, 2353.370117, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2077.705810, 2343.660156, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, 2085.584472, 2347.070068, -90.808898, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2277, 2078.844970, 2352.753173, -88.216453, 0.000000, -1.399999, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19115, "sillyhelmets", "sillyhelmet3", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2280, 2078.782958, 2352.773437, -87.058082, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 5134, "wasteland_las2", "ja_sgcombo3", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2283, 2079.958251, 2353.233398, -88.218750, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 10429, "hashblock1_sfs", "ws_streak_billbd", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2277, 2079.786132, 2352.793457, -87.415458, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 8849, "vgeretail1", "zippizzaco_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2281, 2080.257812, 2352.585449, -87.490409, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18901, "matclothes", "helmet", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2267, 2080.714111, 2349.739990, -87.374473, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 6865, "vgndwntwn23", "steaksign1_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2265, 2080.277099, 2351.587646, -88.962287, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18901, "matclothes", "bandanaskull", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2267, 2073.574462, 2351.428222, -89.385597, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19115, "sillyhelmets", "sillyhelmet3", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19329, 2080.765136, 2350.080322, -88.490898, 0.000000, 0.799999, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3119, "cs_ry_props", "GB_magazine07", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 6865, "vgndwntwn23", "steaksign1_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2265, 2080.268066, 2351.024902, -87.752296, 0.000000, -1.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19160, "newhardhats", "hardhat2map", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2061.058593, 2344.348632, -87.679542, 0.000000, -1.199999, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 5134, "wasteland_las2", "ja_sgcombo3", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 6865, "vgndwntwn23", "steaksign2_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19482, 2060.588867, 2345.448486, -88.337783, -0.499999, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{262626} R I D E", 130, "Ariel", 60, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateStreamedObjectEx(2270, 2080.273925, 2347.373535, -88.304397, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 8849, "vgeretail1", "zippizzaco_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2277, 2080.269042, 2348.985595, -86.476631, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18901, "matclothes", "helmet", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2277, 2080.260498, 2348.480712, -87.716491, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 7981, "vgssairport02", "drivecare_64", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.794677, 2350.244873, -87.738342, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2080.152832, 2352.781738, -86.672401, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 8322, "vgsssignage02", "dirtringtex1_256", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2080.268310, 2350.812744, -86.548118, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19597, "lsbeachside", "beachside-sign", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2080.264892, 2348.114990, -88.629203, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "pirateskull01_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19326, 2080.753417, 2352.519042, -88.434600, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10770, "carrier_sfse", "ws_carrierdecals", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.794677, 2346.874511, -87.738342, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19781, 2080.754394, 2347.383789, -88.838417, 90.000000, -90.400032, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19115, "sillyhelmets", "sillyhelmet2", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 19115, "sillyhelmets", "sillyhelmet2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19482, 2060.588867, 2351.440429, -88.330039, -0.499999, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0x00000000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{262626} F R E E", 130, "Ariel", 60, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateStreamedObjectEx(2268, 2072.302001, 2350.968994, -89.719123, 0.000000, 0.000000, 0.000003, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "pirateskull01_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2275, 2080.259765, 2347.822753, -87.051803, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 12962, "sw_apartflat", "sw_genstore2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2268, 2075.443847, 2350.968994, -89.719123, 0.000000, 0.000000, 0.000003, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3524, "skullpillar", "pirateskull02_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2268, 2080.266113, 2348.204345, -86.152236, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14737, "whorewallstuff", "AH_fbatters2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2268, 2080.271240, 2352.353027, -86.448089, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "onewaysignl", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2071.619873, 2352.781738, -87.502365, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14654, "ab_trukstpe", "bbar_sports1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1566, 2069.545410, 2353.311767, -88.865470, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFFFFFFF);
	tmpobjid = CreateStreamedObjectEx(2268, 2080.267822, 2349.885009, -86.861289, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19115, "sillyhelmets", "sillyhelmet3", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19329, 2060.575195, 2345.595947, -88.289901, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19329, 2060.562744, 2351.517822, -88.289901, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2265, 2061.052734, 2345.314697, -87.699913, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 5134, "wasteland_las2", "ja_sgcombo3", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 19115, "sillyhelmets", "sillyhelmet3", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2265, 2061.050537, 2344.985839, -86.837791, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "bandanaskull", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3524, "skullpillar", "pirateskull02_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2268, 2061.071533, 2351.386962, -87.729103, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19962, "samproadsigns", "onewaysignr", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2061.058593, 2346.099853, -86.642288, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 5134, "wasteland_las2", "ja_sgcombo3", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "pirateskull01_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2261, 2061.091796, 2352.487304, -87.685501, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19597, "lsbeachside", "beachside-sign", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2261, 2061.064941, 2346.101562, -87.685501, 0.000000, 2.100000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18901, "matclothes", "helmet", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2068.958251, 2352.781738, -87.502365, 0.000000, -3.200000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14654, "ab_trukstpe", "bbar_plates2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2070.651123, 2352.781738, -86.672401, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14654, "ab_trukstpe", "bbar_signs1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2748, 2073.686523, 2344.841796, -89.485900, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 1746, "cj_sofa", "CJ_FAB2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2762, 2067.500976, 2344.865234, -89.780799, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(3032, 2063.854492, 2343.771972, -87.776870, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18028, "cj_bar2", "GB_nastybar13", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2063.746093, 2342.966064, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2063.953369, 2342.964111, -86.919296, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 15048, "labigsave", "ah_carp1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(18977, 2075.687011, 2351.721435, -88.760902, 0.000000, -30.000000, 337.646392, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3524, "skullpillar", "pirateskull02_128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2266, 2071.619873, 2352.781738, -88.782333, 0.000000, -1.399999, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14654, "ab_trukstpe", "bbar_stuff1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2270, 2069.142822, 2352.784423, -88.534393, 0.000000, 0.000000, -0.100019, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18028, "cj_bar2", "CJ_nastybar_D", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2270, 2069.853515, 2352.784179, -86.994407, 0.000000, 0.000000, -0.100019, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18028, "cj_bar2", "CJ_nastybar_D2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, 2075.641601, 2338.000244, -85.473281, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3615, "beachhut", "sw_flatroof01", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2057.656982, 2353.378906, -82.437362, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, 2056.157470, 2353.368896, -83.857345, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18081, "cj_barb", "ab_panel_woodgrime", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.784667, 2346.265625, -87.797584, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.764648, 2346.265625, -88.817588, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.774658, 2350.835937, -87.797584, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, 2059.774658, 2350.835937, -88.817543, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2345, 2073.171875, 2344.166992, -88.345245, 0.000000, 0.000000, -179.300109, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFCCCC00);
	tmpobjid = CreateStreamedObjectEx(2345, 2072.840087, 2344.231689, -88.345245, 0.000000, 0.000000, -179.300109, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFCCCC00);
	tmpobjid = CreateStreamedObjectEx(2345, 2067.081054, 2344.086181, -88.345245, 0.000000, 0.000000, -179.300109, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFCCCC00);
	tmpobjid = CreateStreamedObjectEx(2345, 2066.779785, 2344.141357, -88.345245, 0.000000, 0.000000, -179.300109, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFFCCCC00);
	tmpobjid = CreateStreamedObjectEx(19329, 2079.226806, 2353.277832, -89.235893, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{262626} by  Kova", 120, "Ariel", 40, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateStreamedObjectEx(1897, 2054.283691, 2358.718261, -90.403228, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1897, 2056.111083, 2358.742187, -90.403198, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1897, 2057.956054, 2358.729492, -90.403198, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1897, 2059.771972, 2358.728271, -90.403198, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1897, 2061.591308, 2358.659912, -90.403198, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2525, 2057.040039, 2361.283203, -90.193099, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2525, 2054.825195, 2361.232910, -90.193099, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2525, 2058.801757, 2361.304931, -90.193099, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2528, 2061.192626, 2361.301025, -90.193252, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2518, 2059.918945, 2353.994384, -89.963493, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2518, 2055.475341, 2353.985107, -89.963500, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2518, 2057.056396, 2353.980957, -89.963500, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2518, 2058.479003, 2353.966796, -89.963500, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2671, 2055.859619, 2353.954101, -90.180274, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2779, 2066.386718, 2352.884765, -90.192878, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2779, 2065.597900, 2352.885253, -90.192878, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1515, 2064.827636, 2352.760498, -90.204696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2671, 2071.579833, 2345.239501, -90.190101, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2270, 2080.253662, 2351.604248, -87.688743, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2077.670898, 2351.440429, -86.165496, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.396728, 2348.617919, -86.159500, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2069.011718, 2345.252929, -86.159500, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2064.362548, 2347.658935, -85.955490, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2064.369384, 2350.396972, -86.155487, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2068.967773, 2350.430175, -86.155487, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.358154, 2346.476074, -86.169502, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.362548, 2347.839599, -85.807296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2068.943847, 2346.915283, -85.807296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2068.980468, 2351.585205, -86.007293, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2064.374267, 2346.299560, -86.007293, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2064.369140, 2348.596435, -85.705299, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2077.749755, 2348.644287, -86.005287, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2077.687500, 2347.082275, -85.805297, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2073.401367, 2349.320800, -85.948860, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2068.985351, 2349.845947, -85.948860, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2068.966064, 2346.330566, -86.049858, 0.000000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2064.354248, 2349.814208, -85.948860, 0.000000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2077.754150, 2345.416259, -86.048858, 0.000000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2077.727294, 2346.501953, -86.053703, 0.000000, 0.000000, 123.609703, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2073.362060, 2351.415771, -86.053703, 0.000000, 0.000000, 123.609703, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2068.994873, 2348.632080, -85.753707, 0.000000, 0.000000, 12233.609375, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2073.412109, 2345.417968, -86.054702, 0.000000, 0.000000, 122333.609375, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2077.720214, 2347.883544, -85.955497, 0.000000, 0.000000, 230.100006, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2068.958984, 2347.694091, -86.020683, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2064.336914, 2346.881835, -86.020683, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2064.407958, 2345.218994, -86.220680, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2064.373046, 2349.319091, -85.917671, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2064.379394, 2351.552490, -86.217666, 0.000000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2069.009765, 2349.350585, -85.917671, 0.000000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2073.386230, 2349.881103, -86.013702, -0.006000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2073.335693, 2347.051757, -86.013702, -0.006000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2077.745361, 2349.341308, -86.113700, -0.006000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2077.691894, 2350.529052, -86.113700, -0.006000, 0.000000, 359.899993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2077.751220, 2349.905517, -85.850692, 0.000000, 0.000000, 123.609703, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2073.365722, 2350.502441, -85.950691, 0.000000, 0.000000, 123.609703, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, 2075.221923, 2348.478271, -85.097702, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, 2070.780517, 2348.482177, -85.097702, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, 2066.238281, 2348.487060, -85.097740, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2085.584472, 2347.070068, -83.762298, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2077.705810, 2343.660156, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2082.899902, 2353.370605, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2058.451904, 2343.656982, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2068.076904, 2343.656005, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2067.289550, 2353.366943, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2057.713867, 2353.367431, -84.045402, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2082.361816, 2343.690673, -84.045402, 5.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2080.848144, 2351.630126, -83.349403, 5.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2080.848144, 2353.369873, -84.045402, -5.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2060.483886, 2348.779785, -83.645408, -5.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19450, 2060.479003, 2346.299316, -83.813400, 5.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19781, 2080.759033, 2347.991210, -87.721290, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19781, 2080.750000, 2352.724853, -86.371833, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2270, 2061.055175, 2350.755126, -87.257003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2076.273437, 2351.672607, -88.789764, 0.000000, 0.000000, -18.799999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2714, 2070.250244, 2351.982177, -86.148193, 0.000000, 0.000000, 33.099994, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2855, 2068.938964, 2352.591796, -88.974502, 0.000000, 0.000000, 324.167785, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(11710, 2082.300537, 2345.362304, -87.340591, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(18977, 2077.543701, 2352.181152, -88.760902, 0.000000, -30.000000, 3337.646484, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2069.015625, 2352.106445, -88.683799, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.401611, 2353.066406, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.395263, 2353.204345, -88.493301, 0.000000, 0.000000, -127.259986, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.390380, 2352.922607, -88.493301, 0.000000, 0.000000, 23.339990, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.555175, 2353.067626, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.548828, 2353.205566, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.543945, 2352.923828, -88.493301, 0.000000, 0.000000, -19.559999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.705810, 2353.207275, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.483642, 2353.073974, -87.991310, 0.000000, 0.000000, -59.159988, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.872314, 2353.071777, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.865966, 2353.209716, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.861083, 2352.927978, -88.493301, 0.000000, 0.000000, -38.580001, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.552978, 2353.071777, -87.502296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.546630, 2353.209716, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.541748, 2352.927978, -87.498497, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.625488, 2353.066650, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.619140, 2353.204589, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.614257, 2352.922851, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.895263, 2353.070800, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.888916, 2353.208740, -88.493301, 0.000000, 0.000000, -0.059999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.884033, 2352.927001, -88.493301, 0.000000, 0.000000, 0.479999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2074.077392, 2353.069824, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2074.071044, 2353.207763, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2074.066162, 2352.926025, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.706787, 2353.209716, -87.499702, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.701904, 2352.927978, -88.493301, 0.000000, 0.000000, -2.460000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.261230, 2353.067626, -87.489501, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.254882, 2353.205566, -87.495796, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.250000, 2352.923828, -87.483200, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.443359, 2353.067138, -87.502029, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.437011, 2353.205078, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.432128, 2352.923339, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.012695, 2353.218261, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.010742, 2353.097412, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2072.623535, 2353.217285, -87.893699, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.164550, 2352.949707, -87.407341, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.110839, 2353.092529, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.162353, 2353.209472, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.252197, 2353.026855, -87.413497, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.337158, 2353.173339, -87.412101, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.403808, 2352.922363, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.218261, 2353.167236, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.224121, 2352.987060, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.322753, 2353.030761, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.446289, 2352.934814, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.376708, 2353.212890, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.520507, 2353.117431, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.308105, 2352.889648, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.567382, 2352.918212, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.618164, 2353.200439, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.663818, 2353.041503, -87.384483, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.747314, 2352.944091, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.780273, 2353.165771, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.887939, 2352.948974, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2075.823486, 2353.162597, -88.355796, 0.000000, 0.000000, -149.520050, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2075.771484, 2353.026123, -88.355796, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2075.824462, 2352.941162, -88.355796, 0.000000, 0.000000, -45.299999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2076.047851, 2353.203857, -88.355796, 0.000000, 0.000000, -0.899999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2076.005371, 2353.024169, -88.355796, 0.000000, 0.000000, 230.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2076.144042, 2352.902343, -88.355796, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2074.946533, 2353.160156, -87.344596, 0.000000, 0.000000, -44.580001, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2075.062255, 2352.977050, -87.347198, 0.000000, 0.000000, -22.079999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2076.907958, 2353.210205, -88.355796, 0.000000, 0.000000, 173.478118, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2076.648925, 2353.040527, -88.493301, 0.000000, 0.000000, 351.467834, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2076.777832, 2353.050048, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2076.916748, 2352.952148, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.004394, 2352.957031, -87.417022, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2072.355957, 2353.166259, -87.893699, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.700927, 2352.925537, -88.493301, 0.000000, 0.000000, -31.200000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2072.346923, 2352.927734, -87.991302, 0.000000, 0.000000, 23.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2072.528076, 2352.939453, -87.893699, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2073.110839, 2353.198242, -88.033889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2073.310546, 2353.182861, -88.033889, 0.000000, 0.000000, -3.359999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2073.510742, 2353.147705, -88.033889, 0.000000, 0.000000, 23.819999, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2073.710937, 2353.191650, -88.033889, 0.000000, 0.000000, -13.140000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2073.909179, 2353.197021, -88.033889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2074.109863, 2353.181640, -88.033889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2072.376220, 2353.166259, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2072.592285, 2353.179687, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2072.454345, 2352.982177, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2073.254394, 2353.046386, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2073.070068, 2353.179687, -86.821296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2073.070556, 2353.039550, -86.821296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2073.070556, 2352.919433, -86.821296, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1517, 2073.293457, 2353.153320, -86.821296, 0.000000, 0.000000, 11.091279, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2073.430175, 2352.947998, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2073.515380, 2353.139160, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2073.732910, 2353.178955, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2075.573974, 2353.014404, -87.537261, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2075.881347, 2352.964355, -87.552696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.066162, 2353.041748, -87.555236, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.184570, 2353.098876, -87.549926, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.316894, 2352.915771, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.826416, 2353.182617, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2075.482910, 2353.161132, -88.063362, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2074.250488, 2352.994628, -87.555496, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2074.250488, 2353.145263, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.403076, 2353.072509, -87.566009, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.504638, 2353.130126, -87.560607, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2075.188720, 2352.943115, -88.053016, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2073.860839, 2353.045654, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2074.010253, 2353.152587, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1541, 2075.210205, 2352.241210, -88.644500, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1541, 2074.307373, 2352.239746, -88.644500, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2075.573974, 2353.014404, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2076.918457, 2352.968017, -87.561599, 0.000000, 0.000000, 19.677000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2075.897216, 2353.114746, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2075.881347, 2352.964355, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.184570, 2353.098876, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.066162, 2353.041748, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2075.325439, 2353.124267, -88.065803, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.886474, 2352.949462, -88.060302, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19824, 2074.250488, 2352.994628, -87.027900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2075.062255, 2352.977050, -88.355796, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.250000, 2352.923828, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.261230, 2353.067626, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.254882, 2353.205566, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2075.443359, 2353.067138, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2074.663818, 2353.041503, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2074.946533, 2353.160156, -88.355796, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.620361, 2352.947021, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.645751, 2353.166992, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.504638, 2353.130126, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.403076, 2353.072509, -87.019889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.504638, 2353.130126, -88.065803, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.620361, 2352.947021, -88.053016, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.645751, 2353.166992, -88.063362, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.403076, 2353.072509, -88.060302, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.917236, 2353.127197, -88.065803, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2075.036865, 2352.944091, -88.053016, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2075.066406, 2353.164062, -88.063362, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2074.827880, 2353.069580, -88.060302, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2075.492431, 2353.021972, -88.033889, 0.000000, 0.000000, -26.520000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2075.811035, 2353.147216, -88.033889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19823, 2075.734130, 2352.945800, -88.033889, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19820, 2075.741210, 2353.120605, -87.021629, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1544, 2076.723388, 2353.151611, -87.549926, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1512, 2076.742919, 2352.999511, -87.347198, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.706787, 2353.209716, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.541748, 2352.927978, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.252197, 2353.026855, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.337158, 2353.173339, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1520, 2073.552978, 2353.071777, -88.493301, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.004394, 2352.957031, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1486, 2073.164550, 2352.949707, -88.385696, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19087, 2069.944091, 2351.797851, -83.449661, 0.000000, 0.000000, 27.699993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19087, 2070.523681, 2352.179443, -83.449684, 0.000000, 0.000000, 27.699993, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, 2067.332763, 2343.583007, -88.445205, 0.000000, 0.000000, 179.999984, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, 2073.554687, 2343.583007, -88.445205, 0.000000, 0.000000, 179.999984, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2671, 2065.479003, 2352.383544, -90.190101, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2779, 2064.011718, 2352.882324, -90.192878, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2671, 2055.859619, 2361.508544, -90.180274, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2671, 2059.611572, 2361.508544, -90.180274, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19314, 2060.674804, 2348.508300, -85.834991, 89.099983, 1.200001, 0.000000, 120.00, 120.00);
	


	// City Hall LS
	new g_Object[732];

	g_Object[0] = CreateDynamicObject(19464, 908.9829, -1475.7220, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[0], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[1] = CreateDynamicObject(18981, 917.3012, -1463.5339, 2752.8217, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[1], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[2] = CreateDynamicObject(1536, 920.2229, -1476.0039, 2753.0510, 0.0000, 0.0000, 180.0000); //Gen_doorEXT15
	SetDynamicObjectMaterial(g_Object[2], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[3] = CreateDynamicObject(1536, 920.1928, -1476.0039, 2753.0510, 0.0000, 0.0000, 0.0000); //Gen_doorEXT15
	SetDynamicObjectMaterial(g_Object[3], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[4] = CreateDynamicObject(19464, 921.7540, -1478.8221, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[4], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[5] = CreateDynamicObject(19464, 918.6541, -1478.8221, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[5], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[6] = CreateDynamicObject(19464, 915.8043, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[6], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[7] = CreateDynamicObject(19464, 909.8748, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[7], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[8] = CreateDynamicObject(19450, 913.7258, -1472.9619, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[8], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[9] = CreateDynamicObject(19450, 920.3264, -1477.5727, 2753.2399, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[9], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[10] = CreateDynamicObject(19464, 918.6643, -1475.7132, 2751.6335, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[10], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[11] = CreateDynamicObject(19565, 918.5355, -1475.3172, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[11], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[12] = CreateDynamicObject(19565, 918.5355, -1475.7860, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[12], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[13] = CreateDynamicObject(19565, 918.5355, -1474.8469, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[13], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[14] = CreateDynamicObject(19565, 918.5355, -1474.3763, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[14], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[15] = CreateDynamicObject(19565, 918.5355, -1473.9061, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[15], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[16] = CreateDynamicObject(19565, 918.5355, -1473.4455, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[16], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[17] = CreateDynamicObject(19565, 918.5355, -1472.9752, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[17], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[18] = CreateDynamicObject(19464, 918.6243, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[18], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[19] = CreateDynamicObject(19464, 918.6743, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[19], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[20] = CreateDynamicObject(19450, 913.7258, -1476.4620, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[20], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[21] = CreateDynamicObject(1708, 917.9519, -1473.0107, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[21], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[21], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[22] = CreateDynamicObject(2315, 914.4351, -1472.9880, 2753.3161, 0.0000, 0.0000, 0.0000); //CJ_TV_TABLE4
	g_Object[23] = CreateDynamicObject(1708, 917.9519, -1471.4803, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[23], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[23], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[24] = CreateDynamicObject(1708, 912.3715, -1472.4554, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[24], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[24], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[25] = CreateDynamicObject(1708, 912.3646, -1473.9858, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[25], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[25], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[26] = CreateDynamicObject(2001, 912.7150, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[26], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[27] = CreateDynamicObject(2001, 917.7155, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[27], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[28] = CreateDynamicObject(1753, 916.2219, -1475.3032, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[28], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[29] = CreateDynamicObject(19786, 915.2346, -1475.9768, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[29], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[29], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[30] = CreateDynamicObject(2816, 915.4837, -1472.9720, 2753.8125, 0.0000, 0.0000, 0.0000); //gb_bedmags01
	g_Object[31] = CreateDynamicObject(2855, 914.5407, -1472.9958, 2753.8032, 0.0000, 0.0000, 0.0000); //gb_bedmags05
	g_Object[32] = CreateDynamicObject(955, 909.4804, -1473.5239, 2753.6857, 0.0000, 0.0000, 90.0000); //CJ_EXT_SPRUNK
	g_Object[33] = CreateDynamicObject(956, 909.4525, -1474.9178, 2753.7165, 0.0000, 0.0000, 90.0000); //CJ_EXT_CANDY
	g_Object[34] = CreateDynamicObject(19825, 911.2739, -1475.8176, 2756.0183, 0.0000, 0.0000, 180.0000); //SprunkClock1
	g_Object[35] = CreateDynamicObject(19565, 906.5717, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[35], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[36] = CreateDynamicObject(19565, 907.0421, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[36], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[37] = CreateDynamicObject(19464, 906.1342, -1472.8424, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[37], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[38] = CreateDynamicObject(19464, 901.8338, -1466.9337, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[38], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[39] = CreateDynamicObject(19464, 904.7039, -1469.8027, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[39], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[40] = CreateDynamicObject(19464, 904.6939, -1458.9835, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[40], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[41] = CreateDynamicObject(19464, 903.8833, -1463.8735, 2754.3547, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[41], 0, 10765, "airportgnd_sfse", "white", 0xFF692015);
	g_Object[42] = CreateDynamicObject(19464, 901.8338, -1461.8331, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[42], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[43] = CreateDynamicObject(19464, 901.8338, -1464.5334, 2756.9982, 0.0000, 90.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[43], 0, 10765, "airportgnd_sfse", "white", 0xFF998F4E);
	g_Object[44] = CreateDynamicObject(19565, 929.6234, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[44], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[45] = CreateDynamicObject(18981, 892.3007, -1463.5339, 2752.8217, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[45], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[46] = CreateDynamicObject(1337, 903.8958, -1462.4918, 2754.5273, 31.9999, 0.0000, 90.0000); //BinNt07_LA
	SetDynamicObjectMaterial(g_Object[46], 1, 1328, "labins01_la", "bins9_LAe2", 0xFFFFFFFF);
	g_Object[47] = CreateDynamicObject(1337, 903.8958, -1463.2926, 2754.5273, 31.9999, 0.0000, 90.0000); //BinNt07_LA
	SetDynamicObjectMaterial(g_Object[47], 1, 1328, "labins01_la", "bins9_LAe2", 0xFFFFFFFF);
	g_Object[48] = CreateDynamicObject(2593, 904.4027, -1465.8520, 2754.1142, 0.0000, 0.0000, 0.0000); //roleplay_rack
	g_Object[49] = CreateDynamicObject(2593, 904.4027, -1464.6418, 2754.1142, 0.0000, 0.0000, 0.0000); //roleplay_rack
	g_Object[50] = CreateDynamicObject(19450, 911.7766, -1461.8607, 2752.3906, 90.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[50], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[51] = CreateDynamicObject(1569, 911.7252, -1459.2601, 2753.2839, 0.0000, 0.0000, -122.0998); //ADAM_V_DOOR
	g_Object[52] = CreateDynamicObject(19174, 904.8389, -1469.5666, 2755.6752, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynamicObjectMaterial(g_Object[52], 0, 2266, "picture_frame", "CJ_PAINTING3", 0xFFFFFFFF);
	g_Object[53] = CreateDynamicObject(19174, 904.8389, -1459.3762, 2755.6752, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynamicObjectMaterial(g_Object[53], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	g_Object[54] = CreateDynamicObject(19450, 915.3461, -1463.5118, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[54], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[55] = CreateDynamicObject(19450, 913.4473, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[55], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[56] = CreateDynamicObject(2162, 926.0319, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[57] = CreateDynamicObject(19565, 909.4722, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[57], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[58] = CreateDynamicObject(19402, 918.8341, -1462.7749, 2755.0104, 0.0000, 0.0000, 90.0000); //wall050
	SetDynamicObjectMaterial(g_Object[58], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[59] = CreateDynamicObject(19450, 917.1854, -1464.6108, 2753.2399, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[59], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[60] = CreateDynamicObject(19450, 916.5449, -1464.6108, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[60], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[61] = CreateDynamicObject(19466, 918.9342, -1462.7762, 2756.4970, 0.0000, 0.0000, 90.0000); //window001
	g_Object[62] = CreateDynamicObject(19087, 919.7230, -1462.7740, 2756.3122, 0.0000, 0.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[62], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[63] = CreateDynamicObject(19087, 917.9428, -1462.7740, 2756.3122, 0.0000, 0.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[63], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[64] = CreateDynamicObject(19087, 919.8325, -1462.7740, 2755.5312, 90.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[64], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[65] = CreateDynamicObject(19087, 919.8325, -1462.7740, 2755.8715, 90.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[65], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[66] = CreateDynamicObject(19087, 919.8325, -1462.7740, 2754.4501, 90.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[66], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[67] = CreateDynamicObject(19087, 918.8919, -1462.7740, 2755.5412, 0.0000, 0.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[67], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[68] = CreateDynamicObject(18762, 916.7473, -1463.0930, 2754.7031, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[68], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[69] = CreateDynamicObject(19385, 911.7733, -1458.5091, 2755.0256, 0.0000, 0.0000, 0.0000); //wall033
	SetDynamicObjectMaterial(g_Object[69], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[70] = CreateDynamicObject(19464, 907.7542, -1456.9422, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[70], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[71] = CreateDynamicObject(19464, 908.7846, -1456.9621, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[71], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[72] = CreateDynamicObject(3051, 910.3054, -1457.1009, 2754.6354, 0.0000, 0.0000, 135.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[72], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[73] = CreateDynamicObject(3051, 907.3848, -1457.0985, 2754.6354, 0.0000, 0.0000, 135.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[73], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[74] = CreateDynamicObject(19565, 909.9224, -1457.0998, 2756.3854, 0.0000, 0.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[74], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[75] = CreateDynamicObject(3051, 909.0891, -1457.1036, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[75], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[76] = CreateDynamicObject(3051, 906.1680, -1457.0931, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[76], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[77] = CreateDynamicObject(19565, 909.9323, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[77], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[78] = CreateDynamicObject(19565, 909.4622, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[78], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[79] = CreateDynamicObject(19565, 909.4622, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[79], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[80] = CreateDynamicObject(19565, 909.9326, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[80], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[81] = CreateDynamicObject(19565, 909.2525, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[81], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[82] = CreateDynamicObject(19565, 910.1328, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[82], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[83] = CreateDynamicObject(19565, 907.2523, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[83], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[84] = CreateDynamicObject(19565, 906.3621, -1456.9095, 2756.4055, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[84], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[85] = CreateDynamicObject(19565, 906.5822, -1457.1499, 2756.4055, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[85], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[86] = CreateDynamicObject(19565, 907.0526, -1457.1499, 2756.4055, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[86], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[87] = CreateDynamicObject(19565, 906.5623, -1457.1499, 2756.6455, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[87], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[88] = CreateDynamicObject(19565, 907.0327, -1457.1499, 2756.6455, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[88], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[89] = CreateDynamicObject(19565, 906.5625, -1457.1499, 2756.4052, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[89], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[90] = CreateDynamicObject(19174, 909.6889, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[90], "1. Stock", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[90], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[91] = CreateDynamicObject(19174, 906.8087, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[91], "1. Stock", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[91], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[92] = CreateDynamicObject(19174, 915.0288, -1463.6440, 2755.8454, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[92], "Cityhall", 0, 90, "Times New Roman", 40, 1, 0xFFA5A9A7, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[92], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[93] = CreateDynamicObject(19174, 915.0288, -1463.6440, 2755.4851, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[93], "Los Santos", 0, 90, "Times New Roman", 25, 1, 0xFFA5A9A7, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[93], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[94] = CreateDynamicObject(1753, 908.0017, -1472.2602, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[94], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[95] = CreateDynamicObject(19174, 909.4691, -1457.0837, 2754.0336, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[95], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[95], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[96] = CreateDynamicObject(19174, 907.0280, -1457.0837, 2754.9841, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[96], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[96], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[97] = CreateDynamicObject(2315, 924.1851, -1472.9880, 2753.3061, 0.0000, 0.0000, 0.0000); //CJ_TV_TABLE4
	g_Object[98] = CreateDynamicObject(19464, 921.7551, -1475.7132, 2751.6335, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[98], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[99] = CreateDynamicObject(19464, 921.7249, -1475.6832, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[99], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[100] = CreateDynamicObject(19464, 921.7951, -1475.6933, 2750.9328, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[100], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[101] = CreateDynamicObject(19565, 921.6159, -1475.3172, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[101], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[102] = CreateDynamicObject(19565, 921.6159, -1475.7873, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[102], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[103] = CreateDynamicObject(19565, 921.6159, -1474.8465, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[103], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[104] = CreateDynamicObject(19565, 921.6159, -1474.3763, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[104], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[105] = CreateDynamicObject(19565, 921.6159, -1473.9056, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[105], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[106] = CreateDynamicObject(19565, 921.6159, -1473.4355, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[106], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[107] = CreateDynamicObject(19565, 921.6159, -1472.9753, 2754.1630, 90.0000, 90.0000, 0.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[107], 0, 15048, "labigsave", "ah_carpet2kb", 0xFFFFFFFF);
	g_Object[108] = CreateDynamicObject(19450, 926.7258, -1472.9619, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[108], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[109] = CreateDynamicObject(19450, 926.7258, -1476.4620, 2753.2509, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[109], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[110] = CreateDynamicObject(19464, 924.8234, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[110], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[111] = CreateDynamicObject(19464, 930.7633, -1475.9718, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[111], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[112] = CreateDynamicObject(19464, 931.2830, -1475.7220, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[112], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[113] = CreateDynamicObject(2001, 922.5961, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[113], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[114] = CreateDynamicObject(1753, 925.8120, -1475.3032, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[114], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[115] = CreateDynamicObject(2001, 926.9959, -1475.1645, 2753.3142, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[115], 1, 630, "gta_potplants", "kb_teracota_pot64", 0xFFFFFFFF);
	g_Object[116] = CreateDynamicObject(19786, 924.9046, -1475.9768, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[116], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[116], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[117] = CreateDynamicObject(19825, 929.0645, -1475.8176, 2756.0183, 0.0000, 0.0000, 180.0000); //SprunkClock1
	g_Object[118] = CreateDynamicObject(1708, 922.4799, -1472.6322, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[118], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[118], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[119] = CreateDynamicObject(1708, 922.4628, -1474.1623, 2753.2717, 0.0000, 0.0000, 89.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[119], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[119], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[120] = CreateDynamicObject(1708, 927.5222, -1473.0107, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[120], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[120], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[121] = CreateDynamicObject(1708, 927.5123, -1471.4803, 2753.2717, 0.0000, 0.0000, -90.0000); //kb_chair02
	SetDynamicObjectMaterial(g_Object[121], 1, 1746, "cj_sofa", "CJ_FAB4", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[121], 2, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[122] = CreateDynamicObject(955, 930.7802, -1473.5239, 2753.6857, 0.0000, 0.0000, 270.0000); //CJ_EXT_SPRUNK
	g_Object[123] = CreateDynamicObject(956, 930.8322, -1474.9178, 2753.7165, 0.0000, 0.0000, 270.0000); //CJ_EXT_CANDY
	g_Object[124] = CreateDynamicObject(2816, 924.3339, -1472.9720, 2753.8125, 0.0000, 0.0000, 0.0000); //gb_bedmags01
	g_Object[125] = CreateDynamicObject(2855, 925.5050, -1472.9338, 2753.8032, 0.0000, 0.0000, -48.0000); //gb_bedmags05
	g_Object[126] = CreateDynamicObject(19450, 927.4669, -1461.8607, 2752.3906, 90.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[126], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[127] = CreateDynamicObject(18762, 920.9376, -1463.0930, 2754.7031, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[127], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[128] = CreateDynamicObject(19450, 922.2877, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[128], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[129] = CreateDynamicObject(19174, 924.0399, -1463.6440, 2755.5251, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[129], "Los Santos", 0, 90, "Times New Roman", 25, 1, 0xFFA5A9A7, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[129], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[130] = CreateDynamicObject(19174, 924.0399, -1463.6440, 2755.8454, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[130], "Cityhall", 0, 90, "Times New Roman", 40, 1, 0xFFA5A9A7, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[130], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[131] = CreateDynamicObject(19385, 927.4738, -1458.5091, 2755.0256, 0.0000, 0.0000, 0.0000); //wall033
	SetDynamicObjectMaterial(g_Object[131], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[132] = CreateDynamicObject(1569, 927.4956, -1459.2479, 2753.2839, 0.0000, 0.0000, -48.7999); //ADAM_V_DOOR
	g_Object[133] = CreateDynamicObject(19174, 918.8895, -1462.8747, 2756.3559, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[133], "i", 0, 90, "Webdings", 70, 1, 0xFFA5A9A7, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[133], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[134] = CreateDynamicObject(18981, 918.0518, -1454.1363, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[134], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[135] = CreateDynamicObject(18981, 897.3908, -1463.8270, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[135], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[136] = CreateDynamicObject(18981, 943.0202, -1463.8270, 2757.7150, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[136], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[137] = CreateDynamicObject(19464, 934.9027, -1464.8940, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[137], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[138] = CreateDynamicObject(18981, 923.0510, -1463.5339, 2752.8317, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[138], 0, 15034, "genhotelsave", "bathtile05_int", 0xFFFFFFFF);
	g_Object[139] = CreateDynamicObject(19450, 922.7360, -1464.6108, 2753.2529, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[139], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[140] = CreateDynamicObject(19464, 934.1234, -1472.8424, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[140], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[141] = CreateDynamicObject(19464, 934.9027, -1470.8310, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[141], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[142] = CreateDynamicObject(1753, 934.0222, -1472.2602, 2753.2915, 0.0000, 0.0000, 180.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[142], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[143] = CreateDynamicObject(3034, 934.7407, -1465.0699, 2755.4609, 0.0000, 0.0000, -90.0000); //bd_window
	SetDynamicObjectMaterial(g_Object[143], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[144] = CreateDynamicObject(19430, 934.8759, -1466.7534, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[144], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[145] = CreateDynamicObject(19450, 925.7769, -1463.5218, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[145], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[146] = CreateDynamicObject(19430, 934.8759, -1462.4420, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[146], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[147] = CreateDynamicObject(19174, 934.7780, -1459.5168, 2755.6752, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetDynamicObjectMaterial(g_Object[147], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	g_Object[148] = CreateDynamicObject(19174, 934.7780, -1470.5576, 2755.6752, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetDynamicObjectMaterial(g_Object[148], 0, 2254, "picture_frame_clip", "CJ_PAINTING15", 0xFFFFFFFF);
	g_Object[149] = CreateDynamicObject(19450, 933.2952, -1476.0218, 2753.2500, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[149], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[150] = CreateDynamicObject(19450, 906.5750, -1476.0218, 2753.2500, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[150], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[151] = CreateDynamicObject(19450, 913.1157, -1472.9416, 2753.2800, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[151], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[152] = CreateDynamicObject(3051, 929.1109, -1457.0914, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[152], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[153] = CreateDynamicObject(3051, 930.3195, -1457.1086, 2754.6354, 0.0000, 0.0000, 134.6999); //lift_dr
	SetDynamicObjectMaterial(g_Object[153], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[154] = CreateDynamicObject(3051, 933.3319, -1457.0992, 2754.6354, 0.0000, 0.0000, 136.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[154], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[155] = CreateDynamicObject(3051, 932.1450, -1457.0965, 2754.6354, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[155], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[156] = CreateDynamicObject(19174, 930.0083, -1457.0837, 2754.9841, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[156], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[156], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[157] = CreateDynamicObject(19174, 932.4487, -1457.0837, 2754.0231, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[157], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[157], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[158] = CreateDynamicObject(19464, 934.9027, -1458.9647, 2755.7070, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[158], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[159] = CreateDynamicObject(18766, 925.5288, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[159], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[160] = CreateDynamicObject(19464, 931.9254, -1456.9621, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[160], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[161] = CreateDynamicObject(19464, 926.0551, -1456.9422, 2755.7070, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[161], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[162] = CreateDynamicObject(18766, 914.8186, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[162], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[163] = CreateDynamicObject(18766, 924.1887, -1463.5604, 2758.5424, 90.0000, 90.0000, 90.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[163], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[164] = CreateDynamicObject(18766, 907.2075, -1470.9383, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[164], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[165] = CreateDynamicObject(18766, 907.3577, -1461.0788, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[165], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[166] = CreateDynamicObject(18766, 933.2080, -1470.9383, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[166], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[167] = CreateDynamicObject(18981, 918.0518, -1454.1363, 2759.4965, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[167], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[168] = CreateDynamicObject(18981, 897.3908, -1463.8270, 2759.4863, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[168], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[169] = CreateDynamicObject(18981, 942.9807, -1463.8270, 2759.4863, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[169], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[170] = CreateDynamicObject(18762, 913.1666, -1473.9322, 2759.4521, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[170], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[171] = CreateDynamicObject(18762, 913.1666, -1469.0615, 2759.4519, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[171], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[172] = CreateDynamicObject(18762, 927.4771, -1473.9322, 2759.5019, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[172], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[173] = CreateDynamicObject(18762, 927.4771, -1468.9621, 2759.5019, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[173], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[174] = CreateDynamicObject(19464, 924.8234, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[174], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[175] = CreateDynamicObject(19464, 918.8933, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[175], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[176] = CreateDynamicObject(19464, 912.9534, -1475.9615, 2760.7905, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[176], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[177] = CreateDynamicObject(19464, 910.1743, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[177], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[178] = CreateDynamicObject(19464, 939.3153, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[178], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[179] = CreateDynamicObject(19464, 918.8933, -1476.1118, 2757.9890, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[179], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[180] = CreateDynamicObject(18766, 933.0078, -1461.0710, 2758.5424, 90.0000, 90.0000, 0.0000); //Concrete10mx1mx5m
	SetDynamicObjectMaterial(g_Object[180], 0, 10765, "airportgnd_sfse", "white", 0xFFBDBEC6);
	g_Object[181] = CreateDynamicObject(3858, 909.8286, -1473.8785, 2762.0288, 0.0000, 0.0000, -45.2000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[181], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[182] = CreateDynamicObject(3859, 912.4848, -1466.5985, 2762.0224, 0.0000, 0.0000, 106.8000); //ottosmash04
	SetDynamicObjectMaterial(g_Object[182], 0, 1717, "cj_tv", "green_glass_64", 0xFF9F9D94);
	g_Object[183] = CreateDynamicObject(3859, 917.5772, -1466.6174, 2762.0224, 0.0000, 0.0000, 106.8000); //ottosmash04
	SetDynamicObjectMaterial(g_Object[183], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[184] = CreateDynamicObject(3859, 922.6889, -1466.6313, 2762.0224, 0.0000, 0.0000, 107.0998); //ottosmash04
	SetDynamicObjectMaterial(g_Object[184], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[185] = CreateDynamicObject(3858, 930.5883, -1473.8929, 2762.0288, 0.0000, 0.0000, -44.7000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[185], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[186] = CreateDynamicObject(1897, 920.0504, -1466.5904, 2761.1047, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[187] = CreateDynamicObject(1897, 920.0504, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[188] = CreateDynamicObject(1897, 920.0504, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[189] = CreateDynamicObject(1897, 925.1815, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[190] = CreateDynamicObject(1897, 925.1810, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[191] = CreateDynamicObject(1897, 925.1810, -1466.5904, 2761.1057, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[192] = CreateDynamicObject(1897, 930.4218, -1466.5904, 2761.1047, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[193] = CreateDynamicObject(1897, 930.4212, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[194] = CreateDynamicObject(1897, 930.4212, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[195] = CreateDynamicObject(1897, 914.9406, -1466.5904, 2763.8161, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[196] = CreateDynamicObject(1897, 914.9406, -1466.5904, 2763.3256, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[197] = CreateDynamicObject(1897, 914.9412, -1466.5904, 2761.1057, 0.0000, 0.0000, -90.0000); //wheel_support
	g_Object[198] = CreateDynamicObject(1897, 909.9411, -1466.5904, 2761.1057, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[199] = CreateDynamicObject(1897, 909.9409, -1466.5904, 2763.3256, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[200] = CreateDynamicObject(1897, 909.9403, -1466.5904, 2763.8161, 0.0000, 0.0000, 90.0000); //wheel_support
	g_Object[201] = CreateDynamicObject(19087, 914.9141, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[201], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[202] = CreateDynamicObject(19087, 912.5037, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[202], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[203] = CreateDynamicObject(19087, 917.4243, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[203], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[204] = CreateDynamicObject(19087, 919.8441, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[204], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[205] = CreateDynamicObject(19087, 922.2941, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[205], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[206] = CreateDynamicObject(19087, 924.7442, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[206], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[207] = CreateDynamicObject(19087, 927.1638, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[207], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[208] = CreateDynamicObject(19087, 929.5642, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[208], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[209] = CreateDynamicObject(19087, 930.3847, -1466.5832, 2764.9125, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[209], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[210] = CreateDynamicObject(19087, 930.3350, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[210], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[211] = CreateDynamicObject(19087, 927.8847, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[211], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[212] = CreateDynamicObject(19087, 925.4448, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[212], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[213] = CreateDynamicObject(1897, 909.8302, -1475.7408, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[214] = CreateDynamicObject(19087, 920.5443, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[214], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[215] = CreateDynamicObject(19087, 918.1032, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[215], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[216] = CreateDynamicObject(19087, 915.6630, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[216], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[217] = CreateDynamicObject(19087, 913.2529, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[217], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[218] = CreateDynamicObject(19087, 912.5025, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[218], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[219] = CreateDynamicObject(19087, 912.5025, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[219], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[220] = CreateDynamicObject(19087, 914.9229, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[220], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[221] = CreateDynamicObject(19087, 917.5131, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[221], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[222] = CreateDynamicObject(19087, 919.9437, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[222], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[223] = CreateDynamicObject(19087, 922.6140, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[223], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[224] = CreateDynamicObject(19087, 925.0349, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[224], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[225] = CreateDynamicObject(19087, 927.4047, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[225], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[226] = CreateDynamicObject(19087, 929.8048, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[226], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[227] = CreateDynamicObject(19087, 930.3850, -1466.5832, 2762.2011, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[227], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[228] = CreateDynamicObject(19087, 923.0048, -1466.5832, 2764.4221, 0.0000, 90.0000, 0.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[228], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[229] = CreateDynamicObject(1897, 909.8308, -1475.7419, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[230] = CreateDynamicObject(1897, 909.8308, -1475.7419, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[231] = CreateDynamicObject(1897, 909.8308, -1471.2009, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[232] = CreateDynamicObject(1897, 909.8308, -1471.2010, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[233] = CreateDynamicObject(1897, 909.8302, -1471.2004, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[234] = CreateDynamicObject(19087, 909.8543, -1468.6241, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[234], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[235] = CreateDynamicObject(19087, 909.8543, -1466.6048, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[235], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[236] = CreateDynamicObject(19087, 909.8543, -1471.3337, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[236], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[237] = CreateDynamicObject(19087, 909.8543, -1473.1749, 2764.4221, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[237], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[238] = CreateDynamicObject(19087, 909.8543, -1473.1749, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[238], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[239] = CreateDynamicObject(19087, 909.8543, -1470.7441, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[239], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[240] = CreateDynamicObject(19087, 909.8543, -1468.3044, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[240], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[241] = CreateDynamicObject(19087, 909.8543, -1466.6335, 2764.9125, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[241], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[242] = CreateDynamicObject(19087, 909.8543, -1473.2651, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[242], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[243] = CreateDynamicObject(19087, 909.8543, -1470.8254, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[243], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[244] = CreateDynamicObject(19087, 909.8543, -1468.4858, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[244], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[245] = CreateDynamicObject(19087, 909.8543, -1466.6445, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[245], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[246] = CreateDynamicObject(3859, 927.8892, -1466.6334, 2762.0224, 0.0000, 0.0000, 107.0998); //ottosmash04
	SetDynamicObjectMaterial(g_Object[246], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[247] = CreateDynamicObject(1897, 930.5916, -1471.2004, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[248] = CreateDynamicObject(1897, 930.5916, -1471.2010, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[249] = CreateDynamicObject(1897, 930.5913, -1471.2009, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[250] = CreateDynamicObject(1897, 930.5913, -1475.7423, 2761.1062, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[251] = CreateDynamicObject(1897, 930.5905, -1475.7419, 2763.3256, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[252] = CreateDynamicObject(1897, 930.5902, -1475.7408, 2763.8161, 0.0000, 0.0000, 180.0000); //wheel_support
	g_Object[253] = CreateDynamicObject(19087, 930.5562, -1466.6445, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[253], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[254] = CreateDynamicObject(19087, 930.5562, -1468.9952, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[254], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[255] = CreateDynamicObject(19087, 930.5562, -1471.4339, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[255], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[256] = CreateDynamicObject(19087, 930.5562, -1473.8431, 2762.2016, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[256], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[257] = CreateDynamicObject(19087, 930.5562, -1473.8431, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[257], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[258] = CreateDynamicObject(19087, 930.5562, -1471.3935, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[258], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[259] = CreateDynamicObject(19087, 930.5562, -1469.0124, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[259], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[260] = CreateDynamicObject(19087, 930.5562, -1466.5511, 2764.4338, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[260], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[261] = CreateDynamicObject(19087, 930.5562, -1466.5511, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[261], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[262] = CreateDynamicObject(19087, 930.5562, -1468.9724, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[262], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[263] = CreateDynamicObject(19087, 930.5562, -1471.3735, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[263], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[264] = CreateDynamicObject(19087, 930.5562, -1473.8155, 2764.9143, 0.0000, 90.0000, 90.0000); //Rope1
	SetDynamicObjectMaterial(g_Object[264], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[265] = CreateDynamicObject(19565, 929.9935, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[265], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[266] = CreateDynamicObject(19565, 932.5051, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[266], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[267] = CreateDynamicObject(19565, 932.8754, -1457.1499, 2756.6357, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[267], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[268] = CreateDynamicObject(19565, 929.6226, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[268], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[269] = CreateDynamicObject(19565, 929.9931, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[269], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[270] = CreateDynamicObject(19565, 932.5037, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[270], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[271] = CreateDynamicObject(19565, 932.8837, -1457.1499, 2756.4155, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[271], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[272] = CreateDynamicObject(19174, 929.8189, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[272], "1. Stock", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[272], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[273] = CreateDynamicObject(19174, 932.6793, -1457.1361, 2756.5361, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[273], "1. Stock", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[273], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[274] = CreateDynamicObject(19565, 929.4240, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[274], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[275] = CreateDynamicObject(19565, 930.1942, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[275], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[276] = CreateDynamicObject(19565, 932.2946, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[276], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[277] = CreateDynamicObject(19565, 933.0853, -1456.9095, 2756.3754, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[277], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[278] = CreateDynamicObject(11711, 920.2321, -1475.9582, 2756.0922, 0.0000, 0.0000, 0.0000); //ExitSign1
	g_Object[279] = CreateDynamicObject(19450, 915.3059, -1457.0123, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[279], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[280] = CreateDynamicObject(19450, 913.4359, -1457.0023, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[280], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[281] = CreateDynamicObject(19450, 925.8062, -1456.9923, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[281], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[282] = CreateDynamicObject(19450, 922.7467, -1457.0123, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[282], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[283] = CreateDynamicObject(19450, 918.8057, -1457.0223, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[283], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[284] = CreateDynamicObject(19450, 916.5449, -1461.1208, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[284], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[285] = CreateDynamicObject(19450, 916.5449, -1457.8409, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[285], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[286] = CreateDynamicObject(19450, 922.7354, -1461.1175, 2753.2500, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[286], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[287] = CreateDynamicObject(19450, 922.7354, -1457.6269, 2753.2600, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[287], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[288] = CreateDynamicObject(19450, 922.2871, -1457.0223, 2752.3906, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[288], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF3D4A68);
	g_Object[289] = CreateDynamicObject(19430, 918.8248, -1462.7816, 2757.2348, 90.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[289], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[290] = CreateDynamicObject(2162, 923.5117, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[291] = CreateDynamicObject(2162, 915.5119, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[292] = CreateDynamicObject(2162, 913.4514, -1463.4350, 2753.2990, 0.0000, 0.0000, -180.0000); //MED_OFFICE_UNIT_1
	g_Object[293] = CreateDynamicObject(2199, 927.3060, -1460.9044, 2753.1269, 0.0000, 0.0000, 270.0000); //MED_OFFICE6_MC_1
	SetDynamicObjectMaterial(g_Object[293], 2, 14650, "ab_trukstpc", "sa_wood08_128", 0xFFFFFFFF);
	g_Object[294] = CreateDynamicObject(2199, 911.9057, -1461.3148, 2753.1269, 0.0000, 0.0000, 90.0000); //MED_OFFICE6_MC_1
	SetDynamicObjectMaterial(g_Object[294], 2, 14650, "ab_trukstpc", "sa_wood08_128", 0xFFFFFFFF);
	g_Object[295] = CreateDynamicObject(1671, 918.5828, -1460.8330, 2753.7797, 0.0000, 0.0000, 0.0000); //swivelchair_A
	g_Object[296] = CreateDynamicObject(2817, 914.6895, -1473.4670, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetDynamicObjectMaterial(g_Object[296], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[297] = CreateDynamicObject(2817, 914.6895, -1473.4670, 2753.8088, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetDynamicObjectMaterial(g_Object[297], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[298] = CreateDynamicObject(2817, 914.6895, -1473.4770, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetDynamicObjectMaterial(g_Object[298], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[299] = CreateDynamicObject(2817, 924.4199, -1473.4770, 2753.7687, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetDynamicObjectMaterial(g_Object[299], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[300] = CreateDynamicObject(2817, 924.4199, -1473.4770, 2753.7988, 0.0000, 0.0000, 0.0000); //gb_bedrug01
	SetDynamicObjectMaterial(g_Object[300], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[301] = CreateDynamicObject(1999, 919.2733, -1462.1870, 2753.2299, 0.0000, 0.0000, 180.0000); //officedesk2
	SetDynamicObjectMaterial(g_Object[301], 0, 18232, "cw_truckstopcs_t", "des_roswin3", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[301], 1, 14802, "lee_bdupsflat", "Bdup_table", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[301], 2, 14802, "lee_bdupsflat", "Bdup_table", 0xFFFFFFFF);
	g_Object[302] = CreateDynamicObject(2163, 924.7196, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[303] = CreateDynamicObject(2163, 922.4096, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[304] = CreateDynamicObject(2163, 913.0283, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[305] = CreateDynamicObject(2163, 915.2387, -1456.9438, 2754.5229, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_2
	g_Object[306] = CreateDynamicObject(19825, 919.1264, -1457.1561, 2756.2692, 0.0000, 0.0000, 0.0000); //SprunkClock1
	g_Object[307] = CreateDynamicObject(2200, 918.3737, -1457.1142, 2753.3464, 0.0000, 0.0000, 0.0000); //MED_OFFICE5_UNIT_1
	g_Object[308] = CreateDynamicObject(16780, 914.5795, -1460.3094, 2757.3347, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[309] = CreateDynamicObject(16780, 923.9711, -1460.3094, 2757.3347, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[310] = CreateDynamicObject(14687, 921.2670, -1462.5118, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[311] = CreateDynamicObject(14687, 934.2390, -1458.7705, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[312] = CreateDynamicObject(14687, 934.2490, -1463.6103, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[313] = CreateDynamicObject(14687, 934.2188, -1468.0317, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[314] = CreateDynamicObject(14687, 910.8579, -1463.6103, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[315] = CreateDynamicObject(14687, 910.8579, -1458.7292, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[316] = CreateDynamicObject(14687, 910.8579, -1468.0600, 2755.5612, 0.0000, 0.0000, 90.0000); //Int_tat_lights02
	g_Object[317] = CreateDynamicObject(14687, 926.0379, -1465.9333, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[318] = CreateDynamicObject(14687, 916.5460, -1465.9333, 2755.5612, 0.0000, 0.0000, 0.0000); //Int_tat_lights02
	g_Object[319] = CreateDynamicObject(3051, 910.3054, -1457.1009, 2761.3532, 0.0000, 0.0000, 135.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[319], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[320] = CreateDynamicObject(3051, 907.3848, -1457.0985, 2761.3666, 0.0000, 0.0000, 135.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[320], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[321] = CreateDynamicObject(3051, 909.0891, -1457.1036, 2761.3569, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[321], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[322] = CreateDynamicObject(3051, 906.1680, -1457.0931, 2761.3669, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[322], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[323] = CreateDynamicObject(3051, 929.1109, -1457.0914, 2761.3395, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[323], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[324] = CreateDynamicObject(3051, 930.3195, -1457.1086, 2761.3398, 0.0000, 0.0000, 134.6999); //lift_dr
	SetDynamicObjectMaterial(g_Object[324], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[325] = CreateDynamicObject(3051, 933.3319, -1457.0992, 2761.3481, 0.0000, 0.0000, 136.6000); //lift_dr
	SetDynamicObjectMaterial(g_Object[325], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[326] = CreateDynamicObject(3051, 932.1450, -1457.0965, 2761.3471, 0.0000, 0.0000, -43.9000); //lift_dr
	SetDynamicObjectMaterial(g_Object[326], 0, 10023, "bigwhitesfe", "liftdoors_kb_256", 0xFFFFFFFF);
	g_Object[327] = CreateDynamicObject(19464, 932.2858, -1456.9621, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[327], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[328] = CreateDynamicObject(19464, 930.2645, -1456.9421, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[328], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[329] = CreateDynamicObject(19464, 907.3543, -1456.9421, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[329], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[330] = CreateDynamicObject(19464, 909.2437, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[330], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[331] = CreateDynamicObject(19174, 930.0083, -1457.0837, 2761.5593, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[331], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[331], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[332] = CreateDynamicObject(19174, 907.0269, -1457.0837, 2761.5593, 0.0000, 180.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[332], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[332], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[333] = CreateDynamicObject(19174, 909.4674, -1457.0837, 2760.6384, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[333], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[333], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[334] = CreateDynamicObject(19174, 932.4478, -1457.0837, 2760.6384, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[334], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[334], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[335] = CreateDynamicObject(19174, 932.7396, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[335], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[335], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[336] = CreateDynamicObject(19174, 906.8192, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[336], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[336], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[337] = CreateDynamicObject(19174, 909.7092, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[337], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[337], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[338] = CreateDynamicObject(19565, 907.0526, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[338], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[339] = CreateDynamicObject(19565, 906.5822, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[339], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[340] = CreateDynamicObject(19565, 909.5128, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[340], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[341] = CreateDynamicObject(19565, 909.9533, -1457.1499, 2763.0705, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[341], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[342] = CreateDynamicObject(19565, 909.9533, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[342], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[343] = CreateDynamicObject(19565, 909.5128, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[343], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[344] = CreateDynamicObject(19565, 907.0526, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[344], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[345] = CreateDynamicObject(19565, 906.5825, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[345], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[346] = CreateDynamicObject(19565, 929.6544, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[346], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[347] = CreateDynamicObject(19565, 930.0045, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[347], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[348] = CreateDynamicObject(19565, 932.5454, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[348], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[349] = CreateDynamicObject(19565, 932.9459, -1457.1499, 2763.3208, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[349], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[350] = CreateDynamicObject(19565, 932.9459, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[350], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[351] = CreateDynamicObject(19565, 932.5454, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[351], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[352] = CreateDynamicObject(19565, 929.9940, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[352], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[353] = CreateDynamicObject(19565, 929.6536, -1457.1499, 2763.0905, 90.0000, 90.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[353], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[354] = CreateDynamicObject(19565, 929.4539, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[354], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[355] = CreateDynamicObject(19565, 930.2045, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[355], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[356] = CreateDynamicObject(19565, 932.3449, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[356], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[357] = CreateDynamicObject(19565, 933.1455, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[357], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[358] = CreateDynamicObject(19565, 910.1544, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[358], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[359] = CreateDynamicObject(19565, 909.3046, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[359], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[360] = CreateDynamicObject(19565, 907.2540, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[360], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[361] = CreateDynamicObject(19565, 906.3842, -1456.9095, 2763.0720, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[361], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[362] = CreateDynamicObject(19387, 922.6312, -1457.0212, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetDynamicObjectMaterial(g_Object[362], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[363] = CreateDynamicObject(19464, 917.4323, -1456.9128, 2765.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[363], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[364] = CreateDynamicObject(19464, 927.1738, -1456.9331, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[364], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[365] = CreateDynamicObject(19464, 911.5225, -1456.9331, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[365], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[366] = CreateDynamicObject(19464, 921.2628, -1456.9331, 2765.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[366], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[367] = CreateDynamicObject(19387, 916.0405, -1457.0412, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetDynamicObjectMaterial(g_Object[367], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[368] = CreateDynamicObject(19174, 921.0272, -1457.1136, 2761.4895, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[368], "Damen ", 0, 90, "Arial", 15, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[368], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[369] = CreateDynamicObject(1753, 925.3228, -1457.5426, 2759.9807, 0.0000, 0.0000, 0.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[369], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[370] = CreateDynamicObject(1753, 911.7719, -1457.5426, 2759.9807, 0.0000, 0.0000, 0.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[370], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[371] = CreateDynamicObject(19464, 938.5679, -1461.3734, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[371], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[372] = CreateDynamicObject(19464, 901.4240, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[372], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[373] = CreateDynamicObject(19464, 901.0338, -1466.3739, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[373], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[374] = CreateDynamicObject(19464, 901.0341, -1458.5622, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[374], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[375] = CreateDynamicObject(19387, 938.5313, -1465.9105, 2761.6650, 0.0000, 0.0000, 0.0000); //wall035
	SetDynamicObjectMaterial(g_Object[375], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[376] = CreateDynamicObject(3858, 927.8206, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[376], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[377] = CreateDynamicObject(3858, 922.0006, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[377], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[378] = CreateDynamicObject(3858, 916.1806, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[378], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[379] = CreateDynamicObject(3858, 910.3609, -1473.8166, 2764.9653, -45.5998, 90.0000, 0.0000); //ottosmash1
	SetDynamicObjectMaterial(g_Object[379], 0, 1717, "cj_tv", "green_glass_64", 0xFFFFFFFF);
	g_Object[380] = CreateDynamicObject(18981, 897.3908, -1463.8270, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[380], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[381] = CreateDynamicObject(18981, 943.0200, -1463.8270, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[381], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[382] = CreateDynamicObject(18981, 920.8698, -1454.0860, 2765.3720, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[382], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[383] = CreateDynamicObject(19430, 911.7835, -1458.6311, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[383], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[384] = CreateDynamicObject(19430, 927.4541, -1458.6311, 2757.2348, 90.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[384], 0, 1376, "cranes_dyn2_cj", "ws_oldpaintedblue", 0xFF46597A);
	g_Object[385] = CreateDynamicObject(18981, 897.3609, -1463.8270, 2759.5163, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[385], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[386] = CreateDynamicObject(18981, 943.0114, -1463.8270, 2759.5163, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[386], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[387] = CreateDynamicObject(18981, 919.9412, -1454.1279, 2759.5063, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[387], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[388] = CreateDynamicObject(19464, 901.0340, -1473.3723, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[388], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[389] = CreateDynamicObject(19464, 938.5737, -1473.3653, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[389], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[390] = CreateDynamicObject(19464, 938.5720, -1470.4040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[390], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[391] = CreateDynamicObject(19464, 938.5689, -1466.2845, 2765.8708, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[391], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[392] = CreateDynamicObject(19464, 938.1936, -1456.9521, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[392], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[393] = CreateDynamicObject(19464, 938.5936, -1455.4936, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[393], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[394] = CreateDynamicObject(19464, 934.8054, -1476.1616, 2762.3205, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[394], 0, 14801, "lee_bdupsmain", "Bdup_Blinds", 0xFFFFFFFF);
	g_Object[395] = CreateDynamicObject(19464, 905.7351, -1476.1616, 2762.3205, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[395], 0, 14801, "lee_bdupsmain", "Bdup_Blinds", 0xFFFFFFFF);
	g_Object[396] = CreateDynamicObject(19464, 900.7233, -1475.9814, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[396], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[397] = CreateDynamicObject(19464, 912.9534, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[397], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[398] = CreateDynamicObject(19464, 918.8842, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[398], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[399] = CreateDynamicObject(19464, 924.8151, -1475.9814, 2762.4321, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[399], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[400] = CreateDynamicObject(19464, 929.9545, -1475.9914, 2762.0214, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[400], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[401] = CreateDynamicObject(19464, 929.9545, -1475.9914, 2756.0769, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[401], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[402] = CreateDynamicObject(19464, 907.5247, -1475.9914, 2756.1970, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[402], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[403] = CreateDynamicObject(1753, 937.9417, -1468.2910, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[403], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[404] = CreateDynamicObject(1753, 937.9417, -1459.7016, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[404], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[405] = CreateDynamicObject(1753, 937.9417, -1472.6518, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[405], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[406] = CreateDynamicObject(1753, 901.6710, -1475.1933, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[406], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[407] = CreateDynamicObject(1753, 901.6710, -1471.3133, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[407], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[408] = CreateDynamicObject(19464, 901.0339, -1470.4338, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[408], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[409] = CreateDynamicObject(19464, 901.0319, -1461.3629, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[409], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[410] = CreateDynamicObject(19786, 901.1464, -1470.2236, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[410], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[410], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[411] = CreateDynamicObject(19786, 901.1464, -1474.1933, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[411], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[411], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[412] = CreateDynamicObject(19786, 901.1464, -1460.6839, 2762.4023, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[412], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[412], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[413] = CreateDynamicObject(1753, 901.6710, -1461.7126, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[413], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[414] = CreateDynamicObject(19786, 938.5164, -1460.6839, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[414], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[414], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[415] = CreateDynamicObject(19786, 938.5164, -1469.3752, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[415], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[415], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[416] = CreateDynamicObject(19786, 938.5164, -1473.5050, 2762.4023, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[416], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[416], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[417] = CreateDynamicObject(2002, 937.9525, -1471.5343, 2759.9567, 0.0000, 0.0000, -90.0000); //water_coolnu
	g_Object[418] = CreateDynamicObject(2002, 901.6923, -1472.2650, 2759.9567, 0.0000, 0.0000, 90.0000); //water_coolnu
	g_Object[419] = CreateDynamicObject(948, 901.5866, -1462.8619, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[420] = CreateDynamicObject(948, 901.5866, -1458.4813, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[421] = CreateDynamicObject(948, 937.9970, -1458.4813, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[422] = CreateDynamicObject(948, 937.9224, -1462.8619, 2759.9685, 0.0000, 0.0000, 0.0000); //Plant_Pot_10
	g_Object[423] = CreateDynamicObject(2010, 920.5430, -1457.4154, 2759.9716, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[423], 1, 6490, "tvstudio_law2", "tvstud03_LAw2", 0xFFFFFFFF);
	g_Object[424] = CreateDynamicObject(2010, 918.2318, -1457.4154, 2759.9716, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[424], 1, 6490, "tvstudio_law2", "tvstud03_LAw2", 0xFFFFFFFF);
	g_Object[425] = CreateDynamicObject(19174, 920.0172, -1457.1037, 2760.9187, 0.0000, 90.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[425], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[425], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[426] = CreateDynamicObject(19174, 918.8164, -1457.0937, 2763.3608, 0.0000, -90.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[426], "y", 0, 90, "Wingdings", 25, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[426], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[427] = CreateDynamicObject(19174, 921.5076, -1457.1037, 2761.8898, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[427], "__", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[427], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[428] = CreateDynamicObject(19174, 919.6466, -1457.0937, 2761.8898, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[428], "__", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[428], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[429] = CreateDynamicObject(19464, 915.5947, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[429], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[430] = CreateDynamicObject(1491, 921.8579, -1457.0078, 2760.0092, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	SetDynamicObjectMaterial(g_Object[430], 0, 18008, "intclothesa", "CJ_VICT_DOOR2", 0xFFFFFFFF);
	g_Object[431] = CreateDynamicObject(19174, 920.1066, -1457.1335, 2761.4895, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[431], "Herren", 0, 90, "Arial", 15, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[431], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[432] = CreateDynamicObject(19174, 920.4569, -1457.1135, 2762.3503, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[432], "WC", 0, 90, "Arial Black", 50, 1, 0xFF000000, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[432], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[433] = CreateDynamicObject(1491, 915.2772, -1457.0078, 2760.0092, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	SetDynamicObjectMaterial(g_Object[433], 0, 2878, "cj_vic", "CJ_VICT_DOOR", 0xFFFFFFFF);
	g_Object[434] = CreateDynamicObject(19464, 909.6546, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[434], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[435] = CreateDynamicObject(19464, 919.3026, -1456.9830, 2760.4577, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[435], 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFFFFFFFF);
	g_Object[436] = CreateDynamicObject(19464, 924.8046, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[436], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[437] = CreateDynamicObject(19464, 930.7351, -1475.9527, 2750.9528, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[437], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[438] = CreateDynamicObject(19464, 931.2553, -1475.6628, 2750.9528, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[438], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[439] = CreateDynamicObject(19464, 909.0150, -1475.6628, 2750.9528, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[439], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[440] = CreateDynamicObject(19464, 906.1853, -1472.7926, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[440], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[441] = CreateDynamicObject(19464, 934.0755, -1472.7926, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[441], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[442] = CreateDynamicObject(19464, 902.6057, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[442], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[443] = CreateDynamicObject(19464, 934.8853, -1464.3923, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[443], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[444] = CreateDynamicObject(19464, 934.8853, -1458.4527, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[444], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[445] = CreateDynamicObject(19464, 904.7053, -1458.9631, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[445], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[446] = CreateDynamicObject(19464, 904.7053, -1469.7829, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[446], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[447] = CreateDynamicObject(19464, 934.8853, -1470.3321, 2750.9729, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[447], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[448] = CreateDynamicObject(19464, 910.9254, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[448], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[449] = CreateDynamicObject(19464, 936.8955, -1456.9630, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[449], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[450] = CreateDynamicObject(19464, 930.4655, -1456.9630, 2750.9729, 0.0000, 0.0000, 89.8999); //wall104
	SetDynamicObjectMaterial(g_Object[450], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[451] = CreateDynamicObject(19464, 901.8554, -1461.8431, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[451], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[452] = CreateDynamicObject(19464, 901.8554, -1466.9239, 2750.9729, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[452], 0, 5042, "bombshop_las", "greymetal", 0xFFFFFFFF);
	g_Object[453] = CreateDynamicObject(19089, 936.7622, -1476.0279, 2765.0139, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[453], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[454] = CreateDynamicObject(19089, 905.3505, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[454], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[455] = CreateDynamicObject(19464, 911.6925, -1448.0040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[455], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[456] = CreateDynamicObject(19089, 934.6113, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[456], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[457] = CreateDynamicObject(19089, 932.5114, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[457], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[458] = CreateDynamicObject(19089, 935.6959, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[458], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[459] = CreateDynamicObject(19089, 907.6110, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[459], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[460] = CreateDynamicObject(19089, 903.2706, -1476.0279, 2765.1140, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[460], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[461] = CreateDynamicObject(19089, 933.5557, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[461], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[462] = CreateDynamicObject(18981, 918.2313, -1463.8270, 2765.3820, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[462], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[463] = CreateDynamicObject(19464, 911.6925, -1453.9134, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[463], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[464] = CreateDynamicObject(18763, 911.5178, -1450.7408, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetDynamicObjectMaterial(g_Object[464], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[465] = CreateDynamicObject(18763, 911.5178, -1454.4918, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetDynamicObjectMaterial(g_Object[465], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[466] = CreateDynamicObject(2515, 912.4298, -1451.4028, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[466], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[466], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[467] = CreateDynamicObject(2515, 912.4298, -1450.0821, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[467], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[467], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[468] = CreateDynamicObject(2515, 912.4298, -1453.8331, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[468], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[468], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[469] = CreateDynamicObject(2515, 912.4298, -1455.2136, 2761.0720, 0.0000, 0.0000, 90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[469], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[469], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[470] = CreateDynamicObject(19786, 926.8073, -1450.6240, 2762.2639, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[470], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetDynamicObjectMaterial(g_Object[470], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[471] = CreateDynamicObject(19786, 911.7078, -1454.4040, 2762.2639, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[471], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetDynamicObjectMaterial(g_Object[471], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[472] = CreateDynamicObject(19089, 906.5056, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[472], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[473] = CreateDynamicObject(19089, 904.2954, -1476.0279, 2764.8884, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[473], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[474] = CreateDynamicObject(19786, 911.7078, -1450.7137, 2762.2639, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[474], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetDynamicObjectMaterial(g_Object[474], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[475] = CreateDynamicObject(19786, 926.8577, -1454.5439, 2762.2639, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[475], 0, 10765, "airportgnd_sfse", "white", 0xFF5E7072);
	SetDynamicObjectMaterial(g_Object[475], 1, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	g_Object[476] = CreateDynamicObject(2741, 911.9041, -1452.5372, 2761.9111, 0.0000, 0.0000, 90.0000); //CJ_SOAP_DISP
	g_Object[477] = CreateDynamicObject(11706, 912.6079, -1452.6064, 2759.8071, 0.0000, 0.0000, 0.0000); //SmallWasteBin1
	g_Object[478] = CreateDynamicObject(11707, 911.9008, -1448.4228, 2760.9423, 0.0000, 0.0000, 90.0000); //TowelRack1
	g_Object[479] = CreateDynamicObject(11707, 913.8812, -1456.6722, 2760.9423, 0.0000, 0.0000, 180.0000); //TowelRack1
	g_Object[480] = CreateDynamicObject(19464, 911.5319, -1456.8735, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[480], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[481] = CreateDynamicObject(19464, 917.4118, -1456.8935, 2765.9201, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[481], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[482] = CreateDynamicObject(19464, 923.3214, -1456.8935, 2765.9201, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[482], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[483] = CreateDynamicObject(19464, 919.2819, -1456.8735, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[483], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[484] = CreateDynamicObject(19387, 922.6309, -1456.8415, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetDynamicObjectMaterial(g_Object[484], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[485] = CreateDynamicObject(19387, 916.0405, -1456.8415, 2761.6650, 0.0000, 0.0000, 90.0000); //wall035
	SetDynamicObjectMaterial(g_Object[485], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[486] = CreateDynamicObject(19464, 919.2819, -1454.2237, 2762.5297, 90.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[486], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[487] = CreateDynamicObject(19464, 919.2819, -1449.1544, 2762.5297, 90.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[487], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[488] = CreateDynamicObject(2602, 918.8112, -1454.3535, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[489] = CreateDynamicObject(2602, 918.7774, -1452.1710, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[490] = CreateDynamicObject(2602, 918.7683, -1450.1290, 2760.4091, 0.0000, 0.0000, -92.0000); //Police_cell_Toilet
	g_Object[491] = CreateDynamicObject(2528, 917.0606, -1445.8050, 2760.0144, 0.0000, 0.0000, 0.0000); //CJ_TOILET3
	g_Object[492] = CreateDynamicObject(19464, 915.8820, -1445.1855, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[492], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[493] = CreateDynamicObject(19464, 912.8524, -1444.4643, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[493], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[494] = CreateDynamicObject(19464, 915.5230, -1444.4941, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[494], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[495] = CreateDynamicObject(1491, 916.2495, -1447.5289, 2759.9321, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	g_Object[496] = CreateDynamicObject(1491, 913.3394, -1447.5289, 2759.9321, 0.0000, 0.0000, 0.0000); //Gen_doorINT01
	g_Object[497] = CreateDynamicObject(19464, 920.3118, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[497], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[498] = CreateDynamicObject(19464, 910.8120, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[498], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[499] = CreateDynamicObject(19464, 915.2119, -1447.4741, 2765.3906, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[499], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[500] = CreateDynamicObject(19464, 918.5029, -1444.4145, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[500], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[501] = CreateDynamicObject(19430, 915.5341, -1447.5362, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[501], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[502] = CreateDynamicObject(2528, 914.2509, -1445.7755, 2760.0144, 0.0000, 0.0000, 0.0000); //CJ_TOILET3
	g_Object[503] = CreateDynamicObject(18075, 915.5850, -1450.0450, 2764.8454, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[504] = CreateDynamicObject(16779, 915.4411, -1452.3680, 2764.8708, 0.0000, 0.0000, 0.0000); //ufo_light02
	g_Object[505] = CreateDynamicObject(19814, 911.8272, -1452.5699, 2761.1025, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[506] = CreateDynamicObject(19814, 911.8272, -1452.5699, 2761.2126, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[507] = CreateDynamicObject(19814, 911.8272, -1452.5699, 2760.9824, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[508] = CreateDynamicObject(19464, 926.8728, -1453.9134, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[508], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[509] = CreateDynamicObject(19464, 926.7316, -1456.8741, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[509], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[510] = CreateDynamicObject(11707, 924.6409, -1456.6822, 2760.9423, 0.0000, 0.0000, 180.0000); //TowelRack1
	g_Object[511] = CreateDynamicObject(18763, 927.2877, -1454.4918, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetDynamicObjectMaterial(g_Object[511], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[512] = CreateDynamicObject(18763, 927.2877, -1450.5815, 2758.4553, 0.0000, 0.0000, 0.0000); //Concrete3mx3mx5m
	SetDynamicObjectMaterial(g_Object[512], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[513] = CreateDynamicObject(19464, 926.8828, -1448.0235, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[513], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[514] = CreateDynamicObject(2515, 926.2197, -1455.2136, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[514], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[514], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[515] = CreateDynamicObject(2515, 926.2197, -1453.7335, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[515], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[515], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[516] = CreateDynamicObject(2515, 926.2197, -1451.2635, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[516], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[516], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[517] = CreateDynamicObject(2515, 926.2197, -1449.8236, 2761.0720, 0.0000, 0.0000, -90.0000); //CJ_BS_SINK
	SetDynamicObjectMaterial(g_Object[517], 0, 11150, "ab_acc_control", "ws_shipmetal5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[517], 1, 11301, "carshow_sfse", "ws_rollerdoor_silver", 0xFFFFFFFF);
	g_Object[518] = CreateDynamicObject(11706, 926.1981, -1452.5063, 2759.8071, 0.0000, 0.0000, 0.0000); //SmallWasteBin1
	g_Object[519] = CreateDynamicObject(2741, 926.6439, -1452.5472, 2761.9111, 0.0000, 0.0000, -90.0000); //CJ_SOAP_DISP
	g_Object[520] = CreateDynamicObject(19174, 929.8189, -1457.1361, 2763.1921, 0.0000, 0.0000, 0.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[520], "E.G.", 0, 90, "Arial Black", 20, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[520], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[521] = CreateDynamicObject(11707, 926.6912, -1448.4228, 2760.9423, 0.0000, 0.0000, -90.0000); //TowelRack1
	g_Object[522] = CreateDynamicObject(19814, 926.7271, -1452.5400, 2760.9824, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[523] = CreateDynamicObject(19814, 926.7271, -1452.5400, 2761.1225, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[524] = CreateDynamicObject(19814, 926.7271, -1452.5400, 2761.2626, 0.0000, 0.0000, -90.0000); //ElectricalOutlet2
	g_Object[525] = CreateDynamicObject(2528, 919.8004, -1449.7551, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[526] = CreateDynamicObject(2528, 919.8004, -1452.9956, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[527] = CreateDynamicObject(2528, 919.8004, -1455.6451, 2760.0144, 0.0000, 0.0000, 90.0000); //CJ_TOILET3
	g_Object[528] = CreateDynamicObject(19464, 925.4016, -1447.4841, 2762.5297, 90.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[528], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[529] = CreateDynamicObject(1753, 931.0811, -1470.3409, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[529], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[530] = CreateDynamicObject(1491, 921.5900, -1450.5792, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[531] = CreateDynamicObject(1491, 921.5869, -1453.6593, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[532] = CreateDynamicObject(1491, 921.5869, -1456.7395, 2759.9321, 0.0000, 0.0000, 90.0000); //Gen_doorINT01
	g_Object[533] = CreateDynamicObject(19430, 921.5739, -1454.4365, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[533], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[534] = CreateDynamicObject(19430, 920.7645, -1454.4365, 2760.6806, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[534], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[535] = CreateDynamicObject(19430, 919.9735, -1451.3664, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[535], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[536] = CreateDynamicObject(19430, 920.7636, -1451.3763, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[536], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[537] = CreateDynamicObject(19430, 921.5739, -1448.2961, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[537], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[538] = CreateDynamicObject(19430, 920.1641, -1454.4265, 2760.6806, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[538], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[539] = CreateDynamicObject(19430, 921.5739, -1451.3564, 2760.6806, 0.0000, 0.0000, 0.0000); //wall070
	SetDynamicObjectMaterial(g_Object[539], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[540] = CreateDynamicObject(19430, 920.7636, -1448.4565, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[540], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[541] = CreateDynamicObject(19430, 920.1535, -1448.4565, 2760.7014, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[541], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[542] = CreateDynamicObject(19464, 921.5219, -1449.1544, 2765.3295, 90.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[542], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[543] = CreateDynamicObject(19464, 921.5020, -1454.2047, 2765.3295, 90.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[543], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[544] = CreateDynamicObject(18075, 926.6956, -1450.3454, 2764.8454, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[545] = CreateDynamicObject(16779, 923.8812, -1452.3680, 2764.8708, 0.0000, 0.0000, 0.0000); //ufo_light02
	g_Object[546] = CreateDynamicObject(19175, 924.2739, -1447.6396, 2762.4118, 0.0000, 0.0000, 0.0000); //SAMPPicture4
	SetDynamicObjectMaterial(g_Object[546], 0, 2266, "picture_frame", "CJ_PAINTING18", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[546], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[547] = CreateDynamicObject(19089, 930.4857, -1451.8974, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[547], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[548] = CreateDynamicObject(19089, 930.4857, -1459.2679, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[548], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[549] = CreateDynamicObject(1753, 931.1015, -1474.7010, 2759.9807, 0.0000, 0.0000, 90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[549], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[550] = CreateDynamicObject(1753, 909.3314, -1472.6711, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[550], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[551] = CreateDynamicObject(1753, 909.3314, -1468.1905, 2759.9807, 0.0000, 0.0000, -90.0000); //SWANK_COUCH_1
	SetDynamicObjectMaterial(g_Object[551], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFFFFF);
	g_Object[552] = CreateDynamicObject(19089, 909.8756, -1451.8974, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[552], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[553] = CreateDynamicObject(19089, 909.8756, -1459.2375, 2759.9978, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[553], 0, 1560, "7_11_door", "cj_sheetmetal2", 0xFFFFFFFF);
	g_Object[554] = CreateDynamicObject(19174, 901.1901, -1465.8480, 2762.9099, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[554], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[554], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[555] = CreateDynamicObject(19174, 901.1901, -1465.8480, 2763.1000, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[555], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[555], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[556] = CreateDynamicObject(19174, 938.4401, -1465.8480, 2763.1000, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[556], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[556], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[557] = CreateDynamicObject(19174, 938.4398, -1465.8580, 2762.9018, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[557], "Personalverwaltung", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[557], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[558] = CreateDynamicObject(19174, 938.4503, -1465.8480, 2762.9299, 0.0000, 0.0000, 270.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[558], "___________", 0, 90, "Arial", 24, 1, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[558], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[559] = CreateDynamicObject(1491, 938.5797, -1465.1302, 2760.0092, 0.0000, 0.0000, 270.0000); //Gen_doorINT01
	SetDynamicObjectMaterial(g_Object[559], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[560] = CreateDynamicObject(1536, 901.1024, -1465.1301, 2759.9863, 0.0000, 0.0000, -90.0000); //Gen_doorEXT15
	SetDynamicObjectMaterial(g_Object[560], 0, 1569, "adam_v_doort", "ws_guardhousedoor", 0xFFFFFFFF);
	g_Object[561] = CreateDynamicObject(19814, 908.2202, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[562] = CreateDynamicObject(19814, 908.4503, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[563] = CreateDynamicObject(19814, 902.2800, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[564] = CreateDynamicObject(19814, 902.5399, -1475.8642, 2760.3498, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[565] = CreateDynamicObject(19814, 901.1403, -1462.3841, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[566] = CreateDynamicObject(19814, 901.1704, -1458.9731, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[567] = CreateDynamicObject(19814, 901.1702, -1468.3935, 2760.3098, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[568] = CreateDynamicObject(19814, 938.4500, -1459.0124, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[569] = CreateDynamicObject(19814, 938.4500, -1462.3730, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[570] = CreateDynamicObject(19814, 938.4500, -1471.0437, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[571] = CreateDynamicObject(19814, 938.4500, -1472.0240, 2760.3098, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[572] = CreateDynamicObject(19814, 936.9995, -1475.8741, 2760.3098, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[573] = CreateDynamicObject(19814, 937.2398, -1475.8741, 2760.3098, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[574] = CreateDynamicObject(2961, 904.8776, -1457.0854, 2761.3278, 0.0000, 0.0000, 0.0000); //fire_break
	g_Object[575] = CreateDynamicObject(2961, 934.5474, -1457.0854, 2761.3278, 0.0000, 0.0000, 0.0000); //fire_break
	g_Object[576] = CreateDynamicObject(2962, 934.5465, -1457.0898, 2761.3232, 0.0000, 0.0000, 0.0000); //fire_break_glass
	g_Object[577] = CreateDynamicObject(2962, 904.8767, -1457.0898, 2761.3232, 0.0000, 0.0000, 0.0000); //fire_break_glass
	g_Object[578] = CreateDynamicObject(19826, 917.0244, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetDynamicObjectMaterial(g_Object[578], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[579] = CreateDynamicObject(19826, 917.1646, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetDynamicObjectMaterial(g_Object[579], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[580] = CreateDynamicObject(19826, 923.6148, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetDynamicObjectMaterial(g_Object[580], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[581] = CreateDynamicObject(19826, 923.8048, -1456.6499, 2761.3168, 0.0000, 0.0000, 180.0000); //LightSwitch1
	SetDynamicObjectMaterial(g_Object[581], 0, 14706, "labig2int2", "lightswitch01_int", 0xFFFFFFFF);
	g_Object[582] = CreateDynamicObject(19814, 913.2304, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[583] = CreateDynamicObject(19814, 916.9713, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[584] = CreateDynamicObject(19814, 923.0114, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[585] = CreateDynamicObject(19814, 926.5117, -1475.8453, 2753.5849, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[586] = CreateDynamicObject(19814, 918.1419, -1462.6749, 2753.4748, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[587] = CreateDynamicObject(19814, 918.5722, -1462.6749, 2753.4748, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[588] = CreateDynamicObject(19786, 906.7141, -1472.8266, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[588], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[588], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[589] = CreateDynamicObject(19786, 932.9738, -1472.8266, 2755.8620, 0.0000, 0.0000, 180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[589], 0, 14570, "traidaqua", "ab_tv", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[589], 1, 14571, "chinese_furn", "ab_tv_noise", 0xFFFFFFFF);
	g_Object[590] = CreateDynamicObject(19387, 938.6715, -1465.9105, 2761.6650, 0.0000, 0.0000, 0.0000); //wall035
	SetDynamicObjectMaterial(g_Object[590], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[591] = CreateDynamicObject(19464, 938.6336, -1470.4040, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[591], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[592] = CreateDynamicObject(19464, 938.6336, -1461.3641, 2762.5297, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[592], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[593] = CreateDynamicObject(19464, 938.6320, -1466.2845, 2765.8708, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[593], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[594] = CreateDynamicObject(19430, 944.8953, -1468.0417, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[594], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[595] = CreateDynamicObject(18762, 944.7965, -1465.6184, 2760.4494, 0.0000, 90.0000, 90.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[595], 0, 10765, "airportgnd_sfse", "white", 0xFF3B4E78);
	g_Object[596] = CreateDynamicObject(19430, 944.8953, -1463.2016, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[596], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[597] = CreateDynamicObject(19430, 944.8953, -1465.6627, 2759.9421, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[597], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[598] = CreateDynamicObject(19430, 944.3754, -1466.2519, 2760.1323, 90.0000, 90.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[598], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[599] = CreateDynamicObject(19430, 944.3754, -1464.9720, 2760.1323, 90.0000, 90.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[599], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[600] = CreateDynamicObject(1714, 946.6273, -1466.6816, 2759.9899, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[601] = CreateDynamicObject(19175, 944.2650, -1465.4127, 2759.8366, 0.0000, 0.0000, 270.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[601], "Schalter l", 0, 90, "Arial", 20, 1, 0xFFFFFFFF, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[601], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[602] = CreateDynamicObject(19175, 944.2650, -1467.7425, 2759.8366, 0.0000, 0.0000, 270.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[602], "Schalter ll", 0, 90, "Arial", 20, 1, 0xFFFFFFFF, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[602], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[603] = CreateDynamicObject(1714, 946.6273, -1464.5013, 2759.9899, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[604] = CreateDynamicObject(19808, 945.0086, -1464.4233, 2760.9680, 0.0000, 0.0000, 90.0000); //Keyboard1
	g_Object[605] = CreateDynamicObject(19808, 945.0086, -1466.7937, 2760.9680, 0.0000, 0.0000, 90.0000); //Keyboard1
	g_Object[606] = CreateDynamicObject(2601, 944.5239, -1464.4315, 2760.9790, 0.0000, 0.0000, 0.0000); //CJ_JUICE_CAN
	SetDynamicObjectMaterial(g_Object[606], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[607] = CreateDynamicObject(2601, 944.6040, -1466.7921, 2760.9790, 0.0000, 0.0000, 0.0000); //CJ_JUICE_CAN
	SetDynamicObjectMaterial(g_Object[607], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[608] = CreateDynamicObject(2263, 945.0792, -1464.4593, 2761.1420, -16.7000, 0.0000, 90.0000); //Frame_SLIM_4
	SetDynamicObjectMaterial(g_Object[608], 0, 3881, "apsecurity_sfxrf", "WIN_DESKTOP", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[608], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[609] = CreateDynamicObject(2601, 944.6040, -1464.4322, 2760.9189, 0.0000, 90.0000, 90.0000); //CJ_JUICE_CAN
	SetDynamicObjectMaterial(g_Object[609], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[610] = CreateDynamicObject(2263, 944.1259, -1466.7998, 2760.9052, 16.4999, 0.0000, 270.0000); //Frame_SLIM_4
	SetDynamicObjectMaterial(g_Object[610], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[610], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[611] = CreateDynamicObject(2263, 944.1373, -1464.4189, 2760.8666, 16.4999, 0.0000, 270.0000); //Frame_SLIM_4
	SetDynamicObjectMaterial(g_Object[611], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[611], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[612] = CreateDynamicObject(2263, 945.0676, -1466.8298, 2761.1801, -16.7000, 0.0000, 90.0000); //Frame_SLIM_4
	SetDynamicObjectMaterial(g_Object[612], 0, 3881, "apsecurity_sfxrf", "WIN_DESKTOP", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[612], 1, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[613] = CreateDynamicObject(2601, 944.6040, -1466.7922, 2760.9189, 0.0000, 90.0000, 90.0000); //CJ_JUICE_CAN
	SetDynamicObjectMaterial(g_Object[613], 0, 10765, "airportgnd_sfse", "black64", 0xFFFFFFFF);
	g_Object[614] = CreateDynamicObject(19513, 944.8659, -1463.8675, 2760.9340, 0.0000, 0.0000, 90.0000); //whitephone
	g_Object[615] = CreateDynamicObject(19513, 944.8659, -1466.2380, 2760.9340, 0.0000, 0.0000, 90.0000); //whitephone
	g_Object[616] = CreateDynamicObject(1811, 939.2077, -1463.7757, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[617] = CreateDynamicObject(1811, 939.2077, -1462.7456, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[618] = CreateDynamicObject(1811, 939.2077, -1461.7054, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[619] = CreateDynamicObject(1811, 939.2077, -1467.8857, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[620] = CreateDynamicObject(1811, 939.2077, -1468.9260, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[621] = CreateDynamicObject(1811, 939.2077, -1469.9460, 2760.5717, 0.0000, 0.0000, 180.0000); //MED_DIN_CHAIR_5
	g_Object[622] = CreateDynamicObject(19175, 938.7739, -1462.8496, 2762.4118, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynamicObjectMaterial(g_Object[622], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[622], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[623] = CreateDynamicObject(19175, 938.7739, -1468.7794, 2762.4118, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynamicObjectMaterial(g_Object[623], 0, 2266, "picture_frame", "CJ_PAINTING16", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[623], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[624] = CreateDynamicObject(19464, 941.5139, -1471.3243, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[624], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[625] = CreateDynamicObject(19464, 947.4340, -1471.3243, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[625], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[626] = CreateDynamicObject(19464, 947.4340, -1460.3436, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[626], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[627] = CreateDynamicObject(19464, 941.7039, -1460.3232, 2762.5297, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[627], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[628] = CreateDynamicObject(19464, 949.9140, -1463.3531, 2762.5297, 0.0000, 0.0000, 180.0000); //wall104
	SetDynamicObjectMaterial(g_Object[628], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[629] = CreateDynamicObject(19464, 949.9140, -1469.2729, 2762.5297, 0.0000, 0.0000, 180.0000); //wall104
	SetDynamicObjectMaterial(g_Object[629], 0, 15041, "bigsfsave", "wall6", 0xFFFFFFFF);
	g_Object[630] = CreateDynamicObject(1811, 940.7675, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[631] = CreateDynamicObject(1811, 942.0974, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[632] = CreateDynamicObject(1811, 943.3975, -1460.8951, 2760.5717, 0.0000, 0.0000, 90.0000); //MED_DIN_CHAIR_5
	g_Object[633] = CreateDynamicObject(1811, 943.3975, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[634] = CreateDynamicObject(1811, 942.0269, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[635] = CreateDynamicObject(1811, 940.6666, -1470.7954, 2760.5717, 0.0000, 0.0000, -90.0000); //MED_DIN_CHAIR_5
	g_Object[636] = CreateDynamicObject(2010, 939.3461, -1470.7407, 2759.9838, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[636], 1, 18012, "genintgeneric", "planterbox128", 0xFFFFFFFF);
	g_Object[637] = CreateDynamicObject(2010, 939.3461, -1460.8907, 2759.9838, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[637], 1, 18012, "genintgeneric", "planterbox128", 0xFFFFFFFF);
	g_Object[638] = CreateDynamicObject(2161, 944.8826, -1460.4896, 2760.8225, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_4
	g_Object[639] = CreateDynamicObject(2161, 945.2528, -1471.2099, 2760.8225, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_4
	g_Object[640] = CreateDynamicObject(2162, 949.7091, -1469.1296, 2760.9421, 0.0000, 0.0000, 270.0000); //MED_OFFICE_UNIT_1
	g_Object[641] = CreateDynamicObject(2162, 949.7091, -1461.5295, 2760.9421, 0.0000, 0.0000, 270.0000); //MED_OFFICE_UNIT_1
	g_Object[642] = CreateDynamicObject(2164, 949.7589, -1464.0985, 2759.9963, 0.0000, 0.0000, -90.0000); //MED_OFFICE_UNIT_5
	g_Object[643] = CreateDynamicObject(2167, 946.9199, -1460.2558, 2759.9951, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_7
	g_Object[644] = CreateDynamicObject(2167, 948.2697, -1460.2558, 2759.9951, 0.0000, 0.0000, 0.0000); //MED_OFFICE_UNIT_7
	g_Object[645] = CreateDynamicObject(2167, 948.2697, -1471.3559, 2759.9951, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_7
	g_Object[646] = CreateDynamicObject(2167, 946.9196, -1471.3559, 2759.9951, 0.0000, 0.0000, 180.0000); //MED_OFFICE_UNIT_7
	g_Object[647] = CreateDynamicObject(2186, 949.3242, -1466.6075, 2759.9931, 0.0000, 0.0000, -90.0000); //PHOTOCOPIER_1
	g_Object[648] = CreateDynamicObject(19464, 941.5139, -1471.3044, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[648], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[649] = CreateDynamicObject(19464, 946.9442, -1471.3044, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[649], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[650] = CreateDynamicObject(19464, 946.9442, -1460.3536, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[650], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[651] = CreateDynamicObject(19464, 941.7042, -1460.3536, 2767.2912, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[651], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[652] = CreateDynamicObject(19464, 938.6845, -1463.3634, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[652], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[653] = CreateDynamicObject(19464, 938.7045, -1468.3736, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[653], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[654] = CreateDynamicObject(19464, 949.8944, -1468.3736, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[654], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[655] = CreateDynamicObject(19464, 949.8944, -1462.4427, 2767.2912, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[655], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[656] = CreateDynamicObject(19464, 949.8944, -1462.4427, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[656], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[657] = CreateDynamicObject(19464, 949.8944, -1468.3530, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[657], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[658] = CreateDynamicObject(19464, 949.8944, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[658], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[659] = CreateDynamicObject(19464, 943.5642, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[659], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[660] = CreateDynamicObject(19464, 941.6843, -1471.3038, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[660], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[661] = CreateDynamicObject(19464, 941.6843, -1460.3537, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[661], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[662] = CreateDynamicObject(19464, 947.6240, -1460.3537, 2757.5200, 0.0000, 0.0000, 90.0000); //wall104
	SetDynamicObjectMaterial(g_Object[662], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[663] = CreateDynamicObject(19464, 938.6441, -1462.1733, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[663], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[664] = CreateDynamicObject(18075, 944.4329, -1465.8193, 2764.8713, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[665] = CreateDynamicObject(16780, 943.8864, -1467.9200, 2764.9145, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[666] = CreateDynamicObject(16780, 943.8864, -1464.1998, 2764.9145, 0.0000, 0.0000, 0.0000); //ufo_light03
	g_Object[667] = CreateDynamicObject(3034, 946.9309, -1460.4698, 2762.8015, 0.0000, 0.0000, 0.0000); //bd_window
	SetDynamicObjectMaterial(g_Object[667], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[668] = CreateDynamicObject(3034, 941.9708, -1460.4698, 2762.8015, 0.0000, 0.0000, 0.0000); //bd_window
	SetDynamicObjectMaterial(g_Object[668], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[669] = CreateDynamicObject(3034, 946.9309, -1471.1999, 2762.8015, 0.0000, 0.0000, 180.0000); //bd_window
	SetDynamicObjectMaterial(g_Object[669], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[670] = CreateDynamicObject(3034, 941.9207, -1471.1904, 2762.8015, 0.0000, 0.0000, 180.0000); //bd_window
	SetDynamicObjectMaterial(g_Object[670], 0, 9901, "ferry_building", "skylight_windows", 0xFFFFFFFF);
	g_Object[671] = CreateDynamicObject(19450, 909.2650, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[671], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[672] = CreateDynamicObject(19825, 949.6734, -1466.1933, 2762.9707, 0.0000, 0.0000, -90.0000); //SprunkClock1
	SetDynamicObjectMaterial(g_Object[672], 0, 1654, "dynamite", "clock64", 0xFFFFFFFF);
	g_Object[673] = CreateDynamicObject(19450, 918.8350, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[673], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[674] = CreateDynamicObject(19450, 928.3848, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[674], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[675] = CreateDynamicObject(19450, 930.5847, -1461.9305, 2764.9331, 0.0000, 90.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[675], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[676] = CreateDynamicObject(19450, 934.5548, -1465.0008, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[676], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[677] = CreateDynamicObject(19450, 934.5551, -1471.1998, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[677], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[678] = CreateDynamicObject(19450, 905.3654, -1471.1998, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[678], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[679] = CreateDynamicObject(19450, 905.3654, -1464.9895, 2764.9331, 0.0000, 90.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[679], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[680] = CreateDynamicObject(19450, 933.1546, -1471.1811, 2766.5825, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[680], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[681] = CreateDynamicObject(19450, 936.0051, -1471.1811, 2766.5825, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[681], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[682] = CreateDynamicObject(19450, 936.0150, -1465.2004, 2766.5925, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[682], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[683] = CreateDynamicObject(19450, 933.1547, -1468.3299, 2766.5925, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[683], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[684] = CreateDynamicObject(19450, 931.2150, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[684], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[685] = CreateDynamicObject(19450, 921.5955, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[685], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[686] = CreateDynamicObject(19450, 911.9658, -1460.4696, 2766.5925, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[686], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[687] = CreateDynamicObject(19450, 908.7152, -1460.4593, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[687], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[688] = CreateDynamicObject(19450, 928.4057, -1463.4294, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[688], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[689] = CreateDynamicObject(19450, 918.7656, -1463.4294, 2766.5825, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[689], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[690] = CreateDynamicObject(19450, 911.6956, -1463.4294, 2766.5625, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[690], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[691] = CreateDynamicObject(19450, 903.9754, -1465.1798, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[691], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[692] = CreateDynamicObject(19450, 903.9754, -1471.2004, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[692], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[693] = CreateDynamicObject(19450, 906.8054, -1468.1510, 2766.5725, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[693], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[694] = CreateDynamicObject(19450, 906.8054, -1471.1826, 2766.5727, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[694], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[695] = CreateDynamicObject(945, 911.4801, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[695], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[695], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[695], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[695], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[696] = CreateDynamicObject(945, 907.9799, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[696], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[696], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[696], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[696], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[697] = CreateDynamicObject(945, 915.2000, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[697], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[697], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[697], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[697], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[698] = CreateDynamicObject(945, 919.0300, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[698], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[698], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[698], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[698], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[699] = CreateDynamicObject(945, 923.3801, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[699], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[699], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[699], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[699], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[700] = CreateDynamicObject(945, 927.1604, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[700], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[700], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[700], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[700], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[701] = CreateDynamicObject(945, 931.3502, -1462.0312, 2772.0705, 0.0000, 0.0000, 0.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[701], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[701], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[701], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[701], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[702] = CreateDynamicObject(945, 934.5601, -1464.2613, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[702], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[702], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[702], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[702], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[703] = CreateDynamicObject(945, 934.5601, -1468.5815, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[703], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[703], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[703], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[703], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[704] = CreateDynamicObject(945, 934.5601, -1473.1910, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[704], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[704], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[704], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[704], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[705] = CreateDynamicObject(945, 905.3192, -1473.1910, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[705], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[705], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[705], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[705], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[706] = CreateDynamicObject(945, 905.3192, -1464.6014, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[706], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[706], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[706], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[706], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[707] = CreateDynamicObject(945, 905.3192, -1468.9615, 2772.0705, 0.0000, 0.0000, 90.0000); //WS_CF_LAMPS
	SetDynamicObjectMaterial(g_Object[707], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[707], 1, 12850, "cunte_block1", "lightwall256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[707], 2, 8482, "csrspalace02", "casinolightsyel_128", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[707], 3, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[708] = CreateDynamicObject(19450, 901.1259, -1471.0997, 2766.5539, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[708], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[709] = CreateDynamicObject(19450, 901.1259, -1461.4602, 2766.5539, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[709], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[710] = CreateDynamicObject(19450, 901.1259, -1461.4602, 2758.2934, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[710], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[711] = CreateDynamicObject(19450, 901.1259, -1471.1606, 2758.2934, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[711], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[712] = CreateDynamicObject(19450, 905.7857, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[712], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[713] = CreateDynamicObject(19450, 915.4157, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[713], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[714] = CreateDynamicObject(19450, 925.0053, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[714], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[715] = CreateDynamicObject(19450, 934.6154, -1457.0102, 2766.5637, 0.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[715], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[716] = CreateDynamicObject(19450, 938.5158, -1461.8902, 2766.5637, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[716], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[717] = CreateDynamicObject(19450, 938.5158, -1471.4997, 2766.5637, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[717], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[718] = CreateDynamicObject(19450, 938.5158, -1471.4298, 2758.2827, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[718], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[719] = CreateDynamicObject(19450, 938.5158, -1460.3293, 2758.2827, 0.0000, 0.0000, 0.0000); //wall090
	SetDynamicObjectMaterial(g_Object[719], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[720] = CreateDynamicObject(19450, 940.1759, -1457.0283, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[720], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[721] = CreateDynamicObject(19450, 899.4359, -1457.0283, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[721], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[722] = CreateDynamicObject(19450, 899.4655, -1475.8977, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[722], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[723] = CreateDynamicObject(19450, 940.1760, -1475.8878, 2760.3825, 90.0000, 0.0000, 90.0000); //wall090
	SetDynamicObjectMaterial(g_Object[723], 0, 10765, "airportgnd_sfse", "white", 0xFF000000);
	g_Object[724] = CreateDynamicObject(11721, 936.6129, -1457.0749, 2760.5214, 0.0000, 0.0000, 0.0000); //Radiator1
	SetDynamicObjectMaterial(g_Object[724], 1, 14704, "lahss2_2int2", "HS_radiator2", 0xFFFFFFFF);
	g_Object[725] = CreateDynamicObject(11721, 902.9525, -1457.0749, 2760.5214, 0.0000, 0.0000, 0.0000); //Radiator1
	SetDynamicObjectMaterial(g_Object[725], 1, 14704, "lahss2_2int2", "HS_radiator2", 0xFFFFFFFF);
	g_Object[726] = CreateDynamicObject(19174, 901.1901, -1465.8580, 2762.9018, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[726], "Besprechungsraum", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[726], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[727] = CreateDynamicObject(19174, 901.1901, -1465.8580, 2762.7216, 0.0000, 0.0000, 90.0000); //SAMPPicture3
	SetDynObjMatText_Replace(g_Object[727], "nur für Befugte!", 0, 90, "Arial Black", 14, 0, 0xFF000000, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[727], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[728] = CreateDynamicObject(19464, 938.6441, -1469.6035, 2757.5200, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[728], 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0xFFFFFFFF);
	g_Object[729] = CreateDynamicObject(19464, 938.5836, -1464.4643, 2765.7199, 0.0000, 0.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[729], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	g_Object[730] = CreateDynamicObject(19430, 920.7636, -1448.4466, 2763.5612, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[730], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);
	g_Object[731] = CreateDynamicObject(19430, 920.1735, -1448.4266, 2763.5612, 0.0000, 0.0000, 90.0000); //wall070
	SetDynamicObjectMaterial(g_Object[731], 0, 17049, "cuntwf", "sw_walltile", 0xFFFFFFFF);



	// Farm house
	new retexture;

	retexture = CreateDynamicObject(19445, -1061.35645, -1209.69299, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1200.06006, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1190.42798, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1065.07422, -1214.27893, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.21045, -1205.37573, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.21045, -1215.00964, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1073.11646, -1200.64758, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1082.74951, -1200.64758, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1200.33472, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1190.70166, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1075.71155, -1190.58459, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1066.07849, -1190.58459, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1209.69299, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1200.06006, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1190.42798, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1065.07422, -1214.27893, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.21045, -1205.37573, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.21045, -1215.00964, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1073.11646, -1200.64758, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1082.74951, -1200.64758, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1200.33472, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1190.70166, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1075.71155, -1190.58459, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1066.07849, -1190.58459, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1200.33472, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1079.97754, -1190.70166, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1065.07422, -1214.27893, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1200.06006, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1061.35645, -1190.42798, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1066.51733, -1200.64758, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1060.09448, -1200.64758, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19383, -1066.51733, -1200.64758, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1060.09448, -1200.64758, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1066.51733, -1200.64758, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1066.51733, -1200.64758, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.23840, -1203.07166, 114.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.23840, -1203.07166, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1068.23840, -1203.07166, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19383, -1066.54675, -1198.34668, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1060.12451, -1198.34668, 114.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1063.33252, -1198.34668, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1063.33252, -1198.34668, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.80286, -1213.09143, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.80286, -1213.09143, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1066.49768, -1214.60730, 118.48510,   0.00000, 0.00000, 0.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1060.09448, -1200.64758, 121.98510,   0.00000, 0.00000, 90.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1062.15442, -1213.09180, 114.98510,   0.00000, 0.00000, 90.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19383, -1064.92773, -1211.57312, 118.48310,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1069.65515, -1208.27563, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19426, -1064.92676, -1209.16699, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.76355, -1204.60828, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.76355, -1201.39734, 118.48510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19383, -1066.20215, -1206.16150, 118.48310,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19383, -1063.27014, -1206.16345, 118.48310,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1060.06006, -1206.16345, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1069.69214, -1206.16150, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19445, -1069.65515, -1208.27563, 121.98510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19426, -1064.92676, -1209.16699, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.92773, -1211.57312, 121.98510,   0.00000, 0.00000, 0.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1060.06030, -1206.16345, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1069.41260, -1206.16150, 118.48510,   0.00000, 0.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
    retexture = CreateDynamicObject(19353, -1064.76355, -1201.39734, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
	retexture = CreateDynamicObject(19353, -1064.76355, -1204.60828, 121.98510,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "gz_vic2c");
   	retexture = CreateDynamicObject(19446, -1075.31055, -1199.42126, 119.78160,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1199.42126, 119.78160,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1196.99927, 122.30660,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1075.31055, -1196.99927, 122.30660,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1194.57727, 124.83260,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1075.31055, -1194.57727, 124.83260,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1191.81531, 119.78160,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1075.31055, -1191.81531, 119.78160,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1194.23730, 122.30660,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.67773, -1196.66028, 124.83260,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1075.31055, -1194.23730, 122.30660,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1075.31055, -1196.66028, 124.83260,   0.00000, -43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1066.81311, -1203.16077, 119.47760,   0.00000, 51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1066.81311, -1212.79285, 119.47760,   0.00000, 51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1064.08923, -1212.79285, 121.67560,   0.00000, 51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1064.08923, -1203.16077, 121.67560,   0.00000, 51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1062.70508, -1212.79285, 119.47760,   0.00000, -51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1062.70508, -1203.16077, 119.47760,   0.00000, -51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.42920, -1212.79285, 121.67560,   0.00000, -51.10000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19446, -1065.42920, -1203.16077, 121.67560,   0.00000, -51.10000, 0.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "sjmbigold6");
	retexture = CreateDynamicObject(19447, -1077.15747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1080.65747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1077.15747, -1186.80725, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1073.65747, -1186.80725, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1070.15747, -1186.80725, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1066.65747, -1186.80725, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1063.15747, -1186.80725, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1073.65747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1070.15747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1066.65747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1063.15747, -1196.44116, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1066.65747, -1206.07324, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1063.15747, -1206.07324, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1066.65747, -1215.70618, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1063.15747, -1215.70618, 113.14930,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(14877, -1062.94446, -1214.68359, 114.65240,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
    SetDynamicObjectMaterial(retexture, 1, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1064.65747, -1208.36218, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19355, -1064.65747, -1201.94055, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1068.15747, -1208.36218, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19355, -1068.15747, -1201.94055, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19355, -1061.15747, -1201.94055, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1061.15747, -1208.36218, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1068.15747, -1217.99622, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19428, -1066.43335, -1199.23059, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19428, -1062.93359, -1199.23059, 116.64730,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19428, -1062.93359, -1199.53064, 116.64530,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19428, -1066.43359, -1199.53064, 116.64530,   0.00000, 90.00000, 0.00000 );
	SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1078.33594, -1197.34692, 117.12130,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1078.33594, -1187.71484, 117.12130,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(19447, -1074.83594, -1197.34692, 117.12130,   0.00000, 90.00000, 0.00000 );
	SetDynamicObjectMaterial(retexture, 0, 3250, "cxref_oldwest", "des_ghotwood1");
	retexture = CreateDynamicObject(1308, -1070.85754, -1195.65662, 123.42250,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1071.48352, -1195.59265, 123.42250,   0.00000, 90.00000, 180.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1079.73706, -1201.34705, 117.42850,   0.00000, 43.80000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1079.80908, -1189.84302, 117.42850,   0.00000, 43.80000, -90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1061.57910, -1189.84302, 117.42850,   0.00000, 43.80000, -90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1061.49512, -1200.02197, 118.82850,   0.00000, 43.80000, 90.00000 );
	SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1074.13599, -1198.70593, 116.84450,   0.00000, 180.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1074.13599, -1193.61694, 116.84450,   0.00000, 180.00000, 90.00000 );
	SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1080.74402, -1190.67615, 112.87650,   0.00000, 180.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1080.77368, -1191.71704, 112.87650,   0.00000, 180.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1080.91833, -1186.41711, 112.87650,   0.00000, 180.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1080.90344, -1194.54810, 112.87650,   0.00000, 180.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
	retexture = CreateDynamicObject(1308, -1090.79199, -1187.22253, 112.87650,   -8.00000, 180.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 2, 1308, "telegraph", "telepole2128");
   	retexture = CreateDynamicObject(1416, -1060.88135, -1202.76221, 115.02550,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1060.88135, -1208.16162, 115.02550,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1060.88135, -1211.02234, 115.02550,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1068.68530, -1208.31494, 115.02550,   0.00000, 90.00000, 180.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1068.68530, -1206.73047, 115.02550,   0.00000, 90.00000, 180.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1064.91284, -1214.75476, 115.02550,   0.00000, 90.00000, -90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1073.50354, -1190.10986, 115.02550,   90.00000, 90.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1069.96448, -1190.10986, 115.02550,   90.00000, 90.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1066.60083, -1190.10986, 115.02550,   90.00000, 90.00000, 90.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1060.88086, -1196.43896, 119.11750,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1060.88086, -1194.67883, 119.11750,   0.00000, 90.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1080.45288, -1194.60876, 119.11750,   0.00000, 90.00000, 180.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
	retexture = CreateDynamicObject(1416, -1080.45288, -1196.36902, 119.11750,   0.00000, 90.00000, 180.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17008, "farmhouse", "examwind1_lae");
   	retexture = CreateDynamicObject(19448, -1078.81885, -1190.46191, 111.48640,   0.00000, 0.00000, 0.00000 );
   	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1076.01978, -1190.58459, 111.48640,   0.00000, 0.00000, 90.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1076.01978, -1191.71265, 111.48640,   0.00000, 0.00000, 90.00000 );
 	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1079.08118, -1190.50464, 109.98640,   0.00000, 90.00000, 0.00000 );
 	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
 	retexture = CreateDynamicObject(19448, -1081.63916, -1190.50464, 113.14640,   0.00000, 90.00000, 0.00000 );
 	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1080.74683, -1185.67883, 111.48640,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1080.74683, -1196.61877, 111.48640,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1080.74683, -1196.61877, 107.98640,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(19448, -1080.74683, -1185.67883, 107.98640,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1102.26514, -1202.46497, 109.41716,   0.00000, 0.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1080.82495, -1191.83545, 106.39420,   0.00000, 180.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1092.01111, -1196.88623, 115.36420,   0.00000, -1.00000, -110.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1096.53760, -1196.30383, 114.33620,   90.00000, -1.00000, -110.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1093.57141, -1184.10254, 106.39420,   90.00000, 180.00000, 0.00000 );
    SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	retexture = CreateDynamicObject(900, -1099.05664, -1198.11304, 105.52420,   90.00000, 180.00000, 180.00000 );
	SetDynamicObjectMaterial(retexture, 0, 17471, "cuntwlandse", "grasstype5_dirt");
	CreateDynamicObject(19304, -1088.44739, -1186.64453, 109.93100,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1186.64453, 111.17500,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1186.64453, 112.41800,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1191.89453, 109.93100,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1191.89453, 111.17500,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1191.89453, 112.41800,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1195.39856, 109.93100,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1195.39856, 112.41800,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1195.39856, 111.17500,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19304, -1088.44739, -1190.14648, 113.05100,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19468, -1089.14514, -1187.76221, 110.09460,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19468, -1091.69922, -1192.03979, 109.63360,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1437, -1079.38733, -1191.62622, 108.22540,   10.00000, 0.00000, 0.00000 );
	CreateDynamicObject(941, -1081.38721, -1188.41846, 110.33600,   0.00000, -7.00000, -90.00000 );
	CreateDynamicObject(2043, -1081.24817, -1187.69153, 110.82430,   0.00000, -7.00000, -90.00000 );
	CreateDynamicObject(2043, -1081.25623, -1187.95508, 110.85630,   0.00000, -7.00000, -90.00000 );
	CreateDynamicObject(2043, -1081.20715, -1188.19055, 110.89030,   0.00000, -7.00000, -90.00000 );
	CreateDynamicObject(356, -1081.65381, -1189.22107, 110.91110,   90.00000, 0.00000, 70.00000 );
	CreateDynamicObject(1271, -1087.49390, -1193.61108, 109.86880,   7.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3014, -1086.56824, -1193.45422, 109.81460,   7.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3633, -1081.79895, -1193.80469, 110.16360,   6.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3633, -1083.30200, -1193.73596, 110.16360,   6.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3014, -1085.92456, -1193.80676, 109.79060,   7.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3014, -1085.94434, -1193.17102, 109.88060,   7.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1271, -1086.23291, -1187.57556, 110.31580,   -4.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1271, -1085.33997, -1187.45471, 110.28980,   -4.00000, 0.00000, 0.00000 );
	CreateDynamicObject(355, -1085.99817, -1187.79626, 110.75880,   -100.79970, -72.54000, -45.00000 );
	CreateDynamicObject(1242, -1085.60876, -1187.96350, 110.14300,   -4.00000, 0.00000, 180.00000 );
	CreateDynamicObject(11392, -1056.24792, -1190.78271, 113.23570,   0.00000, 0.00000, -40.00000 );
	CreateDynamicObject(19815, -1076.34253, -1190.65002, 114.87370,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19921, -1077.27393, -1191.19031, 114.28640,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19900, -1075.16919, -1191.03809, 113.23710,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(936, -1076.70850, -1191.27759, 113.71320,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1337, -1067.42603, -1199.08789, 113.88670,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1454, -1078.99524, -1198.49084, 113.90120,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1454, -1077.60632, -1199.68274, 113.90120,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1208, -1061.87061, -1200.30139, 113.23890,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1208, -1062.65210, -1200.31311, 113.23890,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2671, -1075.45862, -1198.85132, 113.23680,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2674, -1067.30798, -1199.49817, 113.24560,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2845, -1062.58496, -1199.70898, 113.23700,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19621, -1063.70300, -1200.15588, 113.33350,   0.00000, 0.00000, 40.00000 );
	CreateDynamicObject(365, -1063.83215, -1200.39905, 113.39980,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(365, -1063.85608, -1200.24451, 113.30980,   0.00000, 90.00000, 10.00000 );
	CreateDynamicObject(1650, -1064.13220, -1200.38000, 113.54380,   0.00000, 0.00000, 217.00000 );
	CreateDynamicObject(2372, -1064.07568, -1198.50891, 113.23730,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1454, -1078.78406, -1199.43127, 117.87720,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1454, -1076.99109, -1199.31140, 117.87720,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1454, -1078.92029, -1197.58423, 117.87720,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1454, -1075.17590, -1199.26990, 117.87720,   90.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2671, -1077.00977, -1192.58081, 113.23680,   0.00000, 0.00000, 0.00000 );
    CreateDynamicObject(2261, -1067.62341, -1202.59436, 115.06510,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2022, -1061.92456, -1201.19299, 113.23550,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2019, -1061.92578, -1203.18237, 113.23550,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2016, -1064.92090, -1201.21326, 113.23550,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2017, -1061.92578, -1202.18408, 113.23550,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2013, -1063.92114, -1201.21326, 113.23550,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2015, -1061.92578, -1204.18164, 113.23550,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19581, -1061.85046, -1202.86133, 114.27770,   0.00000, 0.00000, 170.00000 );
	CreateDynamicObject(11718, -1062.11816, -1202.04871, 114.25640,   0.00000, 0.00000, 10.00000 );
	CreateDynamicObject(2821, -1061.90540, -1203.39197, 114.23650,   0.00000, 0.00000, 10.00000 );
	CreateDynamicObject(2829, -1064.06177, -1201.25806, 114.24480,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2112, -1064.98047, -1204.54675, 113.63210,   0.00000, 0.00000, 45.00000 );
	CreateDynamicObject(2120, -1064.49414, -1204.11487, 113.87490,   0.00000, 0.00000, 49.00000 );
	CreateDynamicObject(2120, -1064.61194, -1205.08850, 113.87490,   0.00000, 0.00000, -48.00000 );
	CreateDynamicObject(2120, -1066.13501, -1203.22449, 113.87490,   0.00000, 0.00000, 132.00000 );
	CreateDynamicObject(1786, -1062.38293, -1211.90552, 113.72560,   0.00000, 0.00000, -135.00000 );
	CreateDynamicObject(2314, -1062.06921, -1211.27478, 113.23470,   0.00000, 0.00000, -135.00000 );
	CreateDynamicObject(1761, -1065.43958, -1208.65613, 113.23540,   0.00000, 0.00000, 25.00000 );
	CreateDynamicObject(11734, -1062.05786, -1207.15149, 113.25250,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2315, -1063.23267, -1210.16943, 113.23670,   0.00000, 0.00000, -135.00000 );
	CreateDynamicObject(1711, -1066.38354, -1210.83850, 113.23360,   0.00000, 0.00000, 80.00000 );
	CreateDynamicObject(2258, -1064.15747, -1212.97485, 115.52060,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19560, -1064.61682, -1200.98779, 114.23600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2832, -1064.77563, -1204.60535, 114.03400,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1544, -1065.07666, -1204.01367, 114.02770,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2855, -1063.12695, -1210.00525, 113.72950,   0.00000, 0.00000, -135.00000 );
	CreateDynamicObject(2852, -1063.66760, -1210.56787, 113.73156,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19920, -1064.77356, -1211.22144, 113.73170,   0.00000, 0.00000, -130.00000 );
	CreateDynamicObject(2690, -1064.89612, -1200.45020, 114.56720,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(11724, -1061.74670, -1209.55444, 113.75660,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(11725, -1061.85925, -1209.55994, 113.64190,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1510, -1064.48840, -1211.01880, 113.74140,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(3027, -1064.50061, -1211.08289, 113.82940,   0.00000, 145.00000, 45.00000 );
	CreateDynamicObject(19572, -1061.67761, -1208.45447, 113.23520,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2283, -1061.47632, -1209.53564, 115.37890,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1893, -1085.53381, -1188.59778, 112.94230,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1575, -1081.05139, -1189.49768, 110.92470,   0.00000, -7.00000, -90.00000 );
	CreateDynamicObject(957, -1063.24121, -1202.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(957, -1063.24121, -1207.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(957, -1063.24121, -1212.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(957, -1066.24121, -1212.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(957, -1066.24121, -1207.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(957, -1066.24121, -1202.66736, 116.55600,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2074, -1063.37683, -1209.74219, 119.77247,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2074, -1066.15967, -1207.23669, 119.77247,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2074, -1066.12231, -1210.54285, 119.77247,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2074, -1063.38635, -1203.81470, 119.77247,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2074, -1066.12244, -1203.81470, 119.77250,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(11734, -1067.48279, -1207.67407, 116.74910,   0.00000, 0.00000, 100.00000 );
	CreateDynamicObject(2069, -1064.63586, -1212.80078, 113.24270,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19820, -1061.64539, -1208.74036, 114.27310,   0.00000, 0.00000, 90.00000 );
    CreateDynamicObject(957, -1064.66345, -1199.43579, 116.55600,   0.00000, 0.00000, 0.00000 );
    CreateDynamicObject(3374, -1070.31604, -1200.56323, 113.73320,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(14875, -1070.02478, -1199.70239, 115.94660,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(14874, -1074.08350, -1191.61829, 115.45350,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(14875, -1075.81580, -1194.39563, 118.02580,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(14875, -1075.81494, -1196.19556, 118.02580,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1502, -1064.89465, -1212.32129, 116.71950,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2526, -1067.58130, -1210.10144, 116.73750,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2524, -1067.61548, -1212.37463, 116.73570,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2527, -1065.62634, -1209.84448, 116.72760,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2528, -1067.03760, -1213.68799, 116.73650,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(11707, -1065.09326, -1210.10583, 117.87240,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2272, -1065.51978, -1210.12549, 118.51960,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1502, -1064.05469, -1206.19006, 116.71950,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1502, -1065.45410, -1206.13196, 116.71950,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(2818, -1066.52258, -1210.55078, 116.72760,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1742, -1065.59521, -1213.12390, 113.23230,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(2306, -1062.05054, -1202.29761, 116.73370,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2299, -1064.23816, -1204.24048, 116.72860,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2323, -1062.94519, -1204.57434, 116.72530,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(18870, -1062.40723, -1201.22131, 117.71870,   0.00000, 0.00000, -20.00000 );
	CreateDynamicObject(2854, -1061.84937, -1204.60889, 117.73240,   0.00000, 0.00000, -80.00000 );
	CreateDynamicObject(2843, -1063.43945, -1203.23425, 116.73180,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(2256, -1064.65100, -1204.19727, 119.18270,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2566, -1068.63245, -1203.24109, 117.31380,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2020, -1067.13013, -1205.07849, 116.73130,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(2268, -1065.76099, -1201.23096, 118.96520,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2386, -1067.86780, -1205.04749, 118.12170,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2251, -1067.88074, -1206.53003, 117.57850,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2270, -1064.34558, -1210.03430, 119.09390,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(921, -1076.52454, -1190.79260, 116.20910,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(11706, -1067.72571, -1201.15198, 113.23510,   0.00000, 0.00000, 45.00000 );
	CreateDynamicObject(11735, -1065.30054, -1200.34583, 113.23740,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(11735, -1065.46533, -1200.34924, 113.23740,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(11743, -1061.68799, -1204.42297, 114.23340,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(11721, -1064.66235, -1204.51343, 117.27710,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(11721, -1064.86536, -1204.57678, 117.27710,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19573, -1061.85815, -1208.82520, 113.25050,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2149, -1061.70605, -1203.94226, 114.38520,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(2228, -1074.44312, -1190.79456, 113.77800,   10.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19827, -1077.79260, -1190.67078, 114.21350,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19827, -1065.51929, -1200.55908, 114.66680,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19813, -1063.17175, -1200.55432, 113.45670,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19827, -1061.43994, -1206.61487, 114.73150,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19827, -1061.43994, -1206.43884, 114.73150,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19813, -1061.94434, -1212.99597, 113.51120,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19813, -1064.81946, -1213.00195, 113.45180,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19813, -1061.44592, -1204.02710, 114.71570,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19622, -1068.02820, -1200.07410, 113.94120,   -10.00000, 0.00000, 90.00000 );
	CreateDynamicObject(19921, -1075.16785, -1191.18677, 114.20940,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19827, -1065.01379, -1210.57373, 118.23560,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(19813, -1062.67786, -1200.73730, 116.90833,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19827, -1062.38110, -1206.07739, 118.15540,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19827, -1067.11609, -1206.07739, 118.15540,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(19813, -1066.09241, -1200.73718, 116.88500,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(19827, -1063.51611, -1213.00183, 118.23260,   0.00000, 0.00000, 180.00000 );
	CreateDynamicObject(2811, -1061.80298, -1206.60461, 116.70830,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(948, -1064.42285, -1212.57043, 116.72760,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(2274, -1064.73206, -1206.73865, 118.51960,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(948, -1067.87451, -1207.58057, 113.22910,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1498, -1061.37695, -1206.22119, 113.22710,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1498, -1068.18994, -1204.62061, 113.22710,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1498, -1076.47644, -1200.62549, 113.22710,   0.00000, 0.00000, 0.00000 );
	CreateDynamicObject(1497, -1061.40247, -1193.97327, 113.22710,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1497, -1061.37451, -1196.98279, 113.22710,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1497, -1068.16504, -1213.05383, 113.22710,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1497, -1068.19263, -1210.04395, 113.22710,   0.00000, 0.00000, -90.00000 );
	CreateDynamicObject(1497, -1079.92847, -1196.98279, 113.22710,   0.00000, 0.00000, 90.00000 );
	CreateDynamicObject(1497, -1079.95642, -1193.97327, 113.22710,   0.00000, 0.00000, -90.00000 );



	// Gunshop
	tmpobjid = CreateStreamedObjectEx(19377, -721.126953, 1449.876953, -91.590583, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14387, "dr_gsnew", "la_flair1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, -731.625549, 1449.878784, -91.590583, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14387, "dr_gsnew", "la_flair1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -716.204589, 1449.508911, -91.507522, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -720.787109, 1444.993896, -91.507499, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -720.877014, 1463.727294, -91.507499, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -716.204650, 1459.130737, -91.507522, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -730.418579, 1444.995361, -91.507499, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -725.728027, 1458.965087, -91.507522, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -730.457824, 1454.234619, -91.507499, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19379, -731.192749, 1449.509643, -91.507522, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 12850, "cunte_block1", "ws_redbrickold", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -731.188659, 1449.822509, -95.071563, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -736.347961, 1449.327758, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -730.454589, 1454.232177, -95.071601, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -730.883056, 1458.956665, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -736.347900, 1449.325683, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -725.722778, 1458.961791, -95.071563, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -721.016906, 1463.724731, -95.071601, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -716.205505, 1458.922973, -95.071563, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -716.206665, 1449.297485, -95.071563, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -721.059753, 1444.997802, -95.071601, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19376, -730.692321, 1444.998291, -95.071601, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.414611, 1468.450073, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.047302, 1458.895751, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -721.546447, 1440.274902, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.048889, 1449.269409, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -732.045471, 1440.272827, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -730.883117, 1458.956665, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -732.045471, 1440.272827, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -721.546386, 1440.274902, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.048889, 1449.269409, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.047302, 1458.895751, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.414611, 1468.450073, -90.458702, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.414550, 1468.450073, -90.286758, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.047302, 1458.895751, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.048889, 1449.269409, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -721.546386, 1440.274902, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.825683, 1457.600097, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -730.883117, 1458.956665, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -736.347900, 1449.325683, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19929, -720.047668, 1462.102783, -92.014389, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19929, -718.293090, 1463.182495, -91.200187, 0.000000, 0.000000, 153.003890, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19929, -720.047424, 1462.104736, -91.198196, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19929, -718.291625, 1463.181152, -92.014396, 0.000000, 0.000000, 153.003906, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1569, -731.095703, 1448.050292, -91.505500, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10763, "airport1_sfse", "ws_airportdoors1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(1569, -731.102661, 1451.050292, -91.505500, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10763, "airport1_sfse", "ws_airportdoors1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(631, -730.542602, 1445.598632, -90.612297, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 17958, "burnsalpha", "plantb256", 0xFF99FF33);
	tmpobjid = CreateStreamedObjectEx(631, -730.598022, 1453.617797, -90.612297, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 17958, "burnsalpha", "plantb256", 0xFF99FF33);
	tmpobjid = CreateStreamedObjectEx(2387, -724.982299, 1450.978637, -91.505073, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3076, "ad_rmx", "ammo_tube", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.129211, 1454.610595, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.739990, 1453.764770, -91.360702, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.345703, 1454.612548, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.127258, 1456.202148, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.129760, 1457.806030, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.345825, 1456.215576, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.345947, 1457.807861, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.699768, 1458.537353, -91.360702, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.398986, 1447.850708, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.399108, 1449.453735, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.180541, 1449.440307, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.183044, 1451.044189, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.399230, 1451.046020, -91.354103, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.753051, 1451.775512, -91.360702, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -720.793273, 1447.002929, -91.360702, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -721.182495, 1447.848754, -91.354141, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -721.428283, 1448.671386, -92.731498, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -721.426757, 1450.094604, -92.731498, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -721.375366, 1455.444824, -92.731498, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -720.096862, 1455.430053, -92.731498, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -720.151184, 1450.093994, -92.731498, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -720.095214, 1456.871093, -92.731498, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19360, -720.150390, 1448.553955, -92.731498, 0.000000, -10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19844, -725.137573, 1447.530029, -89.844001, -0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10370, "alleys_sfs", "ws_asphalt", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19844, -725.137573, 1447.530029, -90.825996, -0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10370, "alleys_sfs", "ws_asphalt", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19452, -720.750610, 1451.235595, -91.585899, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14383, "burg_1", "carpet4kb", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19452, -720.751342, 1454.259643, -91.587898, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14383, "burg_1", "carpet4kb", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, -718.916320, 1454.259521, -93.247596, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, -718.917053, 1451.238525, -93.237594, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, -722.587768, 1451.233642, -93.247596, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19450, -722.585510, 1454.258056, -93.237586, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19358, -720.432006, 1459.006103, -93.243598, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19358, -721.069946, 1459.006835, -93.245597, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19358, -721.071899, 1446.504882, -93.245597, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19358, -720.433593, 1446.505615, -93.243598, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2387, -723.458801, 1460.792358, -91.505073, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3076, "ad_rmx", "ammo_tube", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, -721.126892, 1459.508056, -86.286491, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19087, -725.132873, 1447.527587, -89.803100, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18049, "ammu_twofloor", "gun_ceiling2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(631, -716.891540, 1463.002075, -90.623703, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF99FF33);
	tmpobjid = CreateStreamedObjectEx(19360, -721.377380, 1456.885864, -92.731498, 0.000000, 10.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -716.208923, 1456.934936, -88.490310, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -716.214904, 1449.007080, -88.490310, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2036, -716.343688, 1456.192504, -88.368362, 90.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2036, -716.343688, 1456.192504, -88.774398, 90.000000, 0.000000, 270.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -723.349792, 1445.004760, -88.490303, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1259, "billbrd", "ws_oldpainted2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2035, -722.421569, 1445.097900, -88.635200, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19443, -723.349304, 1444.297729, -89.344802, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19443, -723.349304, 1444.297729, -87.670700, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -725.176940, 1443.353271, -88.383102, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -725.176757, 1443.351318, -88.630096, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -721.552062, 1443.352661, -88.632102, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -721.552062, 1443.354614, -88.383102, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -715.503112, 1449.008300, -89.291000, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -715.503112, 1449.008300, -87.754997, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -715.497436, 1456.936035, -87.754997, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -715.498657, 1456.935180, -89.291000, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.549072, 1455.101806, -88.469001, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.549133, 1455.101806, -88.581947, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.548278, 1458.772216, -88.582000, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.550292, 1458.772216, -88.469001, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.556579, 1450.833496, -88.469001, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.556640, 1450.833496, -88.581947, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.557922, 1447.257080, -88.468002, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -714.555908, 1447.256958, -88.581947, 90.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(631, -716.718139, 1445.573242, -90.623703, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 0xFF99FF33);
	tmpobjid = CreateStreamedObjectEx(19377, -721.126892, 1459.508056, -91.590583, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14387, "dr_gsnew", "la_flair1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, -731.625488, 1449.878784, -86.286499, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19377, -721.127014, 1449.876953, -86.286499, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -732.045471, 1440.273193, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.826904, 1457.431396, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.820373, 1461.097534, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.827514, 1460.930786, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -726.396362, 1452.275390, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -726.306457, 1446.991210, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -726.305847, 1447.161743, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -726.401733, 1452.101684, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -716.773559, 1452.101684, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -716.768554, 1452.279418, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -716.699279, 1447.161010, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -716.681396, 1446.989257, -81.285003, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -730.883117, 1458.956665, -89.737701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "la_flair2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -720.414611, 1468.450073, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.047302, 1458.895751, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -711.048889, 1449.269409, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -721.546386, 1440.274902, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -732.045471, 1440.283203, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19381, -736.347900, 1449.325683, -86.445701, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2267, -725.602111, 1456.341796, -88.703903, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14489, "carlspics", "AH_landscap1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2267, -725.599426, 1461.510620, -88.097877, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 14489, "carlspics", "AH_picture2", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19967, -723.106689, 1463.608886, -91.505783, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targetb", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19974, -724.829345, 1463.601318, -91.505073, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targetc", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19974, -724.038085, 1463.646484, -92.886001, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targeta", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19948, -725.605163, 1462.005249, -91.505302, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targetb", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19948, -722.149902, 1463.635375, -92.214347, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targetc", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(11699, -725.571105, 1460.811767, -92.210418, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 2, 18064, "ab_sfammuunits", "gun_targeta", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(2267, -718.238952, 1463.609619, -88.097900, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 19165, "gtamap", "gtasavectormap1", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -729.782104, 1449.557373, -92.295600, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -731.403320, 1447.423706, -92.293601, 90.000000, 0.000000, 105.480598, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -731.402404, 1451.687255, -92.293601, 90.000000, 0.000000, -105.480598, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19430, -730.603759, 1449.558715, -91.583198, 0.000000, 90.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14383, "burg_1", "carpet4kb", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -731.845764, 1447.987548, -90.750900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -731.845336, 1451.110229, -90.750900, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -732.794616, 1450.396728, -88.952598, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -732.795532, 1448.794189, -88.952598, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19439, -732.795166, 1448.702880, -88.952598, 0.000000, 90.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -725.631225, 1463.625854, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -716.290954, 1463.625854, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -716.310974, 1445.094238, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -731.091979, 1445.094238, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -731.091979, 1454.136352, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19089, -725.641601, 1454.146362, -86.324661, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "gym_floor6", 0x00000000);
	tmpobjid = CreateStreamedObjectEx(19939, -731.113464, 1451.850708, -90.959785, 0.000000, 90.799995, 0.000000, 120.00, 120.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff} by  Kova", 130, "Engravers MT", 62, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateStreamedObjectEx(349, -720.246520, 1455.260620, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.946289, 1455.264282, -91.306701, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.946411, 1457.190307, -91.306701, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.947692, 1458.110839, -91.304702, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.529479, 1456.224487, -91.306701, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.530883, 1457.065185, -91.308700, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2387, -726.248718, 1450.975219, -91.505073, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.999572, 1448.502441, -91.306701, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.999694, 1450.428466, -91.306701, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -721.000976, 1451.348999, -91.304702, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.583129, 1447.526367, -91.306701, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.582763, 1449.462646, -91.306701, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.584167, 1450.303344, -91.308700, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.314880, 1449.104003, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.245605, 1451.044677, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.270080, 1451.315673, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.267822, 1451.615356, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.244262, 1450.788085, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.249389, 1449.378295, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.264892, 1449.108520, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.262451, 1448.860351, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.256713, 1448.560424, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.272216, 1448.290649, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.270874, 1448.034057, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.265136, 1447.734130, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.280639, 1447.464355, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.246704, 1450.504516, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.240966, 1450.204589, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.256469, 1449.934814, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.255126, 1449.678222, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.323974, 1450.988281, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.330200, 1451.148193, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.322387, 1451.308227, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.316894, 1449.340820, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.323120, 1449.500732, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.321411, 1450.813476, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.325561, 1450.361816, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.314636, 1450.581665, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.317565, 1448.909790, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.325622, 1448.283325, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.333374, 1448.123291, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.327087, 1447.963378, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.324523, 1447.788574, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.326293, 1447.628173, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.320129, 1447.468261, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.328735, 1448.489257, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.317810, 1448.709106, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.318054, 1447.231445, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.322387, 1450.155883, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.330200, 1449.995849, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.323974, 1449.835937, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.321411, 1449.661132, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.315917, 1451.506103, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.220581, 1456.614379, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.270690, 1457.937133, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.271667, 1457.135986, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.274169, 1456.029052, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.263854, 1456.747680, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.206909, 1454.235473, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.218750, 1454.068115, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.268432, 1456.947631, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.268310, 1455.009521, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.230529, 1457.551513, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.218688, 1457.718872, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.219604, 1456.444458, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.265747, 1455.643188, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.213684, 1455.424926, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.225585, 1455.257568, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.231445, 1456.277099, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.270324, 1455.843139, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.266723, 1454.842041, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.263488, 1454.653686, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -721.258911, 1454.453735, -90.693603, -5.000000, 260.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -721.228576, 1457.338012, -90.706298, -7.000000, 270.000000, 181.426193, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.263488, 1458.132568, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -721.261535, 1458.292724, -90.691802, -7.000000, 270.000000, 181.814605, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.197326, 1455.500000, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.240783, 1457.019042, -90.694297, -6.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.193115, 1457.237915, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.186157, 1457.417846, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.187500, 1457.575927, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.188842, 1457.734008, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.189697, 1455.104003, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.188354, 1454.945922, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.187011, 1454.787841, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.193969, 1454.607910, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.241699, 1454.389038, -90.706298, -8.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.210083, 1454.222045, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -720.259277, 1453.982666, -90.691802, -8.000000, 270.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.198303, 1456.859863, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.207153, 1457.912841, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.196838, 1456.716308, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.176940, 1456.381958, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.175598, 1456.223876, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.174255, 1456.065795, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -720.181213, 1455.885864, -90.639602, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -720.195251, 1456.560791, -90.693603, -5.000000, 260.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.228881, 1455.666992, -90.694297, -6.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.219177, 1458.267089, -90.694297, -6.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -720.221740, 1458.059082, -90.694297, -6.000000, 270.000000, 1.426200, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.498168, 1447.622192, -90.459396, -5.000000, 280.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -725.601074, 1447.528564, -91.293701, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.447509, 1447.329467, -90.459396, -5.000000, 280.000000, 49.104198, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.498168, 1447.413696, -90.459396, -5.000000, 280.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.213745, 1447.171875, -90.459396, -5.000000, 280.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.293945, 1447.172241, -90.459396, -5.000000, 280.000000, 49.104198, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.000061, 1447.162597, -90.459396, -5.000000, 280.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.940246, 1447.224365, -90.459396, -5.000000, 280.000000, 139.958007, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.780578, 1447.449829, -90.459396, -5.000000, 280.000000, 183.167755, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.816162, 1447.356323, -90.459396, -5.000000, 280.000000, 139.958007, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.843750, 1447.755249, -90.459396, -5.000000, 280.000000, 225.412597, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.780151, 1447.670532, -90.459396, -5.000000, 280.000000, 183.167755, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -724.970764, 1447.884521, -90.459396, -5.000000, 280.000000, 220.001586, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.078063, 1447.894287, -90.459396, -5.000000, 280.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.329895, 1447.852661, -90.459396, -5.000000, 280.000000, 324.016662, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.258056, 1447.893188, -90.459396, -5.000000, 280.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -725.438354, 1447.718750, -90.459396, -5.000000, 280.000000, 324.016662, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -725.464416, 1447.861694, -91.291702, 90.000000, 0.000000, 45.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -725.467956, 1447.199584, -91.293701, 90.000000, 0.000000, 135.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -725.134460, 1447.059570, -91.293701, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -724.805297, 1447.197265, -91.293701, 90.000000, 0.000000, 225.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -724.667724, 1447.531616, -91.293701, 90.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -724.806518, 1447.859985, -91.293701, 90.000000, 0.000000, 315.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19939, -725.133605, 1447.996093, -91.293701, 90.000000, 0.000000, 360.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2387, -724.981872, 1452.211791, -91.505073, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2413, -716.576049, 1447.518188, -91.504203, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2413, -716.576049, 1449.279174, -91.504203, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2413, -716.563293, 1451.020751, -91.504203, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2368, -716.669677, 1459.149658, -91.505996, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2368, -716.668029, 1456.230590, -91.505996, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2368, -725.238342, 1455.067138, -91.505996, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2413, -725.241882, 1458.143554, -91.504203, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2368, -726.506530, 1445.452880, -91.505996, 0.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -724.995971, 1455.642578, -90.784698, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.008056, 1456.178710, -90.784698, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.196350, 1457.760253, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.193786, 1458.028320, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.202392, 1458.271972, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.200866, 1458.504394, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.210571, 1458.746337, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.314453, 1458.996948, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.216491, 1458.976928, -90.841499, 0.006000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.123657, 1459.000854, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -724.932067, 1459.002807, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.330505, 1458.577392, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.130432, 1458.572631, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -724.926696, 1458.585571, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.341125, 1458.122924, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -725.139343, 1458.150268, -91.177497, 0.006000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.097595, 1455.481933, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.104614, 1455.615844, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.111572, 1455.749877, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.118530, 1455.883789, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.122741, 1456.040649, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(343, -725.104187, 1456.200927, -90.584503, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.770874, 1458.652709, -90.653800, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.789123, 1458.430053, -90.653800, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.802246, 1458.226806, -90.653800, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.855224, 1457.938110, -90.830802, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.787048, 1457.987182, -90.653800, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.868591, 1458.150756, -90.830802, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.861572, 1458.358886, -90.830802, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(346, -716.832824, 1458.572509, -90.830802, 90.000000, 0.000000, 180.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(348, -716.892456, 1457.390380, -90.638603, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(348, -717.009277, 1456.810546, -90.815597, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(348, -716.887756, 1456.806396, -90.638603, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(348, -717.030761, 1457.233764, -90.815597, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(351, -717.014892, 1455.117553, -90.790298, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(351, -717.031494, 1454.036499, -90.784301, 90.000000, 0.000000, 96.726501, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.743103, 1446.822509, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.731323, 1447.654174, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.744689, 1449.340209, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.743530, 1448.634521, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -716.620544, 1449.607910, -90.837097, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -716.633789, 1449.336547, -90.837097, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -716.620361, 1449.100463, -90.837097, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -716.618896, 1448.854248, -90.837097, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2040, -716.626281, 1448.441772, -90.837097, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.723815, 1446.680541, -90.913803, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.760803, 1447.493164, -90.913803, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.674743, 1451.023193, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.701293, 1450.893798, -90.913803, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.661621, 1450.115356, -90.913803, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2358, -716.677856, 1450.290283, -91.161399, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(347, -727.222290, 1445.712768, -90.645500, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(347, -727.546997, 1445.713989, -90.645500, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(347, -727.793579, 1445.704589, -90.645500, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -727.037048, 1445.598876, -90.831901, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -727.555236, 1445.565429, -90.831901, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -728.087463, 1445.609619, -90.831901, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -728.623535, 1445.544799, -90.831901, 90.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(350, -728.751892, 1445.703491, -90.633102, 90.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -716.283142, 1457.490112, -88.602256, 0.000000, 0.000000, 96.016471, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -716.283142, 1457.490112, -89.003257, 0.000000, 0.000000, 96.016471, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(358, -716.283142, 1457.490112, -88.200271, 0.000000, 0.000000, 96.016471, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.299499, 1450.027954, -88.160026, 0.000000, 0.000000, 95.107559, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.299560, 1450.027832, -88.972099, 0.000000, 0.000000, 95.107559, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(353, -716.295715, 1449.726928, -88.566062, 0.000000, 0.000000, 95.107559, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(351, -716.407348, 1449.541625, -88.244583, 0.000000, 10.000000, 279.561309, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(351, -716.407348, 1449.541625, -88.951599, 0.000000, 10.000000, 279.561309, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(351, -716.407348, 1449.541625, -88.648590, 0.000000, 10.000000, 279.561309, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -716.283081, 1448.357543, -88.095703, 0.000000, 0.000000, 95.414367, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -716.304626, 1448.057373, -88.908813, 0.000000, 0.000000, 95.414367, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(352, -716.357849, 1447.641967, -88.605796, 0.000000, 0.000000, 275.414398, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(372, -716.345886, 1447.927368, -88.121902, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(372, -716.344604, 1448.187622, -88.536102, 0.000000, 0.000000, 270.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -722.476440, 1445.098510, -89.049591, 0.000000, 0.000000, 3.504139, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -723.093994, 1445.153076, -89.125892, 0.000000, 5.000000, 184.450805, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(349, -723.093994, 1445.153076, -88.825897, 0.000000, 5.000000, 184.450805, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -722.570007, 1445.139404, -87.949859, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(356, -722.570007, 1445.139404, -88.250846, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -723.998229, 1445.129516, -88.074386, 0.000000, 4.000000, 186.235992, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(357, -723.498229, 1445.135620, -88.377403, 0.000000, 4.000000, 186.235992, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(355, -724.717346, 1445.075073, -88.949592, 0.000000, 0.000000, 5.269559, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1744, -720.529846, 1454.288208, -91.306701, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -723.166198, 1457.500610, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -723.243164, 1461.022827, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -719.904357, 1461.005249, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -719.792846, 1457.509033, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -719.295227, 1447.042480, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -728.515625, 1447.066650, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -724.341430, 1452.167114, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -724.254760, 1447.044311, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -719.588256, 1452.171752, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(1893, -728.741638, 1452.096313, -86.537818, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2266, -725.116882, 1458.194213, -89.498107, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2282, -720.073852, 1463.152832, -88.975433, 0.000000, 0.000000, 0.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2066, -725.229064, 1459.613647, -91.503799, 0.000000, 0.000000, 90.000000, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19430, -731.023071, 1449.751586, -91.585197, 0.000000, 90.000000, 75.513702, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(19430, -731.152832, 1449.367431, -91.585197, 0.000000, 90.000000, -75.513702, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2056, -720.367797, 1462.220947, -90.254524, -89.700012, 0.000000, 13.300001, 120.00, 120.00); 
	tmpobjid = CreateStreamedObjectEx(2056, -719.994689, 1462.113647, -90.255256, -89.700012, 0.000000, -4.399999, 120.00, 120.00);
	


	// Illegal Gunshop
	new object;
	object = CreateStreamedObjectEx(6959,507.7510,-2303.0110,511.8220,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5149, "lasground2_las2", "driveway4_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,508.0850,-2317.2791,513.5410,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19383,504.8750,-2317.2791,513.5410,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19859,505.6060,-2317.2891,513.0290,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 18200, "w_town2cs_t", "Bow_door_graffiti_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,501.6650,-2317.2791,513.5410,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(18066,505.6350,-2317.2461,513.6590,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,504.8810,-2317.2461,514.3140,90.0000,180.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,505.6350,-2317.2461,512.2390,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,504.0650,-2317.2461,513.6600,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,504.8010,-2317.2439,514.3160,90.0000,180.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,504.0650,-2317.2461,512.2390,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(19399,509.1950,-2318.9180,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(1897,509.0520,-2317.3169,512.8950,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.0520,-2317.3169,515.1250,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.8830,-2317.3169,515.2450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,505.6530,-2317.3169,515.2450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,503.4230,-2317.3169,515.2450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(19383,502.2450,-2318.9280,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(3361,508.1520,-2326.0259,509.7130,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 8438, "vgseroads", "ws_sub_pen_conc", 0x00000000);
	SetDynamicObjectMaterial(object, 4, 3925, "weemap", "Bow_Abattoir_Conc2", 0x00000000);
	object = CreateStreamedObjectEx(19353,502.2460,-2322.1311,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2322.1279,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(3361,506.0420,-2326.2759,513.7330,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 8438, "vgseroads", "ws_sub_pen_conc", 0x00000000);
	SetDynamicObjectMaterial(object, 4, 3925, "weemap", "Bow_Abattoir_Conc2", 0x00000000);
	object = CreateStreamedObjectEx(19353,503.4760,-2322.8120,513.5410,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,504.9960,-2324.3311,513.5410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2325.3369,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(3095,504.6130,-2318.2329,515.2810,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(19353,504.9960,-2327.5420,513.5410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,504.9960,-2327.5420,517.0410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,504.9960,-2324.3320,517.0410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(3095,511.5720,-2327.2329,515.2810,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(19353,507.1160,-2324.3320,517.0410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,507.1160,-2327.5449,517.0410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2328.5459,513.5410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(1498,502.2340,-2319.7061,511.7800,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(3095,504.6130,-2325.9170,518.4670,-45.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 13012, "sw_apartflat5", "concretenew256", 0x00000000);
	object = CreateStreamedObjectEx(3095,504.6130,-2330.6909,518.7810,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(19353,504.9960,-2330.7510,517.0410,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.6360,-2331.2510,517.0410,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(16501,504.7890,-2326.5491,513.7500,-33.5000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(16501,504.7890,-2326.2410,513.5500,-33.5000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(16501,506.9090,-2325.6780,509.7570,-33.5000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(16501,506.9090,-2326.4441,509.2460,-33.5000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "Bow_Abattoir_Conc2", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1763,506.0940,-2326.8669,514.3020,18.4000,34.3000,103.9000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 14860, "gf1", "CJ_MAT2DIRT", 0x00000000);
	object = CreateStreamedObjectEx(1347,506.1950,-2327.2200,515.2800,0.0000,37.7000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(913,506.7430,-2330.6909,516.6400,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 14754, "sfhsb3", "mp_apt1_brokedoor", 0x00000000);
	object = CreateStreamedObjectEx(2350,506.2620,-2327.0081,515.5870,-34.9000,22.7000,5.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(2807,506.6860,-2326.3191,514.5800,-30.4000,4.0000,-2.9000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10789, "xenon_sfse", "bluemetal02", 0x00000000);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(1265,505.4550,-2327.3269,514.9430,-17.2000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1265,506.6110,-2328.3479,515.7710,1.7000,29.1000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1265,505.6590,-2325.4790,514.3440,-4.1000,-51.5000,-87.9000, 200.0,200.0);
	object = CreateStreamedObjectEx(19940,506.6260,-2325.8860,514.6840,-7.7000,35.0000,118.2000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "telepole128", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(16500,504.5450,-2325.3269,515.1710,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0x00FFFFFF);
	object = CreateStreamedObjectEx(6959,508.3090,-2337.0979,507.7250,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 12923, "sw_block05", "dustyconcrete", 0xFFCCCCCC);
	object = CreateStreamedObjectEx(19353,509.1950,-2328.5459,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2328.5459,506.5410,180.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2328.5459,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,509.1950,-2325.3359,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,510.7250,-2330.0681,509.4310,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.9750,-2328.5459,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.9750,-2325.3359,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.9750,-2322.1331,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.9750,-2328.5459,506.5410,180.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(3095,511.5320,-2328.6909,514.1210,35.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 13012, "sw_apartflat5", "concretenew256", 0x00000000);
	object = CreateStreamedObjectEx(3095,511.5390,-2334.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(19353,507.5250,-2330.1951,513.5410,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 8678, "wddngchplgrnd01", "vgschapelwall01_128", 0x00000000);
	object = CreateStreamedObjectEx(19353,507.5250,-2330.2051,512.9200,180.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(1897,502.2830,-2318.5581,515.2450,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2320.7871,515.2450,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2323.0171,515.2450,0.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2322.6770,512.9040,0.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2322.6770,515.1340,0.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2317.4470,512.9040,0.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,502.2830,-2317.4470,515.1240,0.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1630,-2318.5559,515.2450,360.0000,90.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1630,-2320.7859,515.2450,360.0000,90.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1650,-2321.7571,515.2440,360.0000,90.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1650,-2322.9270,512.8730,360.0000,180.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1650,-2322.9270,515.1030,360.0000,180.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,505.0300,-2322.7771,512.8730,360.0000,180.0000,720.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,505.0300,-2322.7771,515.1030,360.0000,180.0000,720.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,503.8400,-2322.7771,515.2130,360.0000,270.0000,1080.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,501.6100,-2322.7771,515.2130,360.0000,270.0000,1080.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(19482,509.2010,-2317.7859,513.9950,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11390, "hubint2", "ws_fuckedwin2", 0x00000000);
	object = CreateStreamedObjectEx(19482,509.2610,-2317.7859,514.0050,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17944, "lngblok_lae2", "white64bumpy", 0xDDFFFFFF);
	object = CreateStreamedObjectEx(647,511.6760,-2318.7539,513.4700,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(647,511.6760,-2322.7849,513.9300,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(18066,502.2260,-2318.1670,513.6590,0.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.2260,-2318.1670,512.2390,0.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.2260,-2319.7371,512.2390,0.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.2260,-2319.7371,513.6590,0.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.2260,-2318.9961,514.3150,90.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.2280,-2318.9060,514.3140,90.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.0980,-2318.7461,512.9530,90.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.0990,-2319.1060,512.9560,90.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.2190,-2317.9980,513.6390,180.0000,270.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.2190,-2319.8501,513.6390,180.0000,270.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.2190,-2319.1650,514.3790,270.0000,270.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.2200,-2318.6541,514.3800,270.0000,270.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,509.2800,-2318.8840,513.6890,360.0000,270.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(1897,509.1670,-2324.1179,511.8430,360.0000,270.0000,1170.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(19353,509.1950,-2322.1221,510.0410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(1897,509.1670,-2326.3479,511.8430,360.0000,270.0000,1170.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1670,-2328.5801,511.8430,360.0000,270.0000,1170.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1670,-2330.8110,511.8430,360.0000,270.0000,1170.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,506.9670,-2324.5391,511.8430,540.0000,270.0000,1530.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,506.9670,-2326.7700,511.8430,540.0000,270.0000,1530.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,506.9670,-2329.0000,511.8430,540.0000,270.0000,1530.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,508.0170,-2330.1809,511.8650,900.0000,270.0000,1620.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(19353,506.9750,-2331.7539,509.4410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19383,512.2450,-2331.7571,509.4310,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,506.9750,-2334.9651,509.4410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19353,512.2460,-2334.9651,509.4410,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19445,507.3560,-2335.7561,509.4410,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17500, "stormdrain", "macbrij2_LAe", 0x00000000);
	object = CreateStreamedObjectEx(19383,512.4250,-2331.7571,509.4310,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,512.4250,-2334.9680,509.4310,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,512.4250,-2328.5481,509.4310,0.0000,0.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,514.1050,-2327.0271,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,514.1050,-2336.6189,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,517.3150,-2336.6189,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19383,518.9950,-2334.9490,509.4310,0.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,520.5150,-2333.2710,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,517.3140,-2327.0271,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,520.5250,-2327.0271,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,523.7340,-2327.0271,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,526.9440,-2327.0271,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,528.6340,-2328.7070,509.4310,0.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 13131, "cunte_blockammo", "dt_ammu_wall2", 0xFFFFEEEE);
	object = CreateStreamedObjectEx(19353,528.6340,-2331.9170,509.4310,0.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 13131, "cunte_blockammo", "dt_ammu_wall2", 0xFFFFEEEE);
	object = CreateStreamedObjectEx(19353,523.7250,-2333.2710,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,526.9350,-2333.2710,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19455,528.6250,-2330.7180,506.3610,180.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19455,528.6250,-2330.7180,512.7810,180.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(3095,520.5390,-2334.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(3095,520.5390,-2325.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(-1,520.5390,-2325.6411,1511.1591,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(3095,529.5390,-2334.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(3095,529.5390,-2325.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(3095,516.4980,-2325.6411,511.1610,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(1499,512.3210,-2330.9851,507.6790,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1930,-2330.0940,510.0650,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,509.1930,-2330.0940,507.8350,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2330.1741,507.8350,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2330.1741,510.0650,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,508.1730,-2330.0940,511.0850,180.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,510.4030,-2330.0940,511.0850,180.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,511.0430,-2330.0920,511.0850,180.0000,90.0000,360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.2130,-2331.3330,511.0850,180.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.2130,-2333.5649,511.0850,180.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.2130,-2335.7949,511.0850,180.0000,90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,510.9630,-2335.7251,511.0850,180.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,508.7330,-2335.7251,511.0850,180.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,506.5030,-2335.7251,511.0850,180.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2331.3611,511.0850,180.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2333.5911,511.0850,180.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2335.8201,511.0850,180.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2335.5901,509.9450,180.0000,180.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,507.0030,-2335.5901,507.7150,180.0000,180.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(18066,512.4250,-2332.5149,508.1250,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(1897,512.2230,-2335.6201,509.9450,180.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.2230,-2330.2300,509.9450,180.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.2230,-2330.2300,507.7150,180.0000,180.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(18066,512.2750,-2332.5161,509.5450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.2750,-2331.7649,510.2000,90.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.2750,-2332.5161,508.1250,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.2750,-2330.9451,508.1250,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.2750,-2330.9451,509.5450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.2770,-2331.6851,510.1990,90.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(2680,502.4050,-2318.4080,512.6940,20.0000,0.0000,95.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(18066,502.4260,-2318.5701,513.9540,0.0000,30.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.4240,-2319.3569,513.4990,0.0000,30.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.4240,-2319.1470,512.9760,0.0000,10.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(18066,502.4260,-2318.6570,513.0620,0.0000,10.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(17969,502.3500,-2315.5400,512.9270,0.0000,0.0000,180.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(17969,502.3300,-2321.0710,513.1970,0.0000,0.0000,179.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(17969,502.3700,-2322.8220,513.6470,0.0000,0.0000,-179.4000, 200.0,200.0);
	object = CreateStreamedObjectEx(18666,503.6360,-2322.7119,514.1470,2.7000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFF000000);
	object = CreateStreamedObjectEx(911,503.6820,-2322.2419,512.3510,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17925, "lae2fake_int", "ab_wood1", 0x00000000);
	object = CreateStreamedObjectEx(4227,506.9740,-2329.5950,509.0750,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(365,503.6070,-2322.5381,513.0930,0.0000,-5.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(365,503.9610,-2322.3721,513.0310,0.0000,85.0000,55.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(365,503.2690,-2322.0061,511.9510,0.0000,85.0000,5.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,505.2260,-2320.2429,515.7360,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,506.0850,-2329.0769,519.2470,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,509.5860,-2333.3870,511.6170,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1440,508.3890,-2318.2180,512.2990,0.0000,0.0000,-6.2000, 200.0,200.0);
	object = CreateStreamedObjectEx(2121,504.8170,-2322.2329,512.2880,-33.0000,0.0000,146.7000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10789, "xenon_sfse", "bluemetal02", 0x00000000);
	object = CreateStreamedObjectEx(19477,505.2180,-2317.4250,511.7960,0.0000,-90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10789, "xenon_sfse", "ruffroadlas", 0x00000000);
	object = CreateStreamedObjectEx(19477,509.0970,-2320.7351,511.5960,90.0000,-90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10789, "xenon_sfse", "ruffroadlas", 0x00000000);
	object = CreateStreamedObjectEx(2673,503.2450,-2321.2361,511.8680,0.0000,0.0000,27.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(1338,507.7230,-2335.0291,508.3770,0.0000,0.0000,-22.8000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(925,510.9750,-2334.8311,508.6880,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1886,511.7030,-2334.9060,511.2230,15.5000,0.0000,-153.2000, 200.0,200.0);
	object = CreateStreamedObjectEx(2922,512.1410,-2332.8850,508.9510,0.0000,0.0000,-270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9818, "ship_brijsfw", "ship_greenscreen1", 0x00000000);
	object = CreateStreamedObjectEx(927,512.1120,-2333.8560,509.8850,0.0000,0.0000,270.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19475,511.9830,-2334.8379,510.6500,0.0000,0.0000,-32.8000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10675, "transformer_sfs", "hangingwires2", 0x00000000);
	object = CreateStreamedObjectEx(920,510.5700,-2334.8989,510.2310,0.0000,0.0000,180.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19476,511.7250,-2334.8950,509.7600,0.0000,270.0000,-65.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10675, "transformer_sfs", "hangingwires2", 0x00000000);
	object = CreateStreamedObjectEx(19476,511.6450,-2334.6160,509.7600,0.0000,270.0000,109.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10675, "transformer_sfs", "hangingwires2", 0x00000000);
	object = CreateStreamedObjectEx(19563,512.3740,-2334.5691,509.8030,-90.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 16146, "des_ufoinn", "electricbox256", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.4250,-2332.5149,509.5450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.4250,-2330.9441,509.5450,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.4250,-2330.9441,508.1250,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.4250,-2331.6841,510.2010,90.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(18066,512.4260,-2331.7639,510.2000,90.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(1897,512.4520,-2336.4500,510.0450,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4520,-2336.4500,507.8050,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4520,-2327.1580,507.8050,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4520,-2327.1580,510.0350,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.5930,-2327.1819,510.0350,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.5930,-2327.1819,507.8050,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.5930,-2333.1321,507.8050,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.5930,-2333.1321,510.0350,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2333.2620,510.0450,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2333.2620,507.8150,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2336.4810,507.8150,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2336.4810,510.0450,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2334.4290,511.1150,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.9620,-2336.6599,511.1150,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,517.7210,-2336.5801,511.1150,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,515.4910,-2336.5801,511.1150,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,513.7010,-2336.5779,511.1160,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4510,-2335.2881,511.1160,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4510,-2333.0591,511.1160,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4510,-2330.8291,511.1160,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4510,-2328.5991,511.1160,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,512.4510,-2326.3611,511.1160,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,513.6900,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,515.9200,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,518.1490,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,520.3790,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.6090,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,524.8390,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,527.0690,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,529.3000,-2327.0620,511.1160,0.0000,90.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.6000,-2328.3430,511.1160,0.0000,90.0000,-270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.6000,-2330.5730,511.1160,0.0000,90.0000,-270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.6000,-2332.8020,511.1160,0.0000,90.0000,-270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.9400,-2333.2419,511.1160,360.0000,270.0000,-360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.1700,-2333.2419,511.1160,360.0000,270.0000,-360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,524.4000,-2333.2419,511.1160,360.0000,270.0000,-360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.6300,-2333.2419,511.1160,360.0000,270.0000,-360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,528.8590,-2333.2419,511.1160,360.0000,270.0000,-360.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(941,519.6940,-2332.2390,508.1540,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 10350, "oc_flats_gnd_sfs", "ws_woodfence1", 0x00000000);
	object = CreateStreamedObjectEx(937,519.6240,-2328.0481,508.1540,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(3013,519.3720,-2329.1960,507.8380,0.0000,0.0000,-17.4000, 200.0,200.0);
	object = CreateStreamedObjectEx(3014,519.7970,-2329.2480,507.8180,0.0000,0.0000,3.9000, 200.0,200.0);
	object = CreateStreamedObjectEx(3014,519.7960,-2329.2681,508.2980,0.0000,0.0000,-3.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19940,519.9010,-2329.9351,508.6420,0.0000,0.0000,2.9000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "telepole128", 0x00000000);
	object = CreateStreamedObjectEx(19940,519.3420,-2329.9580,508.6420,360.0000,0.0000,178.7000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3925, "weemap", "telepole128", 0x00000000);
	object = CreateStreamedObjectEx(1587,523.8400,-2328.8550,506.5090,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1586,523.7400,-2328.8550,507.8590,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 13131, "cunte_blockammo", "dt_ammu_wall2", 0xFFCCDDFF);
	object = CreateStreamedObjectEx(1587,526.3800,-2331.4160,506.5090,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1586,526.3700,-2331.4160,507.8680,0.0000,0.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 13131, "cunte_blockammo", "dt_ammu_wall2", 0xFFCCDDFF);
	object = CreateStreamedObjectEx(2448,514.4520,-2333.8459,507.1730,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 2, 914, "industrialext", "CJ_GEN_GLASS2", 0x00000000);
	SetDynamicObjectMaterial(object, 3, 3925, "weemap", "telepole128", 0x00000000);
	SetDynamicObjectMaterial(object, 4, 8494, "vgslowbuild1", "bluemetal", 0x00000000);
	object = CreateStreamedObjectEx(2448,516.8510,-2333.8459,507.1730,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 2, 914, "industrialext", "CJ_GEN_GLASS2", 0x00000000);
	SetDynamicObjectMaterial(object, 3, 3925, "weemap", "telepole128", 0x00000000);
	SetDynamicObjectMaterial(object, 4, 8494, "vgslowbuild1", "bluemetal", 0x00000000);
	object = CreateStreamedObjectEx(2400,517.1260,-2336.9070,508.4610,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 1, "none", "none", 0x00FFFFFF);
	object = CreateStreamedObjectEx(2509,516.6780,-2336.5081,509.7670,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(2509,514.7890,-2336.5081,509.7670,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1271,513.0150,-2336.0129,508.0290,0.0000,0.0000,49.7000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 498, "boxville", "boxville92crate128", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(2969,512.8300,-2336.1331,508.4580,0.0000,0.0000,104.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(2807,513.6690,-2335.1721,508.2010,0.0000,0.0000,-114.3000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10789, "xenon_sfse", "bluemetal02", 0x00000000);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(1744,512.3530,-2335.7290,509.2430,0.0000,0.0000,-270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(2358,519.6330,-2327.3740,508.7390,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2359,519.7700,-2327.8169,508.8290,0.0000,0.0000,-11.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(2043,519.4710,-2328.7009,508.7220,0.0000,0.0000,69.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,519.5990,-2327.7019,508.7490,90.0000,0.0000,-11.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,519.6260,-2328.4719,508.6320,0.0000,0.0000,-3.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(2038,519.4180,-2330.7280,508.7000,-90.0000,0.0000,-80.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19995,519.5630,-2331.2180,508.6390,0.0000,-270.0000,-23.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19995,519.5730,-2331.3979,508.6390,0.0000,-270.0000,18.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(3577,514.1690,-2327.2461,508.4150,0.0000,0.0000,-179.9000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 2, 498, "boxville", "boxville92crate128", 0x00000000);
	object = CreateStreamedObjectEx(1271,513.8250,-2327.8601,508.1390,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 456, "yankee", "yankee92crate", 0xFFAAAAAA);
	object = CreateStreamedObjectEx(1271,513.8270,-2327.8579,508.7080,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 456, "yankee", "yankee92crate", 0xFFAAAAAA);
	object = CreateStreamedObjectEx(2055,518.2450,-2327.1340,509.5570,0.0000,1.2000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2102,512.6830,-2334.7361,509.5780,0.0000,0.0000,99.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2162,512.4770,-2335.4729,510.9080,180.0000,0.0000,-100.2000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 1, "none", "none", 0x00FFFFFF);
	SetDynamicObjectMaterial(object, 2, -1, "none", "none", 0x00FFFFFF);
	object = CreateStreamedObjectEx(19383,519.1650,-2334.9490,509.4310,0.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,520.5250,-2333.3311,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,526.9350,-2333.3311,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,519.1650,-2338.1541,509.4310,0.0000,0.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,524.0540,-2339.7451,509.4310,0.0000,0.0000,630.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,520.8440,-2339.8020,509.4310,0.0000,0.0000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5174, "warehus_las2", "newall1-1128", 0x00000000);
	object = CreateStreamedObjectEx(19353,525.7240,-2338.2129,509.4310,0.0000,0.0000,720.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,526.8950,-2335.0139,509.4310,0.0000,0.0000,720.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(19353,527.2850,-2336.7041,509.4310,0.0000,0.0000,810.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0x00000000);
	object = CreateStreamedObjectEx(3095,520.5390,-2343.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(3095,529.5390,-2343.6411,511.1590,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 9583, "bigshap_sfw", "man_ceiling", 0x00000000);
	object = CreateStreamedObjectEx(1897,519.3330,-2333.3669,510.0550,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.3330,-2333.3669,507.8250,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.0780,-2333.3669,507.8250,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.0780,-2333.3669,510.0540,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.4060,-2333.3669,510.0540,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.4060,-2333.3669,507.8240,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.7560,-2333.3669,507.8240,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.7560,-2333.3669,510.0540,0.0000,0.0000,-180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.7360,-2336.6731,510.0540,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.7360,-2336.6731,507.8250,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.5660,-2339.7170,507.8250,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.5660,-2339.7170,510.0540,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.5010,-2339.7170,510.0540,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.5010,-2339.7170,507.8240,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.3010,-2339.7170,507.8240,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.3010,-2339.7170,510.0540,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.3010,-2339.8069,510.0540,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.3010,-2339.8069,507.8240,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.1910,-2334.6050,511.1140,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.1910,-2336.8350,511.1140,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,519.1910,-2339.0649,511.1140,0.0000,90.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,520.4800,-2339.7261,511.1140,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.7100,-2339.7261,511.1140,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,524.9400,-2339.7261,511.1140,0.0000,90.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.7000,-2337.7241,511.1140,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,525.7000,-2339.9541,511.1140,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.6860,-2336.6731,511.1140,180.0000,90.0000,540.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.8600,-2334.6101,511.1140,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,526.8600,-2336.8391,511.1140,0.0000,90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,520.4790,-2333.3650,511.1140,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,522.7090,-2333.3650,511.1140,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,524.9390,-2333.3650,511.1140,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1897,527.1690,-2333.3650,511.1140,0.0000,90.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(11714,519.3930,-2337.8091,509.7230,0.0000,5.2000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(11714,519.6190,-2337.8091,507.2330,0.0000,5.2000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 17517, "templae2land", "chipboard_256128", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1494,519.0790,-2334.2051,507.6720,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 3906, "libertyhi5", "chipboardgrating64HV", 0x00000000);
	object = CreateStreamedObjectEx(941,526.2270,-2335.6101,508.1620,0.0000,0.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 5154, "dkcargoshp_las2", "jettyfloor02", 0xFFFFFFFF);
	SetDynamicObjectMaterial(object, 1, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0x00000000);
	object = CreateStreamedObjectEx(2370,522.9270,-2338.7471,507.3780,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1712,525.1150,-2337.6760,507.6820,0.0000,0.0000,270.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2121,521.8600,-2339.1370,508.1950,0.0000,0.0000,143.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(2121,521.7420,-2337.9800,508.1950,0.0000,0.0000,80.4000, 200.0,200.0);
	object = CreateStreamedObjectEx(2737,526.7670,-2335.5620,509.5750,0.0000,0.0000,-90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	SetDynamicObjectMaterial(object, 1, 11391, "hubprops2_sfse", "toolwall1", 0x00000000);
	object = CreateStreamedObjectEx(2051,517.3550,-2327.1599,509.5650,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2050,516.6450,-2327.1599,509.5650,0.0000,-1.5000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2063,523.6990,-2333.6260,508.5740,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2063,523.7000,-2333.6250,509.9140,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19940,526.7670,-2335.3420,509.1850,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(19940,526.7670,-2335.3420,509.1550,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(19940,526.7670,-2335.3420,509.1240,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1637, "od_beachstuff", "wood02", 0x00000000);
	object = CreateStreamedObjectEx(3014,526.3530,-2333.8679,507.9070,0.0000,0.0000,45.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(3014,526.3530,-2333.8679,508.3870,0.0000,0.0000,67.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(3014,525.6580,-2333.6880,507.8870,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,523.9170,-2330.1721,511.6190,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,515.3160,-2330.1721,511.6190,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,515.3160,-2334.8250,511.6190,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,521.9770,-2337.7759,511.6190,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1893,526.0770,-2335.5459,511.6190,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(349,516.5820,-2336.4961,509.3320,0.0000,10.5500,6.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(355,514.7280,-2336.4080,510.1380,0.0000,8.0500,186.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(357,515.9110,-2336.4050,510.1660,0.0000,15.0500,186.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(358,515.9320,-2336.4241,509.3120,0.0000,10.1550,186.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(346,513.6470,-2333.8250,508.5020,990.0000,180.0000,-6.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(346,513.6470,-2333.5750,508.5020,990.0000,180.0000,-6.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(347,514.1470,-2333.6250,508.5020,990.0000,180.0000,-6.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(348,514.7040,-2333.8350,508.4870,990.0000,180.0000,-1.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(348,514.7040,-2333.5850,508.4870,990.0000,180.0000,-1.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(335,513.0810,-2333.6479,508.4230,-270.0000,0.0000,-7.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(335,513.1150,-2333.8301,508.4230,-270.0000,0.0000,178.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(335,513.0050,-2333.8269,508.4230,-270.0000,0.0000,188.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(352,515.3390,-2333.8091,508.4540,90.0000,0.0000,3.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(352,515.7190,-2333.7900,508.4540,90.0000,0.0000,3.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(372,516.4380,-2333.7539,508.4940,630.0000,180.0000,3.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(350,516.9330,-2334.0430,508.4550,90.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(350,516.7610,-2334.0349,508.4550,90.0000,0.0000,105.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19995,513.6270,-2333.7410,508.4800,0.0000,90.0000,-90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19773,519.6660,-2331.7019,508.6400,0.0000,90.0000,120.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19773,512.7600,-2333.7290,508.1490,0.0000,90.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19773,512.9600,-2333.7290,508.1490,0.0000,90.0000,270.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19773,513.1400,-2333.7290,508.1490,0.0000,90.0000,295.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,515.1690,-2333.7661,508.1500,0.0000,0.0000,90.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,515.4190,-2333.7661,508.1500,0.0000,0.0000,96.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,515.6390,-2333.7710,508.1500,0.0000,0.0000,88.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,515.8590,-2333.7759,508.1500,0.0000,0.0000,83.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,516.9970,-2333.8569,508.1500,0.0000,0.0000,177.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,517.0060,-2333.6270,508.1500,0.0000,0.0000,-176.2000, 200.0,200.0);
	object = CreateStreamedObjectEx(1210,512.9630,-2333.9519,508.1200,90.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19478,512.9050,-2333.8191,508.7730,0.0000,-90.0000,270.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1829, "kbmiscfrn2", "man_mny1", 0x00000000);
	object = CreateStreamedObjectEx(2042,513.0350,-2333.7200,508.8630,0.0000,0.0000,-45.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19478,512.8650,-2333.6489,508.7930,0.0000,-90.0000,90.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 1829, "kbmiscfrn2", "man_mny1", 0x00000000);
	object = CreateStreamedObjectEx(355,518.9970,-2329.4241,507.9880,-13.8000,273.0000,-89.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(346,519.2370,-2330.4619,508.6360,93.0000,0.0000,30.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19825,513.2240,-2336.5010,510.4280,0.0000,0.0000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(2034,525.9320,-2335.1130,508.6550,0.0000,0.0000,-55.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10824, "subpen1_sfse", "sl_metaledge", 0x00000000);
	object = CreateStreamedObjectEx(2033,526.1620,-2335.4399,508.6670,0.0000,0.0000,-85.1000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 10824, "subpen1_sfse", "sl_metaledge", 0x00000000);
	object = CreateStreamedObjectEx(3017,526.2160,-2334.4451,508.6430,0.0000,0.0000,540.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19942,526.7290,-2334.5339,509.3030,0.0000,0.0000,-69.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(19942,523.5830,-2338.6709,508.2430,270.0000,0.0000,123.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(18644,525.7920,-2335.5439,508.6530,90.0000,0.0000,-57.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(18644,526.6390,-2334.8770,509.2130,90.0000,0.0000,-12.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19621,522.7110,-2333.5371,508.1160,0.0000,0.0000,-8.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(19621,522.8330,-2333.4709,508.1160,0.0000,0.0000,14.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(18635,525.8580,-2334.6641,508.6900,270.0000,0.0000,-80.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,526.5650,-2336.3521,508.6410,0.0000,0.0000,-165.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(19832,524.8120,-2333.6299,508.9390,0.0000,0.0000,-81.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19816,526.3020,-2336.4380,508.9000,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19893,525.9380,-2336.2910,508.6310,0.0000,0.0000,-147.5000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 1, 2059, "CJ_AMMO2", "CJ_gunbook1", 0x00000000);
	object = CreateStreamedObjectEx(18633,526.6760,-2336.0229,509.2240,0.0000,0.0000,166.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(18634,524.7780,-2333.4929,509.3710,0.0000,90.0000,110.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1650,523.0910,-2333.6289,508.3120,0.0000,0.0000,-80.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1650,523.2970,-2333.6650,508.3120,0.0000,0.0000,-89.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1654,526.5580,-2336.0601,508.8290,0.0000,0.0000,-106.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(2057,526.2860,-2335.0310,507.8570,0.0000,0.0000,-32.4000, 200.0,200.0);
	object = CreateStreamedObjectEx(2036,523.1210,-2333.5940,508.9620,0.0000,0.0000,5.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2035,523.1590,-2333.6489,508.9920,-7.2000,-3.7000,165.4000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 3267, "milbase", "a51_metal1", 0x00000000);
	object = CreateStreamedObjectEx(2044,523.8480,-2333.6550,508.9600,0.0000,0.0000,68.9000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 9818, "ship_brijsfw", "CJ_PLASTIC", 0x00000000);
	object = CreateStreamedObjectEx(2035,523.5510,-2333.6160,509.3760,0.0000,0.0000,-7.6000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 9818, "ship_brijsfw", "CJ_PLASTIC", 0x00000000);
	object = CreateStreamedObjectEx(19998,526.6020,-2334.5339,508.7260,0.0000,0.0000,-30.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(19627,525.7850,-2335.3940,508.6430,0.0000,0.0000,-14.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(19627,526.6720,-2335.4060,509.2070,0.0000,0.0000,155.8000, 200.0,200.0);
	object = CreateStreamedObjectEx(19627,526.6750,-2335.5271,509.2070,0.0000,0.0000,-173.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(2711,526.0330,-2335.2151,508.6410,90.0000,36.5000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1665,526.3900,-2334.5381,508.6520,0.0000,0.0000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19995,525.8610,-2334.5620,508.6460,0.0000,-90.0000,22.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(19995,526.1040,-2336.0300,508.6460,0.0000,-90.0000,176.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(1840,526.3730,-2333.7839,508.6450,0.0000,0.0000,30.6000, 200.0,200.0);
	object = CreateStreamedObjectEx(1840,520.3250,-2339.3521,507.6880,0.0000,0.0000,-160.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(1839,519.9780,-2337.8020,508.3510,0.0000,0.0000,-91.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(1271,519.9430,-2338.6931,508.0320,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 456, "yankee", "yankee92crate", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1271,519.9460,-2337.8831,508.0320,0.0000,0.0000,-4.2000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 498, "boxville", "boxville92crate128", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(1271,519.9060,-2338.4629,508.7120,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 456, "yankee", "yankee92crate", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(924,523.2500,-2333.6531,510.4610,0.0000,0.0000,179.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(19823,523.2770,-2338.4851,508.2150,0.0000,0.0000,-20.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(1509,523.4640,-2337.9790,508.4050,0.0000,0.0000,-20.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(1509,523.1260,-2337.8550,508.2750,90.0000,-48.4000,-20.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(1665,523.2300,-2338.2839,508.2540,0.0000,0.0000,41.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(348,522.6540,-2339.0879,508.2240,90.0000,0.0000,40.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(2695,523.5820,-2339.6350,509.6620,0.0000,3.1000,180.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2588,524.4460,-2339.5649,509.9220,0.0000,-1.3000,180.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 14737, "whorewallstuff", "AH_paintbond", 0x00000000);
	object = CreateStreamedObjectEx(19475,524.3440,-2339.6431,509.0730,0.0000,1.8000,450.0000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, 14737, "whorewallstuff", "ah_painting2", 0x00000000);
	object = CreateStreamedObjectEx(351,519.5780,-2338.2419,509.0190,97.1000,70.1000,-70.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(1517,507.3360,-2317.7090,512.3660,90.0000,-31.7000,0.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(2342,514.5450,-2333.8411,508.8770,0.0000,0.0000,168.1000, 200.0,200.0);
	object = CreateStreamedObjectEx(2663,525.0790,-2339.3469,508.4090,0.0000,3.1000,1.7000, 200.0,200.0);
	object = CreateStreamedObjectEx(2768,523.7130,-2338.8679,508.2680,0.0000,0.0000,77.6000, 200.0,200.0);
	object = CreateStreamedObjectEx(2769,522.5770,-2338.1670,508.2480,0.0000,0.0000,-90.5000, 200.0,200.0);
	object = CreateStreamedObjectEx(19835,519.4140,-2332.5630,508.7120,0.0000,0.0000,-36.3000, 200.0,200.0);
	SetDynamicObjectMaterial(object, 0, -1, "none", "none", 0xFFFFFFFF);
	object = CreateStreamedObjectEx(19421,519.6290,-2332.3931,508.6460,-8.5000,0.0000,-78.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19421,519.7900,-2332.5181,508.6460,-8.5000,0.0000,-127.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19421,519.2550,-2329.1790,508.6700,-8.5000,0.0000,-87.0000, 200.0,200.0);
	object = CreateStreamedObjectEx(935,516.0710,-2327.5049,508.2620,0.0000,0.0000,-16.3000, 200.0,200.0);
	object = CreateStreamedObjectEx(19477,509.3020,-2318.5820,512.2290,0.0000,0.0000,0.0000, 200.0,200.0);
	SetDynamicObjectMaterialText(object, 0, ""/*"Map by Twixxer/Sajugs"*/, 80, "Arial", 24, 0, 0xFF66FF00, 0x00000000, 0);
	


	// NEWS Agency
	//new g_Object[358];
	g_Object[0] = CreateDynamicObject(19893, 786.0947, -1332.7447, 710.0371, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[0], 1, 10765, "airportgnd_sfse", "white", 0xFFD78E10);
	g_Object[1] = CreateDynamicObject(3498, 787.6704, -1330.3199, 708.3530, 0.0000, 30.7999, 180.0000); //wdpillar01_lvs
	SetDynamicObjectMaterial(g_Object[1], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[1], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[2] = CreateDynamicObject(18753, 767.7476, -1362.5843, 708.7725, 0.0000, 0.0000, 0.0000); //Base125mx125m1
	SetDynamicObjectMaterial(g_Object[2], 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	g_Object[3] = CreateDynamicObject(1768, 799.6604, -1338.8889, 709.2672, 0.0000, 0.0000, -180.0000); //LOW_COUCH_3
	SetDynamicObjectMaterial(g_Object[3], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[3], 1, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[3], 2, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[4] = CreateDynamicObject(19375, 782.6774, -1334.7253, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[4], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[5] = CreateDynamicObject(19375, 797.0170, -1310.7054, 711.1624, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[5], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[6] = CreateDynamicObject(19375, 782.6774, -1325.0969, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[6], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[7] = CreateDynamicObject(19375, 782.6774, -1315.4858, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[7], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[8] = CreateDynamicObject(19375, 787.4174, -1310.7054, 711.1624, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[8], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[9] = CreateDynamicObject(19464, 784.9838, -1332.8962, 712.2960, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[9], 0, 14530, "estate2", "mp_bobbie_carpet", 0x00000000);
	g_Object[10] = CreateDynamicObject(18981, 789.3145, -1341.7829, 708.7907, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[10], 0, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	g_Object[11] = CreateDynamicObject(19365, 790.7517, -1310.7065, 712.2968, 90.0000, 0.0000, 90.0000); //wall013
	g_Object[12] = CreateDynamicObject(19375, 801.6987, -1315.4858, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[12], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[13] = CreateDynamicObject(19375, 801.6967, -1325.0958, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[13], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[14] = CreateDynamicObject(19375, 801.7006, -1334.6665, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[14], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[15] = CreateDynamicObject(19375, 797.0150, -1339.4250, 711.1624, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[15], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[16] = CreateDynamicObject(19375, 787.4367, -1339.4455, 711.1624, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[16], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[17] = CreateDynamicObject(19786, 801.6978, -1336.8492, 711.8208, 0.0000, 0.0000, -90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[17], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_Object[17], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[18] = CreateDynamicObject(1698, 790.7957, -1337.9642, 709.3469, 0.0000, 0.0000, 0.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[18], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[19] = CreateDynamicObject(19175, 801.5737, -1332.6506, 711.8107, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynamicObjectMaterial(g_Object[19], 0, 11631, "mp_ranchcut", "CJ_PAINTING20", 0x00000000);
	g_Object[20] = CreateDynamicObject(1768, 801.1409, -1335.8293, 709.2672, 0.0000, 0.0000, -90.0000); //LOW_COUCH_3
	SetDynamicObjectMaterial(g_Object[20], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[20], 1, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[20], 2, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[21] = CreateDynamicObject(1768, 795.5399, -1338.8889, 709.2672, 0.0000, 0.0000, -180.0000); //LOW_COUCH_3
	SetDynamicObjectMaterial(g_Object[21], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[21], 1, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[21], 2, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[22] = CreateDynamicObject(2010, 800.7119, -1338.8586, 709.2506, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	g_Object[23] = CreateDynamicObject(2010, 792.5214, -1338.8586, 709.2506, 0.0000, 0.0000, 0.0000); //nu_plant3_ofc
	g_Object[24] = CreateDynamicObject(19365, 794.2612, -1310.7364, 710.8261, 0.0000, 0.0000, 90.0000); //wall013
	SetDynObjMatText_Replace(g_Object[24], "San Andreas", 0, 130, "Arial", 50, 1, 0xFFFFFFFF, 0x0, 1);
	g_Object[25] = CreateDynamicObject(19814, 796.0689, -1339.3385, 709.4547, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[26] = CreateDynamicObject(1808, 796.5725, -1339.1733, 709.2631, 0.0000, 0.0000, 180.0000); //CJ_WATERCOOLER2
	g_Object[27] = CreateDynamicObject(19365, 792.4509, -1310.7264, 711.6463, 0.0000, 0.0000, 90.0000); //wall013
	SetDynObjMatText_Replace(g_Object[27], "ü", 0, 100, "Webdings", 150, 1, 0xFFFFFFFF, 0x0, 1);
	g_Object[28] = CreateDynamicObject(19814, 797.0595, -1339.3385, 709.4547, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[29] = CreateDynamicObject(19176, 801.5269, -1328.4499, 710.7666, 0.0000, 0.0000, -90.0000); //LSOffice1Door1
	SetDynamicObjectMaterial(g_Object[29], 0, 6000, "con_drivein", "drvin_door1", 0xFFFFF0F5);
	g_Object[30] = CreateDynamicObject(19786, 794.1160, -1310.6844, 712.3690, 0.0000, 0.0000, 0.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[30], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[31] = CreateDynamicObject(19786, 790.7257, -1310.6844, 710.6790, 0.0000, 0.0000, 0.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[31], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	SetDynamicObjectMaterial(g_Object[31], 1, 9818, "ship_brijsfw", "ship_screen1sfw", 0x00000000);
	g_Object[32] = CreateDynamicObject(19611, 792.2219, -1313.9576, 708.6262, 0.0000, 0.0000, 0.0000); //MicrophoneStand1
	g_Object[33] = CreateDynamicObject(18764, 794.3743, -1313.2225, 706.8754, 0.0000, 0.0000, 0.0000); //Concrete5mx5mx5m
	SetDynamicObjectMaterial(g_Object[33], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[34] = CreateDynamicObject(18764, 790.7036, -1313.2225, 706.8754, 0.0000, 0.0000, 0.0000); //Concrete5mx5mx5m
	SetDynamicObjectMaterial(g_Object[34], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[35] = CreateDynamicObject(970, 787.1884, -1337.9344, 710.9097, 0.0000, 0.0000, 0.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[35], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[36] = CreateDynamicObject(18762, 792.3129, -1314.1468, 709.5227, 0.0000, 90.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[36], 0, 10765, "airportgnd_sfse", "white", 0xFFD3D3D3);
	g_Object[37] = CreateDynamicObject(19786, 794.6071, -1339.4392, 712.5709, 0.0000, 90.0000, -180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[37], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[37], 1, 7978, "vgssairport", "airportwindow02_128", 0x00000000);
	g_Object[38] = CreateDynamicObject(19786, 798.6478, -1339.4392, 712.5709, 0.0000, 90.0000, -180.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[38], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[38], 1, 7978, "vgssairport", "airportwindow02_128", 0x00000000);
	g_Object[39] = CreateDynamicObject(19375, 794.8764, -1309.9648, 704.1320, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[39], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[40] = CreateDynamicObject(19610, 792.2186, -1313.9842, 710.2465, 0.0000, 0.0000, 0.0000); //Microphone1
	g_Object[41] = CreateDynamicObject(1698, 790.8059, -1338.5548, 709.5169, 0.0000, 0.0000, 0.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[41], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[42] = CreateDynamicObject(19893, 791.6981, -1313.8977, 710.0219, 0.0000, 0.0000, 151.8999); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[42], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[43] = CreateDynamicObject(1698, 790.8162, -1339.0753, 709.7470, 0.0000, 0.0000, 0.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[43], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[44] = CreateDynamicObject(19893, 791.7028, -1313.8885, 710.0264, 0.0000, 0.0000, 151.8999); //LaptopSAMP1
	g_Object[45] = CreateDynamicObject(1698, 790.7960, -1339.6057, 709.9771, 0.0000, 0.0000, 0.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[45], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[46] = CreateDynamicObject(1698, 788.5355, -1338.5954, 710.2175, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[46], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[47] = CreateDynamicObject(19893, 791.7072, -1313.8791, 710.0219, 0.0000, 0.0000, 151.8999); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[47], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[48] = CreateDynamicObject(1698, 788.5355, -1339.9560, 710.2175, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[48], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[49] = CreateDynamicObject(2894, 792.7758, -1313.9349, 710.0275, 0.0000, 0.0000, -156.3999); //kmb_rhymesbook
	SetDynamicObjectMaterial(g_Object[49], 0, 2894, "kmb_notebook", "kmb_notebook", 0x00000000);
	g_Object[50] = CreateDynamicObject(1698, 788.0349, -1338.5954, 710.4577, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[50], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[51] = CreateDynamicObject(1698, 788.0352, -1339.9560, 710.4475, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[51], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[52] = CreateDynamicObject(19371, 788.2926, -1309.2268, 710.3413, 0.0000, 0.0000, 0.0000); //wall019
	SetDynamicObjectMaterial(g_Object[52], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[53] = CreateDynamicObject(19371, 788.3026, -1309.2166, 712.2517, 0.0000, 0.0000, 0.0000); //wall019
	SetDynamicObjectMaterial(g_Object[53], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[54] = CreateDynamicObject(19371, 796.7434, -1309.2166, 712.2517, 0.0000, 0.0000, 0.0000); //wall019
	SetDynamicObjectMaterial(g_Object[54], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[55] = CreateDynamicObject(19371, 796.7534, -1309.2268, 709.9312, 0.0000, 0.0000, 0.0000); //wall019
	SetDynamicObjectMaterial(g_Object[55], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[56] = CreateDynamicObject(19371, 795.2329, -1309.0566, 713.9514, 0.0000, 90.0000, 90.0000); //wall019
	SetDynamicObjectMaterial(g_Object[56], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[57] = CreateDynamicObject(19371, 792.0230, -1309.0666, 713.9514, 0.0000, 90.0000, 90.0000); //wall019
	SetDynamicObjectMaterial(g_Object[57], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[58] = CreateDynamicObject(19371, 789.8031, -1309.0666, 713.9514, 0.0000, 90.0000, 90.0000); //wall019
	SetDynamicObjectMaterial(g_Object[58], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[59] = CreateDynamicObject(1698, 785.9840, -1338.5954, 711.4284, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[59], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[60] = CreateDynamicObject(19375, 789.7860, -1309.9648, 704.1320, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[60], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[61] = CreateDynamicObject(1698, 787.4946, -1338.5954, 710.7077, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[61], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[62] = CreateDynamicObject(19370, 791.3012, -1314.7226, 707.6267, 0.0000, 0.0000, 90.0000); //wall018
	SetDynamicObjectMaterial(g_Object[62], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[63] = CreateDynamicObject(1698, 787.4946, -1339.9560, 710.7077, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[63], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[64] = CreateDynamicObject(1698, 786.9644, -1338.5954, 710.9478, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[64], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[65] = CreateDynamicObject(19370, 793.3623, -1314.7226, 707.6267, 0.0000, 0.0000, 90.0000); //wall018
	SetDynamicObjectMaterial(g_Object[65], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[66] = CreateDynamicObject(19370, 795.2725, -1315.6230, 707.6267, 0.0000, 0.0000, 90.0000); //wall018
	SetDynamicObjectMaterial(g_Object[66], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[67] = CreateDynamicObject(1698, 786.9644, -1339.9659, 710.9478, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[67], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[68] = CreateDynamicObject(19370, 792.0927, -1315.6230, 707.6267, 0.0000, 0.0000, 90.0000); //wall018
	SetDynamicObjectMaterial(g_Object[68], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[69] = CreateDynamicObject(19370, 789.7927, -1315.6230, 707.6267, 0.0000, 0.0000, 90.0000); //wall018
	SetDynamicObjectMaterial(g_Object[69], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[70] = CreateDynamicObject(18762, 792.3328, -1314.1468, 709.5227, 0.0000, 90.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[70], 0, 10765, "airportgnd_sfse", "white", 0xFFD3D3D3);
	g_Object[71] = CreateDynamicObject(19370, 788.2520, -1314.1031, 707.6267, 0.0000, 0.0000, 0.0000); //wall018
	SetDynamicObjectMaterial(g_Object[71], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[72] = CreateDynamicObject(19370, 788.2520, -1312.0721, 707.6267, 0.0000, 0.0000, 0.0000); //wall018
	SetDynamicObjectMaterial(g_Object[72], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[73] = CreateDynamicObject(19370, 796.8128, -1312.0721, 707.6267, 0.0000, 0.0000, 0.0000); //wall018
	SetDynamicObjectMaterial(g_Object[73], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[74] = CreateDynamicObject(19370, 796.8128, -1314.0931, 707.6267, 0.0000, 0.0000, 0.0000); //wall018
	SetDynamicObjectMaterial(g_Object[74], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[75] = CreateDynamicObject(1698, 786.4545, -1339.9560, 711.1981, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[75], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[76] = CreateDynamicObject(19356, 790.0479, -1337.8332, 708.5808, 0.0000, 0.0000, 0.0000); //wall004
	SetDynamicObjectMaterial(g_Object[76], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[77] = CreateDynamicObject(19356, 791.4987, -1339.2336, 708.3706, 0.0000, 0.0000, 0.0000); //wall004
	SetDynamicObjectMaterial(g_Object[77], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[78] = CreateDynamicObject(19375, 782.3159, -1337.9532, 706.5629, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[78], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[79] = CreateDynamicObject(19375, 782.7764, -1337.9632, 706.3126, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[79], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[80] = CreateDynamicObject(19375, 783.2568, -1337.9432, 706.0824, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[80], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[81] = CreateDynamicObject(19375, 783.7672, -1337.9332, 705.8422, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[81], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[82] = CreateDynamicObject(19375, 784.3172, -1337.9432, 705.5921, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[82], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[83] = CreateDynamicObject(19375, 785.3279, -1337.9132, 705.1116, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[83], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[84] = CreateDynamicObject(19356, 791.4887, -1337.8332, 708.3604, 0.0000, 0.0000, 0.0000); //wall004
	SetDynamicObjectMaterial(g_Object[84], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[85] = CreateDynamicObject(1698, 785.9840, -1339.9250, 711.4284, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[85], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[86] = CreateDynamicObject(18981, 789.3145, -1316.7895, 708.7907, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[86], 0, 3979, "civic01_lan", "sl_flagstone1", 0x00000000);
	g_Object[87] = CreateDynamicObject(19464, 784.9835, -1335.0780, 712.2957, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[87], 0, 14530, "estate2", "mp_bobbie_carpet", 0x00000000);
	g_Object[88] = CreateDynamicObject(18764, 792.3142, -1312.1218, 706.9055, 0.0000, 0.0000, 0.0000); //Concrete5mx5mx5m
	SetDynamicObjectMaterial(g_Object[88], 0, 14476, "carlslounge", "AH_cheapredcarpet", 0x00000000);
	g_Object[89] = CreateDynamicObject(970, 788.0288, -1337.9344, 710.5394, 0.0000, 0.0000, 0.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[89], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[90] = CreateDynamicObject(970, 786.5482, -1337.9344, 711.0299, 0.0000, 0.0000, 0.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[90], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[91] = CreateDynamicObject(1698, 786.4545, -1338.5954, 711.1981, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[91], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[92] = CreateDynamicObject(970, 791.4899, -1338.3249, 710.2288, 0.0000, 0.0000, 90.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[92], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[93] = CreateDynamicObject(1698, 785.5236, -1338.5954, 711.6685, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[93], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[94] = CreateDynamicObject(1698, 785.5236, -1339.8868, 711.6685, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[94], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[95] = CreateDynamicObject(1698, 785.1433, -1338.5954, 711.8687, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[95], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[96] = CreateDynamicObject(1698, 785.1433, -1339.9250, 711.8687, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[96], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[97] = CreateDynamicObject(1698, 784.7332, -1338.5954, 712.1090, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[97], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[98] = CreateDynamicObject(970, 790.0999, -1336.8138, 708.7086, 0.0000, 90.0000, 90.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[98], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[99] = CreateDynamicObject(1698, 784.7332, -1339.9255, 712.1090, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[99], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[100] = CreateDynamicObject(1698, 784.3427, -1338.5954, 712.2891, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[100], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[101] = CreateDynamicObject(1698, 784.3427, -1339.9162, 712.2891, 0.0000, 0.0000, 90.0000); //Esc_step8
	SetDynamicObjectMaterial(g_Object[101], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[102] = CreateDynamicObject(970, 790.0999, -1337.3845, 708.7086, 0.0000, 90.0000, 90.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[102], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[103] = CreateDynamicObject(19375, 781.5253, -1337.9549, 707.1533, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[103], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[104] = CreateDynamicObject(19375, 784.8276, -1337.9526, 705.3418, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[104], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[105] = CreateDynamicObject(19375, 781.9356, -1337.9632, 706.7631, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[105], 0, 6282, "beafron2_law2", "boardwalk2_la", 0xFFFFF0F5);
	g_Object[106] = CreateDynamicObject(638, 789.5631, -1336.5229, 709.8775, 0.0000, 0.0000, 0.0000); //kb_planter+bush
	SetDynamicObjectMaterial(g_Object[106], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	SetDynamicObjectMaterial(g_Object[106], 1, 1597, "centralresac1", "fuzzyplant256", 0x00000000);
	g_Object[107] = CreateDynamicObject(3498, 787.1920, -1329.8375, 708.3054, 0.0000, 30.7999, -90.0000); //wdpillar01_lvs
	SetDynamicObjectMaterial(g_Object[107], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[107], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[108] = CreateDynamicObject(970, 785.4982, -1337.9344, 711.4505, 0.0000, 0.0000, 0.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[108], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[109] = CreateDynamicObject(19375, 791.1281, -1344.1562, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[109], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[110] = CreateDynamicObject(970, 784.6781, -1337.9344, 711.6104, 0.0000, 0.0000, 0.0000); //fencesmallb
	SetDynamicObjectMaterial(g_Object[110], 0, 8680, "chnatwnfnce", "ctmallfence", 0xFF000000);
	g_Object[111] = CreateDynamicObject(19375, 790.4074, -1344.1562, 711.1624, 0.0000, 0.0000, 0.0000); //wall023
	SetDynamicObjectMaterial(g_Object[111], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[112] = CreateDynamicObject(18275, 792.3991, -1311.4056, 715.5208, 90.0000, 0.0000, 180.0000); //cw2_mtbfinish
	g_Object[113] = CreateDynamicObject(18762, 787.0302, -1330.4172, 714.7006, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[113], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[114] = CreateDynamicObject(18275, 792.3991, -1315.8774, 715.5208, 90.0000, 0.0000, 0.0000); //cw2_mtbfinish
	g_Object[115] = CreateDynamicObject(18762, 782.8649, -1337.5432, 714.7006, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[115], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[116] = CreateDynamicObject(18762, 787.0302, -1337.5432, 714.7006, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[116], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[117] = CreateDynamicObject(19464, 785.0036, -1335.0880, 712.2946, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[117], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[118] = CreateDynamicObject(18762, 782.8400, -1330.4187, 714.7006, 0.0000, 0.0000, 0.0000); //Concrete1mx1mx5m
	SetDynamicObjectMaterial(g_Object[118], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[119] = CreateDynamicObject(19325, 783.3881, -1329.9884, 714.4710, 0.0000, 0.0000, 90.0000); //lsmall_window01
	SetDynamicObjectMaterial(g_Object[119], 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF000000);
	g_Object[120] = CreateDynamicObject(19325, 787.4887, -1334.0799, 714.4710, 0.0000, 0.0000, 0.0000); //lsmall_window01
	SetDynamicObjectMaterial(g_Object[120], 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF000000);
	g_Object[121] = CreateDynamicObject(18981, 789.1945, -1342.3906, 716.8015, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[121], 0, 14859, "gf1", "mp_cop_ceiling", 0xFFFFFAFA);
	g_Object[122] = CreateDynamicObject(19464, 784.9935, -1332.8668, 712.2949, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[122], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[123] = CreateDynamicObject(18981, 789.1945, -1317.4001, 716.8015, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[123], 0, 14859, "gf1", "mp_cop_ceiling", 0xFFFFFAFA);
	g_Object[124] = CreateDynamicObject(19464, 784.9832, -1332.8668, 716.1848, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[124], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[125] = CreateDynamicObject(19464, 784.9635, -1335.0471, 716.1854, 0.0000, 90.0000, 0.0000); //wall104
	SetDynamicObjectMaterial(g_Object[125], 0, 10765, "airportgnd_sfse", "white", 0xFF696969);
	g_Object[126] = CreateDynamicObject(19143, 793.0280, -1317.1916, 715.0217, -7.4998, 0.0000, 0.0000); //PinSpotLight1
	g_Object[127] = CreateDynamicObject(19143, 794.4979, -1317.1888, 715.0415, -7.4998, 0.0000, 0.0000); //PinSpotLight1
	g_Object[128] = CreateDynamicObject(19143, 791.5778, -1317.1864, 715.0612, -7.4998, 0.0000, 0.0000); //PinSpotLight1
	g_Object[129] = CreateDynamicObject(19143, 790.1173, -1317.1850, 715.0712, -7.4998, 0.0000, 0.0000); //PinSpotLight1
	g_Object[130] = CreateDynamicObject(19143, 789.8496, -1315.6745, 715.0263, -7.4998, 0.0000, -90.0000); //PinSpotLight1
	g_Object[131] = CreateDynamicObject(2161, 782.7620, -1334.3929, 710.1195, 0.0000, 0.0000, 90.0000); //MED_OFFICE_UNIT_4
	g_Object[132] = CreateDynamicObject(19383, 784.9304, -1337.9521, 714.1115, 0.0000, 0.0000, 90.0000); //wall031
	SetDynamicObjectMaterial(g_Object[132], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[133] = CreateDynamicObject(19143, 789.8496, -1314.1241, 715.0263, -7.4998, 0.0000, -90.0000); //PinSpotLight1
	g_Object[134] = CreateDynamicObject(19143, 789.8496, -1312.2042, 715.0263, -7.4998, 0.0000, -90.0000); //PinSpotLight1
	g_Object[135] = CreateDynamicObject(19143, 794.9362, -1312.2042, 715.0438, -7.4998, 0.0000, 90.0000); //PinSpotLight1
	g_Object[136] = CreateDynamicObject(19383, 784.9304, -1337.9520, 717.6115, 180.0000, 0.0000, 90.0000); //wall031
	SetDynamicObjectMaterial(g_Object[136], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[137] = CreateDynamicObject(19143, 794.9362, -1314.1855, 715.0438, -7.4998, 0.0000, 90.0000); //PinSpotLight1
	g_Object[138] = CreateDynamicObject(19143, 794.9362, -1315.8663, 715.0438, -7.4998, 0.0000, 90.0000); //PinSpotLight1
	g_Object[139] = CreateDynamicObject(2229, 795.7827, -1317.5013, 715.0966, 0.0000, 180.0000, -134.3000); //SWANK_SPEAKER
	g_Object[140] = CreateDynamicObject(2370, 798.4309, -1336.9709, 709.2843, 0.0000, 0.0000, 0.0000); //Shop_set_1_Table
	SetDynamicObjectMaterial(g_Object[140], 0, 1949, "barrier", "plainboards64HV", 0x00000000);
	g_Object[141] = CreateDynamicObject(2166, 785.1453, -1332.1206, 709.2545, 0.0000, 0.0000, 270.0000); //MED_OFFICE_DESK_2
	g_Object[142] = CreateDynamicObject(2229, 789.5488, -1317.9167, 715.0667, 0.0000, 180.0000, 143.0997); //SWANK_SPEAKER
	g_Object[143] = CreateDynamicObject(2166, 785.1453, -1335.5721, 709.2545, 0.0000, 0.0000, 270.0000); //MED_OFFICE_DESK_2
	g_Object[144] = CreateDynamicObject(1714, 784.7136, -1332.9880, 709.2760, 0.0000, 0.0000, 90.0000); //kb_swivelchair1
	g_Object[145] = CreateDynamicObject(1714, 784.7136, -1336.3386, 709.2760, 0.0000, 0.0000, 90.0000); //kb_swivelchair1
	g_Object[146] = CreateDynamicObject(1886, 793.9663, -1321.1385, 709.9605, 0.0000, 180.0000, 180.0000); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[146], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[147] = CreateDynamicObject(2985, 794.0227, -1321.3319, 709.2495, 0.0000, 0.0000, 90.0000); //minigun_base
	SetDynamicObjectMaterial(g_Object[147], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[147], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[148] = CreateDynamicObject(2162, 782.8756, -1332.6655, 709.2918, 0.0000, 0.0000, 90.0000); //MED_OFFICE_UNIT_1
	g_Object[149] = CreateDynamicObject(1886, 794.0166, -1321.3586, 709.9605, 0.0000, 180.0000, 0.0000); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[149], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[150] = CreateDynamicObject(2162, 782.8756, -1336.5257, 709.2918, 0.0000, 0.0000, 90.0000); //MED_OFFICE_UNIT_1
	g_Object[151] = CreateDynamicObject(1671, 793.9243, -1322.1842, 709.7202, 0.0000, 0.0000, 180.0000); //swivelchair_A
	g_Object[152] = CreateDynamicObject(2001, 786.3106, -1337.4881, 709.2401, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[152], 1, 13364, "cetown3cs_t", "ws_sandstone2", 0x00000000);
	g_Object[153] = CreateDynamicObject(2001, 783.1101, -1330.9270, 709.2401, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[153], 1, 13364, "cetown3cs_t", "ws_sandstone2", 0x00000000);
	g_Object[154] = CreateDynamicObject(2001, 783.1101, -1337.4493, 709.2401, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[154], 1, 13364, "cetown3cs_t", "ws_sandstone2", 0x00000000);
	g_Object[155] = CreateDynamicObject(19375, 792.6572, -1310.7143, 709.2625, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[155], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[156] = CreateDynamicObject(19786, 784.3366, -1310.7287, 712.5709, 0.0000, 90.0000, 0.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[156], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[156], 1, 7978, "vgssairport", "airportwindow02_128", 0x00000000);
	g_Object[157] = CreateDynamicObject(19786, 786.3670, -1310.7287, 712.5709, 0.0000, 90.0000, 0.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[157], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[157], 1, 7978, "vgssairport", "airportwindow02_128", 0x00000000);
	g_Object[158] = CreateDynamicObject(19786, 799.6270, -1310.7287, 712.5709, 0.0000, 90.0000, 0.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[158], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[158], 1, 7978, "vgssairport", "airportwindow02_128", 0x00000000);
	g_Object[159] = CreateDynamicObject(19355, 792.5402, -1322.3786, 709.2100, 0.0000, 90.0000, 90.0000); //wall003
	SetDynObjMatText_Replace(g_Object[159], "Kamerazone - NICHT  Betreten!", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[159], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[160] = CreateDynamicObject(1886, 790.1259, -1321.3586, 709.9605, 0.0000, 180.0000, 0.0000); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[160], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[161] = CreateDynamicObject(1886, 790.0961, -1321.2186, 709.9605, 0.0000, 180.0000, 180.0000); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[161], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[162] = CreateDynamicObject(19089, 787.4973, -1337.0329, 719.8115, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[162], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[163] = CreateDynamicObject(2985, 790.1220, -1321.3319, 709.2495, 0.0000, 0.0000, 90.0000); //minigun_base
	SetDynamicObjectMaterial(g_Object[163], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[163], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[164] = CreateDynamicObject(1671, 790.1140, -1322.1842, 709.7202, 0.0000, 0.0000, 180.0000); //swivelchair_A
	g_Object[165] = CreateDynamicObject(1671, 786.1740, -1319.1931, 709.7202, 0.0000, 0.0000, 131.8999); //swivelchair_A
	g_Object[166] = CreateDynamicObject(1671, 798.5413, -1319.9068, 709.7202, 0.0000, 0.0000, -144.5000); //swivelchair_A
	g_Object[167] = CreateDynamicObject(2985, 798.0089, -1319.0362, 709.2495, 0.0000, 0.0000, 124.5998); //minigun_base
	SetDynamicObjectMaterial(g_Object[167], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[167], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[168] = CreateDynamicObject(1714, 785.4874, -1333.8336, 712.4362, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[169] = CreateDynamicObject(19893, 786.0947, -1336.2147, 710.0371, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[169], 1, 10765, "airportgnd_sfse", "white", 0xFFD78E10);
	g_Object[170] = CreateDynamicObject(1768, 801.1409, -1331.8885, 709.2672, 0.0000, 0.0000, -90.0000); //LOW_COUCH_3
	SetDynamicObjectMaterial(g_Object[170], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[170], 1, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	SetDynamicObjectMaterial(g_Object[170], 2, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[171] = CreateDynamicObject(19893, 786.0645, -1336.2071, 709.9769, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[171], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[171], "Passwort: _____", 1, 90, "Arial", 28, 1, 0xFF000000, 0x0, 1);
	g_Object[172] = CreateDynamicObject(1808, 801.4531, -1334.9134, 709.2631, 0.0000, 0.0000, 270.0000); //CJ_WATERCOOLER2
	g_Object[173] = CreateDynamicObject(19893, 786.0847, -1332.7447, 710.0269, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[173], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[173], "Login: ______", 1, 90, "Arial", 28, 1, 0xFF000000, 0x0, 1);
	g_Object[174] = CreateDynamicObject(19893, 786.0645, -1332.7247, 709.9769, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[174], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[174], "Passwort: _____", 1, 90, "Arial", 28, 1, 0xFF000000, 0x0, 1);
	g_Object[175] = CreateDynamicObject(19893, 786.1148, -1336.2270, 710.0971, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[175], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[175], "ü", 1, 90, "Webdings", 50, 1, 0xFF000000, 0x0, 1);
	g_Object[176] = CreateDynamicObject(2186, 788.4541, -1337.4265, 709.2523, 0.0000, 0.0000, 180.0000); //PHOTOCOPIER_1
	g_Object[177] = CreateDynamicObject(19893, 786.0847, -1336.2270, 710.0269, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[177], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[177], "Login: _____", 1, 90, "Arial", 28, 1, 0xFF000000, 0x0, 1);
	g_Object[178] = CreateDynamicObject(19893, 786.1148, -1332.7464, 710.0971, 0.0000, 0.0000, -90.0000); //LaptopSAMP1
	SetDynamicObjectMaterial(g_Object[178], 0, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	SetDynObjMatText_Replace(g_Object[178], "ü", 1, 90, "Webdings", 50, 1, 0xFF000000, 0x0, 1);
	g_Object[179] = CreateDynamicObject(19835, 786.0902, -1333.2989, 710.1267, 0.0000, 0.0000, 0.0000); //CoffeeCup1
	g_Object[180] = CreateDynamicObject(19175, 782.7761, -1326.7115, 711.6054, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[180], "Kaffee", 0, 90, "Arial", 45, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[180], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[181] = CreateDynamicObject(19807, 785.3955, -1335.5577, 710.0806, 0.0000, 0.0000, 0.0000); //Telephone1
	SetDynamicObjectMaterial(g_Object[181], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[182] = CreateDynamicObject(19807, 785.3955, -1332.0471, 710.0806, 0.0000, 0.0000, 0.0000); //Telephone1
	SetDynamicObjectMaterial(g_Object[182], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[183] = CreateDynamicObject(19089, 787.4973, -1330.6208, 715.2811, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[183], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[184] = CreateDynamicObject(19089, 787.4973, -1329.9704, 713.2506, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[184], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[185] = CreateDynamicObject(18075, 782.3010, -1336.3984, 712.2116, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[186] = CreateDynamicObject(19089, 786.7968, -1329.9903, 713.2506, 0.0000, 90.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[186], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[187] = CreateDynamicObject(19089, 786.7677, -1329.9803, 715.2811, 0.0000, 90.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[187], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[188] = CreateDynamicObject(19089, 786.5269, -1329.9903, 719.7512, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[188], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[189] = CreateDynamicObject(19089, 783.3563, -1329.9903, 719.7111, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[189], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[190] = CreateDynamicObject(19089, 786.7968, -1329.9903, 716.0609, 0.0000, 90.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[190], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[191] = CreateDynamicObject(19089, 786.7968, -1329.9903, 712.4204, 0.0000, 90.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[191], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[192] = CreateDynamicObject(19089, 787.4973, -1330.6208, 716.0515, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[192], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[193] = CreateDynamicObject(19089, 787.4973, -1330.6208, 712.4317, 0.0000, 90.0000, 90.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[193], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[194] = CreateDynamicObject(19089, 787.4973, -1330.9305, 719.8115, 0.0000, 0.0000, 0.0000); //Rope3
	SetDynamicObjectMaterial(g_Object[194], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[195] = CreateDynamicObject(2985, 786.9506, -1318.4986, 709.2495, 0.0000, 0.0000, 43.1999); //minigun_base
	SetDynamicObjectMaterial(g_Object[195], 0, 3314, "ce_burbhouse", "black_128", 0x00000000);
	SetDynamicObjectMaterial(g_Object[195], 1, 3314, "ce_burbhouse", "black_128", 0x00000000);
	g_Object[196] = CreateDynamicObject(1886, 797.8590, -1318.9587, 709.9605, 0.0000, 180.0000, -144.9998); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[196], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[197] = CreateDynamicObject(1886, 797.9929, -1319.0498, 709.9605, 0.0000, 180.0000, 34.1001); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[197], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[198] = CreateDynamicObject(1886, 787.0443, -1318.3541, 709.9605, 0.0000, 180.0000, 133.3999); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[198], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[199] = CreateDynamicObject(1886, 786.9414, -1318.5058, 709.9605, 0.0000, 180.0000, -46.4999); //shop_sec_cam
	SetDynamicObjectMaterial(g_Object[199], 1, 14832, "lee_stripclub", "Strip_ceiling", 0x00000000);
	g_Object[200] = CreateDynamicObject(19175, 784.9168, -1329.9947, 714.2406, 0.0000, 0.0000, 180.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[200], "ü", 0, 90, "Webdings", 80, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[200], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[201] = CreateDynamicObject(19175, 787.4973, -1333.0046, 714.3107, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[201], "Abteilung l", 0, 90, "Arial", 60, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[201], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[202] = CreateDynamicObject(19175, 784.9168, -1329.9947, 714.2406, 0.0000, 0.0000, 0.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[202], "ü", 0, 90, "Webdings", 80, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[202], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[203] = CreateDynamicObject(19175, 801.6181, -1337.7369, 711.6005, 0.0000, 90.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[203], "__", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[203], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[204] = CreateDynamicObject(19175, 787.4973, -1335.2552, 714.3107, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[204], "Regie", 0, 90, "Arial", 60, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[204], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[205] = CreateDynamicObject(19355, 792.1400, -1322.3786, 709.2100, 0.0000, 90.0000, 90.0000); //wall003
	SetDynObjMatText_Replace(g_Object[205], "------------------------------", 0, 90, "Arial", 29, 1, 0xFFFFFFFF, 0x0, 0);
	SetDynamicObjectMaterial(g_Object[205], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[206] = CreateDynamicObject(19355, 797.0515, -1319.1407, 709.2100, 0.0000, 90.0000, 118.5998); //wall003
	SetDynObjMatText_Replace(g_Object[206], "------------------------------", 0, 90, "Arial", 24, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[206], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[207] = CreateDynamicObject(19175, 787.4973, -1333.0046, 714.3107, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[207], "Abteilung", 0, 90, "Arial", 60, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[207], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[208] = CreateDynamicObject(19365, 790.7418, -1310.7264, 712.3963, 0.0000, 0.0000, 90.0000); //wall013
	SetDynObjMatText_Replace(g_Object[208], "News Agency", 0, 130, "Arial", 50, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[208], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[209] = CreateDynamicObject(19355, 789.6865, -1320.0267, 709.2100, 0.0000, 90.0000, 40.5000); //wall003
	SetDynObjMatText_Replace(g_Object[209], "------------------------------", 0, 90, "Arial", 24, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[209], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[210] = CreateDynamicObject(19355, 787.9719, -1318.0185, 709.2100, 0.0000, 90.0000, 40.5000); //wall003
	SetDynObjMatText_Replace(g_Object[210], "------------------------------", 0, 90, "Arial", 24, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[210], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[211] = CreateDynamicObject(19355, 794.7158, -1320.4139, 709.2100, 0.0000, 90.0000, 118.5998); //wall003
	SetDynObjMatText_Replace(g_Object[211], "------------------------------", 0, 90, "Arial", 24, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[211], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[212] = CreateDynamicObject(2167, 801.5996, -1325.0633, 709.3068, 0.0000, 0.0000, -90.0000); //MED_OFFICE_UNIT_7
	g_Object[213] = CreateDynamicObject(19814, 800.2299, -1339.3385, 709.4547, 0.0000, 0.0000, 180.0000); //ElectricalOutlet2
	g_Object[214] = CreateDynamicObject(19814, 801.5700, -1338.5079, 709.4547, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[215] = CreateDynamicObject(19814, 801.5700, -1334.5157, 709.4547, 0.0000, 0.0000, 270.0000); //ElectricalOutlet2
	g_Object[216] = CreateDynamicObject(1714, 785.6276, -1331.8933, 712.4362, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[217] = CreateDynamicObject(2001, 783.4323, -1338.7136, 712.4301, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[217], 1, 12855, "cunte_cop", "ws_bigstones", 0x00000000);
	g_Object[218] = CreateDynamicObject(2001, 786.2423, -1337.5321, 712.4301, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[218], 1, 12855, "cunte_cop", "ws_bigstones", 0x00000000);
	g_Object[219] = CreateDynamicObject(2001, 786.2423, -1330.6914, 712.4301, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[219], 1, 12855, "cunte_cop", "ws_bigstones", 0x00000000);
	g_Object[220] = CreateDynamicObject(18075, 782.3010, -1336.3984, 716.1018, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[221] = CreateDynamicObject(2001, 787.0725, -1331.2213, 712.4301, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[221], 1, 12855, "cunte_cop", "ws_bigstones", 0x00000000);
	g_Object[222] = CreateDynamicObject(19786, 782.6610, -1333.9591, 714.9713, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	SetDynamicObjectMaterial(g_Object[222], 1, 6490, "tvstudio_law2", "tvstud03_LAw2", 0x00000000);
	g_Object[223] = CreateDynamicObject(14391, 783.6325, -1333.9090, 713.2670, 0.0000, 0.0000, 0.0000); //Dr_GsNEW07
	SetDynamicObjectMaterial(g_Object[223], 0, 16640, "a51", "a51_boffstuff3", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 3, 10226, "sfeship1", "sf_ship_screen1", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 4, 10226, "sfeship1", "sf_ship_screen1", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 5, 3267, "milbase", "a51_boffstuff2", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 6, 16640, "a51", "a51_boffstuff3", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 7, 6000, "con_drivein", "drvin_screen", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 11, 14392, "dr_gsstudio", "amp04", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 12, 10765, "airportgnd_sfse", "white", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 13, 10226, "sfeship1", "sf_ship_screen1", 0x00000000);
	SetDynamicObjectMaterial(g_Object[223], 14, 2894, "kmb_notebook", "kmb_notebook", 0x00000000);
	g_Object[224] = CreateDynamicObject(19786, 782.6411, -1333.9591, 714.9713, 0.0000, 0.0000, 90.0000); //LCDTVBig1
	g_Object[225] = CreateDynamicObject(2271, 787.5490, -1338.8381, 712.6231, 0.0000, 0.0000, 180.0000); //Frame_WOOD_1
	SetDynamicObjectMaterial(g_Object[225], 0, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	SetDynamicObjectMaterial(g_Object[225], 1, 14812, "lee_studhall", "GoldDisk1", 0x00000000);
	g_Object[226] = CreateDynamicObject(2271, 789.0792, -1338.8381, 711.8225, 0.0000, 0.0000, 180.0000); //Frame_WOOD_1
	SetDynamicObjectMaterial(g_Object[226], 0, 1560, "7_11_door", "CJ_CHROME2", 0x00000000);
	SetDynamicObjectMaterial(g_Object[226], 1, 14812, "lee_studhall", "GoldDisk1", 0x00000000);
	g_Object[227] = CreateDynamicObject(2001, 787.0421, -1336.7618, 712.4301, 0.0000, 0.0000, 0.0000); //nu_plant_ofc
	SetDynamicObjectMaterial(g_Object[227], 1, 12855, "cunte_cop", "ws_bigstones", 0x00000000);
	g_Object[228] = CreateDynamicObject(1846, 784.7489, -1338.8680, 713.4843, 0.0000, 90.0000, 90.0000); //shop_shelf04
	SetDynamicObjectMaterial(g_Object[228], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[229] = CreateDynamicObject(19375, 806.3756, -1326.7143, 707.0523, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[229], 0, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[230] = CreateDynamicObject(1714, 785.4874, -1335.8443, 712.4362, 0.0000, 0.0000, -90.0000); //kb_swivelchair1
	g_Object[231] = CreateDynamicObject(19565, 801.5825, -1327.3314, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[231], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[232] = CreateDynamicObject(19375, 806.3565, -1330.1750, 707.1223, 0.0000, 0.0000, 90.0000); //wall023
	SetDynamicObjectMaterial(g_Object[232], 0, 10765, "airportgnd_sfse", "white", 0xFFFFF0F5);
	g_Object[233] = CreateDynamicObject(19565, 801.5825, -1326.8619, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[233], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[234] = CreateDynamicObject(1819, 784.1801, -1325.9305, 709.2924, 0.0000, 0.0000, 0.0000); //COFFEE_SWANK_4
	SetDynamicObjectMaterial(g_Object[234], 0, 1355, "break_s_bins", "marble1", 0x00000000);
	g_Object[235] = CreateDynamicObject(19565, 801.5825, -1327.7812, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[235], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[236] = CreateDynamicObject(19565, 801.5825, -1330.0019, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[236], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[237] = CreateDynamicObject(19565, 801.5825, -1329.5515, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[237], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[238] = CreateDynamicObject(19565, 801.5825, -1329.1009, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[238], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[239] = CreateDynamicObject(11717, 783.7609, -1324.0102, 709.1666, 0.0000, 0.0000, 44.4999); //WooziesCouch1
	g_Object[240] = CreateDynamicObject(19565, 801.5825, -1328.6308, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[240], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[241] = CreateDynamicObject(19565, 801.5825, -1328.2407, 712.1008, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[241], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[242] = CreateDynamicObject(19565, 801.5825, -1328.1706, 712.3510, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[242], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[243] = CreateDynamicObject(11717, 783.5908, -1326.6866, 709.1666, 0.0000, 0.0000, 119.6997); //WooziesCouch1
	g_Object[244] = CreateDynamicObject(19565, 801.5825, -1328.6208, 712.3510, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[244], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[245] = CreateDynamicObject(19565, 801.5822, -1328.5107, 712.2509, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[245], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[246] = CreateDynamicObject(19565, 801.5822, -1328.2906, 712.2509, 0.0000, 0.0000, 90.0000); //IceCreamBarsBox1
	SetDynamicObjectMaterial(g_Object[246], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	g_Object[247] = CreateDynamicObject(11711, 801.5725, -1328.4110, 712.3814, 0.0000, 0.0000, 90.0000); //ExitSign1
	g_Object[248] = CreateDynamicObject(13646, 783.2404, -1325.4449, 708.6959, 0.0000, 0.0000, 0.0000); //ramplandpad
	SetDynamicObjectMaterial(g_Object[248], 0, 10765, "airportgnd_sfse", "white", 0xFFFFA500);
	SetDynamicObjectMaterial(g_Object[248], 1, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[249] = CreateDynamicObject(19611, 784.5263, -1324.9807, 708.3751, 0.0000, 0.0000, 0.0000); //MicrophoneStand1
	g_Object[250] = CreateDynamicObject(19611, 784.5263, -1325.8215, 708.3751, 0.0000, 0.0000, 0.0000); //MicrophoneStand1
	g_Object[251] = CreateDynamicObject(2167, 801.5999, -1324.1427, 709.3068, 0.0000, 0.0000, -90.0000); //MED_OFFICE_UNIT_7
	g_Object[252] = CreateDynamicObject(19610, 784.5377, -1325.0124, 710.0053, 0.0000, 0.0000, 23.9999); //Microphone1
	g_Object[253] = CreateDynamicObject(2169, 801.4749, -1323.0570, 709.2442, 0.0000, 0.0000, 90.0000); //MED_OFFICE3_DESK_1
	g_Object[254] = CreateDynamicObject(19610, 784.5189, -1325.8314, 710.0053, 0.0000, 0.0000, 124.9999); //Microphone1
	g_Object[255] = CreateDynamicObject(19431, 782.6870, -1323.8409, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[255], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[256] = CreateDynamicObject(19431, 782.6970, -1323.8409, 713.7810, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[256], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[257] = CreateDynamicObject(19431, 782.6870, -1323.8409, 717.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[257], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[258] = CreateDynamicObject(19431, 782.6870, -1326.7209, 711.0607, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[258], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[259] = CreateDynamicObject(19431, 782.7069, -1326.7209, 714.5512, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[259], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[260] = CreateDynamicObject(19431, 782.6848, -1328.3120, 711.0607, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[260], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[261] = CreateDynamicObject(19431, 782.7050, -1328.3120, 714.5515, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[261], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[262] = CreateDynamicObject(367, 801.3455, -1323.1223, 710.0703, 0.0000, 0.0000, 120.0000); //camera
	g_Object[263] = CreateDynamicObject(19431, 782.6870, -1322.2408, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[263], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[264] = CreateDynamicObject(19431, 782.6870, -1322.2408, 713.7907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[264], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[265] = CreateDynamicObject(367, 801.4240, -1322.6379, 710.0703, 0.0000, 0.0000, 120.0000); //camera
	g_Object[266] = CreateDynamicObject(367, 801.3640, -1322.0135, 710.0703, 0.0000, 0.0000, 120.0000); //camera
	g_Object[267] = CreateDynamicObject(19431, 782.6870, -1322.2408, 717.2517, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[267], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[268] = CreateDynamicObject(19431, 782.6787, -1316.4095, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[268], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[269] = CreateDynamicObject(19431, 782.6870, -1314.8387, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[269], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[270] = CreateDynamicObject(19431, 782.6889, -1314.8287, 711.8806, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[270], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[271] = CreateDynamicObject(19431, 782.6870, -1313.2281, 713.2313, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[271], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[272] = CreateDynamicObject(19431, 782.6868, -1313.2381, 709.7310, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[272], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[273] = CreateDynamicObject(19431, 782.6868, -1311.6379, 709.7310, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[273], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[274] = CreateDynamicObject(19431, 782.6868, -1311.6279, 713.2313, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[274], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[275] = CreateDynamicObject(19431, 782.7069, -1311.6279, 716.7321, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[275], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[276] = CreateDynamicObject(19431, 782.7069, -1310.0272, 716.7122, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[276], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[277] = CreateDynamicObject(19431, 782.6868, -1310.0272, 713.2124, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[277], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[278] = CreateDynamicObject(19431, 782.6868, -1310.0272, 709.7128, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[278], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[279] = CreateDynamicObject(19431, 801.6779, -1316.4095, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[279], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[280] = CreateDynamicObject(19431, 801.6779, -1314.8100, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[280], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[281] = CreateDynamicObject(19431, 801.6799, -1314.8100, 711.9113, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[281], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[282] = CreateDynamicObject(19431, 801.6801, -1313.2099, 713.2426, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[282], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[283] = CreateDynamicObject(19431, 801.6799, -1313.2099, 709.7628, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[283], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[284] = CreateDynamicObject(19431, 801.6799, -1311.6097, 709.7628, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[284], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[285] = CreateDynamicObject(19431, 801.6779, -1311.6097, 713.2426, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[285], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[286] = CreateDynamicObject(19431, 801.6779, -1311.6097, 716.7340, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[286], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[287] = CreateDynamicObject(19431, 782.6870, -1320.6412, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[287], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[288] = CreateDynamicObject(19431, 782.6870, -1320.6412, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[288], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[289] = CreateDynamicObject(2270, 783.2686, -1325.3597, 710.2907, 0.0000, 0.0000, 90.0000); //Frame_WOOD_6
	g_Object[290] = CreateDynamicObject(19175, 782.7761, -1324.1115, 711.6054, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[290], "Talk", 0, 90, "Arial", 45, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[290], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[291] = CreateDynamicObject(19825, 782.8060, -1325.3425, 711.5712, 0.0000, 0.0000, 90.0000); //SprunkClock1
	SetDynamicObjectMaterial(g_Object[291], 0, 1654, "dynamite", "clock64", 0x00000000);
	g_Object[292] = CreateDynamicObject(2773, 784.9561, -1328.2672, 709.7937, 0.0000, 0.0000, -60.2999); //CJ_AIRPRT_BAR
	g_Object[293] = CreateDynamicObject(2010, 783.1256, -1327.3020, 709.2600, 0.0000, 0.0000, -50.7999); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[293], 0, 17958, "burnsalpha", "plantb256", 0x00000000);
	g_Object[294] = CreateDynamicObject(19175, 782.7761, -1324.0915, 711.6054, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[294], "_____", 0, 90, "Arial", 45, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[294], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[295] = CreateDynamicObject(19175, 782.7761, -1326.6519, 712.0557, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[295], "______", 0, 90, "Arial", 47, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[295], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[296] = CreateDynamicObject(19175, 782.7761, -1326.6519, 711.6054, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[296], "______", 0, 90, "Arial", 47, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[296], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[297] = CreateDynamicObject(19175, 782.7761, -1324.0915, 712.0557, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[297], "_____", 0, 90, "Arial", 45, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[297], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[298] = CreateDynamicObject(19355, 801.6696, -1323.4276, 712.0697, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[298], "__________", 0, 100, "Arial", 35, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[298], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[299] = CreateDynamicObject(19355, 801.6696, -1323.4276, 712.5300, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[299], "__________", 0, 100, "Arial", 35, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[299], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[300] = CreateDynamicObject(19355, 801.6596, -1323.4276, 712.1296, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[300], "Ausrüstung", 0, 100, "Arial", 35, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[300], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[301] = CreateDynamicObject(19814, 782.7708, -1325.4256, 709.4547, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[302] = CreateDynamicObject(19814, 782.7708, -1325.1754, 709.4547, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[303] = CreateDynamicObject(19814, 782.7708, -1333.3770, 709.4547, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[304] = CreateDynamicObject(19814, 782.7708, -1334.9769, 709.4547, 0.0000, 0.0000, 90.0000); //ElectricalOutlet2
	g_Object[305] = CreateDynamicObject(19431, 801.6900, -1319.0401, 710.2924, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[305], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[306] = CreateDynamicObject(1522, 801.6658, -1318.0634, 709.2406, 0.0000, 0.0000, 90.0000); //Gen_doorSHOP3
	SetDynamicObjectMaterial(g_Object[306], 0, 2878, "cj_vic", "CJ_VICT_DOOR", 0xFFFFFFFF);
	g_Object[307] = CreateDynamicObject(1522, 801.6658, -1320.2143, 709.2406, 0.0000, 0.0000, 90.0000); //Gen_doorSHOP3
	SetDynamicObjectMaterial(g_Object[307], 0, 18008, "intclothesa", "CJ_VICT_DOOR2", 0xFFFFFFFF);
	g_Object[308] = CreateDynamicObject(19431, 801.6900, -1317.4399, 710.2924, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[308], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[309] = CreateDynamicObject(19355, 801.6696, -1318.4870, 712.9697, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[309], "WC", 0, 100, "Arial", 60, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[309], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[310] = CreateDynamicObject(1223, 782.6085, -1324.3398, 707.7719, 0.0000, 0.0000, 0.0000); //lampost_coast
	SetDynamicObjectMaterial(g_Object[310], 0, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
	g_Object[311] = CreateDynamicObject(1223, 782.6085, -1326.3308, 707.7719, 0.0000, 0.0000, 0.0000); //lampost_coast
	SetDynamicObjectMaterial(g_Object[311], 0, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
	g_Object[312] = CreateDynamicObject(2245, 784.8007, -1325.4007, 710.0667, 0.0000, 0.0000, 0.0000); //Plant_Pot_11
	SetDynamicObjectMaterial(g_Object[312], 0, 10385, "baseballground_sfs", "ws_baseballdirt", 0x00000000);
	SetDynamicObjectMaterial(g_Object[312], 1, 14581, "ab_mafiasuitea", "ab_wood01", 0x00000000);
	SetDynamicObjectMaterial(g_Object[312], 2, 804, "gta_proc_grasslanda", "veg_leafred", 0x00000000);
	SetDynamicObjectMaterial(g_Object[312], 3, 2895, "law_coffinfl", "hot_flowers1", 0x00000000);
	g_Object[313] = CreateDynamicObject(2010, 783.1109, -1323.5986, 709.2600, 0.0000, 0.0000, -50.7999); //nu_plant3_ofc
	SetDynamicObjectMaterial(g_Object[313], 0, 17958, "burnsalpha", "plantb256", 0x00000000);
	g_Object[314] = CreateDynamicObject(2773, 784.9627, -1322.3902, 709.7937, 0.0000, 0.0000, -117.9000); //CJ_AIRPRT_BAR
	g_Object[315] = CreateDynamicObject(19431, 782.6870, -1320.6412, 713.7813, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[315], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[316] = CreateDynamicObject(19431, 782.6870, -1320.6412, 717.2515, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[316], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[317] = CreateDynamicObject(19835, 784.3624, -1325.7115, 709.8668, 0.0000, 0.0000, 0.0000); //CoffeeCup1
	g_Object[318] = CreateDynamicObject(19835, 784.6624, -1324.9508, 709.8668, 0.0000, 0.0000, 0.0000); //CoffeeCup1
	g_Object[319] = CreateDynamicObject(19623, 788.2271, -1325.4425, 710.9605, 0.0000, 0.0000, -90.0000); //Camera1
	g_Object[320] = CreateDynamicObject(19611, 788.2459, -1325.4415, 709.2800, 0.0000, 0.0000, 0.0000); //MicrophoneStand1
	g_Object[321] = CreateDynamicObject(2370, 798.4309, -1333.3199, 709.2843, 0.0000, 0.0000, 0.0000); //Shop_set_1_Table
	SetDynamicObjectMaterial(g_Object[321], 0, 1949, "barrier", "plainboards64HV", 0x00000000);
	g_Object[322] = CreateDynamicObject(19431, 801.6875, -1320.6412, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[322], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[323] = CreateDynamicObject(19431, 801.6875, -1322.2318, 710.2907, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[323], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[324] = CreateDynamicObject(19431, 801.6774, -1322.2318, 711.9404, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[324], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[325] = CreateDynamicObject(19431, 801.6774, -1323.8321, 713.5512, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[325], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[326] = CreateDynamicObject(19431, 801.6774, -1323.8321, 710.0510, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[326], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[327] = CreateDynamicObject(19431, 801.6774, -1325.4226, 710.0510, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[327], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[328] = CreateDynamicObject(19431, 801.6793, -1325.4226, 713.5512, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[328], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[329] = CreateDynamicObject(19431, 801.6774, -1325.4226, 714.5518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[329], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[330] = CreateDynamicObject(19431, 801.6774, -1327.0218, 714.5518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[330], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[331] = CreateDynamicObject(19431, 801.6774, -1328.6225, 714.5518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[331], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[332] = CreateDynamicObject(19431, 801.6774, -1330.2231, 714.5518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[332], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[333] = CreateDynamicObject(19431, 801.6674, -1331.3936, 714.5518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[333], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[334] = CreateDynamicObject(19431, 801.6674, -1331.3537, 711.0518, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[334], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[335] = CreateDynamicObject(19431, 801.6674, -1332.9543, 711.0418, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[335], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[336] = CreateDynamicObject(19431, 801.6693, -1332.9543, 712.9321, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[336], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[337] = CreateDynamicObject(19431, 801.6674, -1334.5550, 711.3118, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[337], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[338] = CreateDynamicObject(19431, 801.6674, -1334.5550, 707.8015, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[338], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[339] = CreateDynamicObject(19431, 801.6674, -1339.0366, 707.8015, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[339], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[340] = CreateDynamicObject(19431, 801.6674, -1339.0366, 711.3117, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[340], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[341] = CreateDynamicObject(19431, 801.6774, -1339.7270, 713.4716, 0.0000, 0.0000, 0.0000); //wall071
	SetDynamicObjectMaterial(g_Object[341], 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	g_Object[342] = CreateDynamicObject(2370, 794.1204, -1337.0499, 709.2843, 0.0000, 0.0000, 0.0000); //Shop_set_1_Table
	SetDynamicObjectMaterial(g_Object[342], 0, 1949, "barrier", "plainboards64HV", 0x00000000);
	g_Object[343] = CreateDynamicObject(18075, 797.1143, -1333.0625, 716.3305, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[344] = CreateDynamicObject(18075, 797.1143, -1318.1108, 716.3305, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[345] = CreateDynamicObject(18075, 787.4130, -1318.1108, 716.3305, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[346] = CreateDynamicObject(18075, 787.4130, -1332.9742, 716.3305, 0.0000, 0.0000, 0.0000); //lightD
	g_Object[347] = CreateDynamicObject(18981, 803.9027, -1337.7851, 708.8206, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[347], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	g_Object[348] = CreateDynamicObject(18981, 804.0631, -1338.0052, 708.8306, 0.0000, 90.0000, 0.0000); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_Object[348], 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	g_Object[349] = CreateDynamicObject(19175, 787.4973, -1335.3951, 714.3107, 0.0000, 0.0000, 90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[349], "Regie  l", 0, 90, "Arial", 60, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[349], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[350] = CreateDynamicObject(19355, 801.6895, -1319.4771, 711.9097, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[350], "Frauen", 0, 140, "Arial", 35, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[350], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[351] = CreateDynamicObject(19175, 801.5980, -1336.8759, 711.8507, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[351], "News Agency", 0, 90, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[351], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[352] = CreateDynamicObject(19175, 801.5980, -1337.2763, 711.6405, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[352], "Los Santos", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[352], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[353] = CreateDynamicObject(19175, 801.6181, -1337.3065, 711.6005, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[353], "__________", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[353], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[354] = CreateDynamicObject(19175, 801.6181, -1336.3558, 712.0905, 0.0000, 0.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[354], "__________", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[354], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[355] = CreateDynamicObject(19355, 801.6696, -1317.3170, 711.9097, 0.0000, 0.0000, 0.0000); //wall003
	SetDynObjMatText_Replace(g_Object[355], "Männer", 0, 140, "Arial", 35, 1, 0xFFD78E10, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[355], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[356] = CreateDynamicObject(19175, 801.6181, -1336.0655, 711.9404, 0.0000, 90.0000, -90.0000); //SAMPPicture4
	SetDynObjMatText_Replace(g_Object[356], "__", 0, 130, "Arial", 30, 1, 0xFFFFFFFF, 0x0, 1);
	SetDynamicObjectMaterial(g_Object[356], 1, 0, "INVALID", "INVALID", 0xFFFFFFFF);
	g_Object[357] = CreateDynamicObject(16780, 785.0345, -1334.3840, 716.4608, 0.0000, 0.0000, 0.0000); //ufo_light03



	// Boxing INT
	new boxingint;
	boxingint = CreateDynamicObject(6300, 2225.954589, -1726.081176, 1500.526489, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2243.178710, -1725.754272, 1506.397094, 90.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2255.827880, -1723.764038, 1506.397094, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2224.286865, -1723.764038, 1506.397094, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1764.224609, 1506.397094, 90.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1747.264282, 1519.836914, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1755.990966, 1477.857177, -89.999992, -89.999992, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(14781, 2239.361572, -1747.548217, 1509.489990, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1760.232177, 1479.788940, -89.999992, -89.999946, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1787.241577, 1509.097045, 0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1788.170532, 1509.577148, 0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1756.920410, 1478.327514, -89.999992, -89.999992, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1757.970703, 1478.807983, -89.999992, -89.999992, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1791.472167, 1511.047851, -0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1789.210693, 1510.057617, 0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1759.081176, 1479.298461, -89.999992, -89.999961, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1790.321166, 1510.548095, -0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2247.398925, -1774.872070, 1477.857177, -89.999992, -134.999969, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1761.342041, 1480.279418, -89.999992, -89.999931, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1792.582031, 1511.538330, -0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1762.513183, 1480.789916, -89.999992, -89.999900, 89.999961,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2220.027832, -1793.753173, 1512.048828, -0.000000, -179.999984, -0.000030,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2251.640136, -1774.872070, 1479.788940, -89.999992, -134.999923, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2278.649658, -1774.872070, 1509.097045, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2279.578369, -1774.872070, 1509.577148, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2248.328369, -1774.872070, 1478.327514, -89.999992, -134.999969, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2249.378662, -1774.872070, 1478.807983, -89.999992, -134.999969, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2282.880126, -1774.872070, 1511.047851, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2280.618652, -1774.872070, 1510.057617, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2250.489013, -1774.872070, 1479.298461, -89.999992, -134.999938, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2281.729248, -1774.872070, 1510.548095, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2252.750000, -1774.872070, 1480.279418, -89.999992, -134.999908, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2283.989990, -1774.872070, 1511.538330, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2253.921142, -1774.872070, 1480.789916, -89.999992, -134.999877, 134.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2285.161132, -1774.872070, 1512.048828, 0.000007, -179.999984, 89.999916,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2232.851318, -1774.872070, 1477.857177, -89.999992, -286.533264, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2228.610107, -1774.872070, 1479.788940, -89.999992, -286.533233, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2201.600585, -1774.872070, 1509.097045, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2200.671875, -1774.872070, 1509.577148, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2231.921875, -1774.872070, 1478.327514, -89.999992, -286.533264, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2230.871582, -1774.872070, 1478.807983, -89.999992, -286.533264, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2197.370117, -1774.872070, 1511.047851, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2199.631591, -1774.872070, 1510.057617, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2229.761230, -1774.872070, 1479.298461, -89.999992, -286.533233, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2198.520996, -1774.872070, 1510.548095, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2227.500244, -1774.872070, 1480.279418, -89.999992, -286.533203, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2196.260253, -1774.872070, 1511.538330, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2226.329101, -1774.872070, 1480.789916, -89.999992, -286.533172, 163.466629,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2195.089111, -1774.872070, 1512.048828, 0.000007, -179.999984, -90.000099,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2243.178710, -1734.424560, 1481.055786, 90.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2223.167968, -1703.173950, 1512.296508, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2168.695556, -1734.424560, 1501.666259, 90.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2312.566650, -1734.424560, 1501.666259, 90.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2231.150146, -1671.914672, 1506.397094, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2250.090820, -1671.914672, 1506.397094, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(970, 2236.385498, -1734.354858, 1512.776977, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	boxingint = CreateDynamicObject(970, 2240.506591, -1734.354858, 1512.776977, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	boxingint = CreateDynamicObject(970, 2244.616943, -1734.354858, 1512.776977, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	boxingint = CreateDynamicObject(970, 2248.737548, -1734.354858, 1512.776977, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2223.167968, -1703.173950, 1516.377197, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 4849, "ground3_las", "floorboard256128", 0x00000000);
	boxingint = CreateDynamicObject(19536, 2243.178710, -1734.425781, 1547.628662, 90.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 6522, "cuntclub_law2", "helipad_grey1", 0x00000000);
	boxingint = CreateDynamicObject(16151, 2237.192138, -1726.562744, 1512.604736, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 7, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	boxingint = CreateDynamicObject(1649, 2241.845947, -1725.795166, 1514.032348, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "V.I.P", 60, "Engravers MT", 70, 1, 0xFFFFFFFF, 0x00000000, 0);
	boxingint = CreateDynamicObject(1649, 2241.485595, -1734.565795, 1517.252319, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "V.I.P", 60, "Engravers MT", 70, 1, 0xFFFFFFFF, 0x00000000, 0);
	boxingint = CreateDynamicObject(19447, 2244.153808, -1739.110717, 1508.518432, 180.000000, 90.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 10412, "hotel1", "carpet_red_256", 0x00000000);
	boxingint = CreateDynamicObject(19447, 2244.153808, -1748.300781, 1508.518432, 180.000000, 90.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 10412, "hotel1", "carpet_red_256", 0x00000000);
	boxingint = CreateDynamicObject(19447, 2241.083007, -1751.610961, 1508.518432, 180.000000, 90.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(boxingint, 0, 10412, "hotel1", "carpet_red_256", 0x00000000);
	boxingint = CreateDynamicObject(19842, 2239.257812, -1764.191040, 1516.552001, 450.000000, 180.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "Are you ready?", 140, "Segoe Keycaps", 60, 1, 0xFFFFFFFF, 0x00000000, 1);
	boxingint = CreateDynamicObject(4731, 2224.351318, -1750.153808, 1517.027587, 0.000000, 0.000000, 120.400016,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "I hated every minute of training, but I said,", 120, "Ariel", 25, 1, 0xFFFFFFFF, 0x00000000, 1);
	boxingint = CreateDynamicObject(4731, 2224.338134, -1752.386840, 1515.896850, 0.000000, 0.000000, 120.400016,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "Don't quit. Suffer now and live the rest of your life", 120, "Ariel", 25, 1, 0xFFFFFFFF, 0x00000000, 1);
	boxingint = CreateDynamicObject(4731, 2224.300048, -1738.287963, 1515.926025, 0.000000, 0.000000, 120.400016,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "as a champion", 120, "Ariel", 25, 1, 0xFFFFFFFF, 0x00000000, 1);
	boxingint = CreateDynamicObject(4731, 2224.332275, -1748.586181, 1514.446777, 0.000000, 0.000000, 120.400016,-1,-1,-1,300.0);
	SetDynamicObjectMaterialText(boxingint, 0, "-Muhammad Ali-", 120, "Ariel", 25, 1, 0xFFFFFFFF, 0x00000000, 1);
	boxingint = CreateDynamicObject(8614, 2235.035888, -1735.010742, 1510.640991, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1703, 2244.177246, -1731.634399, 1512.296508, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1817, 2244.677734, -1733.635620, 1512.296508, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1703, 2240.816650, -1731.634399, 1512.296508, 0.000000, 0.000007, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1817, 2241.317138, -1733.635620, 1512.296508, 0.000000, 0.000007, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1703, 2237.185546, -1731.634399, 1512.296508, 0.000000, 0.000015, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1817, 2237.686035, -1733.635620, 1512.296508, 0.000000, 0.000015, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1703, 2247.555664, -1731.634399, 1512.296508, 0.000000, 0.000022, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1817, 2248.056152, -1733.635620, 1512.296508, 0.000000, 0.000022, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(955, 2231.577148, -1728.394897, 1512.683227, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(955, 2231.577148, -1729.695312, 1512.683227, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1557, 2242.520263, -1734.446899, 1508.567871, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1557, 2245.541503, -1734.446899, 1508.567871, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1721, 2239.855224, -1752.879394, 1508.598388, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1721, 2240.845214, -1752.879394, 1508.598388, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(1721, 2241.816162, -1752.879394, 1508.598388, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(2173, 2240.955566, -1751.764404, 1508.562988, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(2173, 2239.574707, -1751.764404, 1508.562988, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(2894, 2239.790527, -1751.652465, 1509.361328, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(2894, 2240.831054, -1751.652465, 1509.361328, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(2894, 2241.781494, -1751.652465, 1509.361328, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(14438, 2241.128662, -1743.978149, 1520.058593, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	boxingint = CreateDynamicObject(14438, 2241.308105, -1754.907958, 1520.068359, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	


	// Bank Int
	new bankinteriorr;
	bankinteriorr = CreateDynamicObject(19377, 1423.100585, -992.812744, 900.729919, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 11013, "crackdrive_sfse", "ws_asphalt2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.471557, -992.902282, 904.888610, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.791870, -993.552185, 900.729919, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -988.753784, 900.729919, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.227905, -999.256469, 904.177734, 720.000000, 630.000000, 630.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.730712, -993.157043, 900.829345, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.520507, -993.157043, 900.969482, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.260253, -993.157043, 901.119628, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -993.157043, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.227905, -985.166503, 904.237182, 540.000000, 630.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -996.744995, 900.729919, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.266235, -985.144287, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.590454, -985.132446, 901.240295, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 9920, "anotherbuildsfe", "grassgrn256", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -989.884460, 896.099975, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -995.374877, 896.099975, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.490356, -1000.162536, 901.240295, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 9920, "anotherbuildsfe", "grassgrn256", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.217895, -999.256469, 904.657226, 720.000000, 630.000000, 630.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.217895, -985.166503, 904.707092, 540.000000, 630.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.266235, -1000.114074, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.306030, -1000.094787, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.979980, -1000.557678, 903.138977, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.979980, -1000.557678, 902.818969, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -995.374877, 907.980773, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1425.037109, -989.874267, 907.980773, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1429.437377, -989.874511, 900.729919, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.707031, -985.144592, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.707031, -1000.124816, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1429.437377, -995.384826, 900.729919, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.237182, -990.046386, 898.827331, 720.000000, 720.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(968, 1420.237182, -995.166503, 898.827331, 720.000000, 720.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.969970, -984.687377, 903.138977, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1424.979980, -984.676879, 902.818969, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1419.989624, -984.778381, 900.729919, 0.000000, 0.000000, -142.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.854980, -983.175659, 900.729919, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -983.547119, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1418.236206, -1001.225036, 900.729919, 0.000000, 0.000000, -52.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.296508, -1001.345275, 900.729919, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -1002.737182, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -983.537109, 904.880493, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -993.157043, 904.880249, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.000000, -1002.737182, 904.870056, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.256225, -985.144287, 896.279907, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.256225, -985.144287, 909.819824, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1419.981689, -984.784423, 896.279724, 0.000000, 0.000000, -142.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1419.981689, -984.784423, 909.820251, 0.000000, 0.000000, -142.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.975585, -983.195678, 896.279968, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.115844, -983.195678, 909.820373, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.256225, -1000.114318, 896.279907, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.256225, -1000.114318, 909.828918, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1418.205688, -1001.185058, 896.280334, 0.000000, 0.000000, -52.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1418.205688, -1001.185058, 909.829772, 0.000000, 0.000000, -52.799942, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.225463, -1001.335266, 896.279785, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.215576, -1001.335266, 909.830078, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1421.207153, -1005.375854, 903.138977, 0.000000, 90.000000, 127.000015, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1421.207153, -1005.375854, 902.818664, 0.000000, 90.000000, 127.000015, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.169677, -1006.486999, 902.818969, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.178466, -1006.486999, 903.139282, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1413.979370, -978.026550, 903.139282, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1422.354736, -979.366271, 903.138977, 0.000000, 90.000000, 217.000015, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1422.354736, -979.366271, 902.818664, 0.000000, 90.000000, 217.000015, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1415.139404, -978.026550, 902.818969, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.446166, -996.614440, 900.729919, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.500244, -1002.737182, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.510375, -993.157043, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.510375, -983.547729, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.737426, -998.436889, 903.139282, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.446166, -980.963806, 900.729919, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19391, 1408.448852, -987.288391, 903.080261, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.446166, -994.224182, 900.729919, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.530029, -993.157043, 904.880249, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.530029, -1002.737304, 904.880249, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.530029, -983.537658, 904.880249, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.737426, -998.826782, 902.818969, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.737426, -981.255920, 902.818969, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.737426, -981.255615, 903.139282, 0.000000, 90.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.254516, -983.175659, 900.729919, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.379394, -978.026550, 903.139282, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1405.539794, -978.026550, 902.818969, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -994.525146, 896.279785, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -981.684143, 896.279785, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1404.415527, -983.195678, 896.279968, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1405.515747, -983.195678, 909.820739, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -988.064208, 909.820312, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -996.535522, 909.820312, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -1003.803955, 896.279785, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19325, 1411.610595, -999.330627, 905.846435, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, -1, "none", "none", 0xFF009999);
	bankinteriorr = CreateDynamicObject(19362, 1411.636962, -986.564697, 900.672546, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -994.954223, 901.865051, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(18762, 1408.488159, -993.492980, 903.485107, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(18762, 1408.488159, -989.342895, 903.485107, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1410.126220, -996.054626, 903.072570, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1411.636962, -994.524291, 900.652404, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1411.636962, -991.354797, 900.792480, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1411.636962, -988.375000, 900.662536, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.742187, -993.484069, 901.724914, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -991.184509, 901.584777, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.762207, -988.913635, 901.724914, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -986.613342, 901.865051, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.742187, -986.132873, 901.865051, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -991.184509, 901.864868, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1411.466796, -983.534423, 905.233154, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19325, 1411.470458, -980.219970, 901.506652, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, -1, "none", "none", 0xFF009999);
	bankinteriorr = CreateDynamicObject(19362, 1410.028076, -985.694885, 905.223205, 0.000000, 0.000000, -66.699981, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1420.296264, -985.164306, 900.729919, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1408.906738, -991.414855, 903.032531, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19391, 1407.042602, -986.427062, 902.519897, 0.000000, 0.000000, 90.200080, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19391, 1407.042602, -986.427062, 903.189941, 0.000000, 0.000000, 90.200080, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1410.077758, -985.684204, 906.293701, 0.000000, 0.000000, -66.699981, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19391, 1407.052612, -986.437011, 906.300048, 0.000000, 0.000000, 90.200080, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1408.463989, -992.815551, 896.279785, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(18762, 1419.847778, -999.083312, 903.485107, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(18762, 1419.847778, -985.382812, 903.485107, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16008, "des_n", "drvin_ground1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1411.626342, -991.334472, 909.799987, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1411.626342, -981.834533, 909.799987, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -985.177978, 903.513793, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -985.177978, 903.483764, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.147949, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.117919, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.097900, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.087890, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.077880, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.549072, -985.187988, 898.493408, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1411.676391, -991.334472, 896.259826, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1411.656372, -989.764099, 896.259826, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19325, 1411.610595, -1000.960632, 901.716735, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, -1, "none", "none", 0xFF009999);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -1003.477294, 903.784057, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -997.637939, 900.283813, 180.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.706054, -986.454101, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -993.454345, 902.005187, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -991.184326, 902.145324, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.762207, -988.914062, 902.005187, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.752197, -987.434326, 901.724914, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19834, 1411.762207, -987.434326, 902.005065, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -985.177978, 903.543823, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -985.177978, 903.563842, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19089, 1411.609130, -985.177978, 903.583862, 90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1403.726074, -988.914184, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19325, 1420.211669, -992.570617, 906.186767, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, -1, "none", "none", 0xFF009999);
	bankinteriorr = CreateDynamicObject(1538, 1425.627807, -991.418334, 900.815307, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(1538, 1425.627807, -992.828491, 900.815307, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(1538, 1425.627807, -994.258361, 900.815307, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(1538, 1425.627807, -995.658630, 900.815307, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(bankinteriorr, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1425.747802, -991.604553, 901.472778, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	bankinteriorr = CreateDynamicObject(19362, 1425.747802, -994.794494, 901.472778, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	bankinteriorr = CreateDynamicObject(1649, 1409.023315, -991.395690, 903.435363, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Bank Of LosSantos", 90, "Ariel", 23, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(1649, 1409.033325, -991.395690, 903.435363, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Bank Of LosSantos", 90, "Ariel", 23, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(1649, 1409.023315, -991.395690, 903.435363, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Bank Of LosSantos", 90, "Ariel", 23, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(1649, 1409.033325, -991.395690, 903.005432, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Save Your Money", 130, "Ariel", 20, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(1649, 1409.053344, -991.395690, 903.005432, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Save Your Money", 130, "Ariel", 20, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(1649, 1409.073364, -991.395690, 903.005432, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterialText(bankinteriorr, 0, "Save Your Money", 130, "Ariel", 20, 1, 0xE9000000, 0x00000000, 1);
	bankinteriorr = CreateDynamicObject(19377, 1394.039672, -987.116882, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1402.095581, -988.914184, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1396.627197, -981.684509, 901.949707, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1398.445190, -988.914184, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1392.576904, -986.454101, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1398.996337, -981.684509, 901.210266, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19391, 1408.388793, -987.298400, 903.080261, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.061889, -989.962280, 904.888610, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.180053, -978.246765, 897.530395, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1386.775878, -986.454101, 900.729919, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1398.996337, -972.074584, 901.210266, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.466430, -973.554626, 901.210266, 0.000000, 0.000000, 630.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1389.755981, -978.374755, 901.210266, 0.000000, 0.000000, 720.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1391.865722, -982.214843, 901.060302, 0.000000, 0.000000, 810.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1396.627197, -972.054077, 906.559570, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 6095, "shops01_law", "hotwall1_law", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.061889, -980.332641, 904.888610, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.061889, -970.712524, 904.888610, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.117797, -986.454101, 909.029357, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1396.945068, -988.914184, 908.949645, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1387.335205, -988.914184, 905.649536, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1390.885253, -993.754150, 905.649536, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1396.325439, -993.754150, 905.649536, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1394.039672, -996.726806, 901.259765, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1391.615600, -994.304504, 905.649536, 0.000000, 0.000000, 630.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(19377, 1389.305175, -984.854248, 900.729919, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00);
	SetDynamicObjectMaterial(bankinteriorr, 0, 5406, "jeffers5a_lae", "vgshopwall05_64", 0x00000000);
	bankinteriorr = CreateDynamicObject(1491, 1408.499389, -988.042419, 901.332336, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1491, 1411.640136, -997.652587, 901.292297, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1411.073730, -988.069641, 901.325683, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1411.073730, -990.009826, 901.325683, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1411.073730, -991.950012, 901.325683, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1411.073730, -993.900085, 901.325683, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1410.011718, -990.654968, 901.345703, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1410.011718, -992.745178, 901.345703, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1410.011718, -994.465209, 901.345703, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1410.011718, -988.845275, 901.345703, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1409.461181, -1000.935485, 901.345703, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1408.993041, -999.720642, 901.325683, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1410.563476, -998.570739, 901.335693, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1408.702636, -998.570739, 901.335693, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(869, 1422.925903, -988.035217, 901.735656, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(869, 1422.925903, -997.185241, 901.735656, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1703, 1419.542724, -986.558898, 901.295654, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1703, 1419.542724, -996.048828, 901.295654, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1417.282836, -983.490539, 901.325683, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1416.392578, -983.490539, 901.325683, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1415.512451, -983.490539, 901.325683, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1414.691894, -983.490539, 901.325683, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1414.691894, -1001.050292, 901.325683, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1415.492553, -1001.050292, 901.325683, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1416.282714, -1001.050292, 901.325683, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1721, 1417.042724, -1001.050292, 901.325683, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1491, 1397.369873, -986.479614, 901.324768, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(14416, 1398.582397, -980.455383, 898.128173, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1491, 1392.129394, -988.909912, 901.324768, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19303, 1396.610351, -974.486694, 898.832946, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19303, 1395.770507, -975.376831, 898.832946, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19304, 1396.600219, -975.350158, 900.695800, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -982.154479, 900.171752, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -982.154479, 899.341308, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -982.154479, 898.501220, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -981.384582, 898.501220, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -981.384582, 899.341552, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -981.384582, 900.161621, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -980.594909, 900.161621, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -980.594909, 899.351013, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2004, 1389.823242, -980.594909, 898.510620, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1550, 1394.003295, -981.833618, 897.942626, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1550, 1393.453491, -981.833618, 897.942626, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1550, 1393.453491, -981.303588, 897.942626, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1550, 1392.893676, -981.713684, 897.942626, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19786, 1396.303588, -990.363281, 903.971252, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19786, 1396.303588, -992.713317, 903.971252, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19786, 1396.303588, -992.713317, 902.721130, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(19786, 1396.303588, -990.363403, 902.721130, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1394.589843, -990.354064, 901.321228, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(2165, 1394.589843, -992.694335, 901.321228, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1393.547607, -990.974548, 901.307128, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1806, 1393.547607, -993.434570, 901.307128, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(14455, 1391.050781, -989.664489, 902.969421, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(1569, 1402.502685, -988.854431, 901.323364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(869, 1422.180175, -997.143920, 901.735656, 0.000000, 0.000000, 169.200027, -1, -1, -1, 300.00);
	bankinteriorr = CreateDynamicObject(869, 1422.302124, -988.110717, 901.735656, 0.000000, 0.000000, 164.400054, -1, -1, -1, 300.00);



	// Gang HQ Int
	new ganghqint;
	ganghqint = CreateDynamicObject(6300, 283.267211, 1577.586547, 2000.000000, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14383, "burg_1", "mp_diner_woodwall", 0x00000000);
	ganghqint = CreateDynamicObject(6300, 283.267211, 1577.586547, 2022.991333, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14415, "carter_block_2", "mp_motel_carpet1", 0x00000000);
	ganghqint = CreateDynamicObject(19786, 293.416107, 1572.537353, 2009.944946, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 10765, "airportgnd_sfse", "black64", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1568.776489, 2007.997436, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1570.766967, 2007.997436, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1572.746582, 2007.997436, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1574.746337, 2007.997436, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1574.736328, 2009.077514, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(2087, 293.615051, 1568.776000, 2009.077514, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 298.656921, 1584.982543, 2008.275878, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 299.696777, 1584.982543, 2008.275878, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 299.696777, 1584.982543, 2009.485717, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 298.666687, 1584.982543, 2009.485717, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 297.666717, 1584.982543, 2009.485717, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(1417, 297.666717, 1584.982543, 2008.265869, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(ganghqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	ganghqint = CreateDynamicObject(19461, 303.068634, 1586.221069, 2009.756347, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 298.332153, 1585.349609, 2009.756347, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 295.018920, 1581.489746, 2009.756347, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19397, 301.437164, 1581.494140, 2009.760742, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 303.068878, 1576.640625, 2009.756347, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 303.068878, 1567.029907, 2009.756347, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 303.068878, 1576.640625, 2013.226440, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 303.068878, 1567.030883, 2013.226440, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 298.228973, 1581.500610, 2013.226440, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19397, 293.407257, 1579.824584, 2009.760742, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 288.659729, 1576.244018, 2011.538330, 180.000000, 90.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 288.659729, 1565.743530, 2011.538330, 180.000000, 90.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 293.399047, 1573.440063, 2009.756347, 0.000000, -0.000007, 179.999954,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 293.399047, 1563.829345, 2009.756347, 0.000000, -0.000007, 179.999954,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 288.653472, 1562.286010, 2009.756347, -0.000007, -0.000007, -89.999961,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 298.264190, 1562.286010, 2009.756347, -0.000007, -0.000007, -89.999961,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 288.653472, 1562.286010, 2013.226440, -0.000007, -0.000007, -89.999961,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 298.263214, 1562.286010, 2013.226440, -0.000007, -0.000007, -89.999961,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 294.432220, 1586.359985, 2009.756347, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(14410, 295.783599, 1563.771972, 2008.328125, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 296.651916, 1565.808959, 2007.729736, -33.799980, -0.000007, 269.999938,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 287.023468, 1567.015380, 2013.226440, -0.000007, -0.000007, 0.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 287.023468, 1576.584838, 2016.457153, 180.000000, -0.000007, 0.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 287.023468, 1580.375610, 2013.226440, -0.000007, -0.000007, 0.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 288.678955, 1581.500610, 2013.226440, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 293.478607, 1567.883666, 2012.143920, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 293.478607, 1572.013549, 2012.143920, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 293.478607, 1576.135375, 2012.143920, 0.000007, 0.000000, 89.999977,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 293.478607, 1580.265258, 2012.143920, 0.000007, 0.000000, 89.999977,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 295.516357, 1565.813110, 2010.934204, 0.000000, -32.999992, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(970, 297.747039, 1565.813110, 2009.486328, 0.000000, -32.999992, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 279.049774, 1576.244018, 2011.538330, 0.000000, 270.000000, -90.000007,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 279.049774, 1565.743530, 2011.538330, 0.000000, 270.000000, -90.000007,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19369, 285.480560, 1571.747558, 2013.222045, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19369, 285.480560, 1575.638427, 2013.222045, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19397, 282.287139, 1571.743530, 2013.221557, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19397, 282.287139, 1575.633789, 2013.221557, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19369, 279.110717, 1571.747558, 2013.222045, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19369, 279.110717, 1575.637939, 2013.222045, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 277.593444, 1576.584838, 2016.457153, 180.000000, -0.000007, 0.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 277.593841, 1571.815551, 2011.619750, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 277.543823, 1574.845581, 2011.619750, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 281.153320, 1567.015380, 2013.226440, -0.000007, -0.000007, 0.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 276.263580, 1567.015380, 2013.226440, -0.000007, -0.000007, 90.000038,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 269.459655, 1576.244018, 2011.538330, -0.000007, 270.000000, -89.999984,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 269.459655, 1565.743530, 2011.538330, -0.000007, 270.000000, -89.999984,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 277.583374, 1579.644897, 2013.226440, -0.000007, -0.000007, 180.000030,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 274.663452, 1578.084106, 2013.226440, -0.000007, -0.000007, 270.000030,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 270.453399, 1573.254272, 2013.226440, -0.000007, -0.000007, 360.000030,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 272.031066, 1569.049560, 2013.226440, -0.000007, -0.000007, -122.300018,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 273.001220, 1576.908203, 2013.226440, -0.000007, -0.000007, -61.999958,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1846, 276.649475, 1575.916625, 2015.042846, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1846, 276.649475, 1573.146362, 2015.042846, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 279.053649, 1562.286010, 2013.226440, -0.000007, -0.000007, -89.999961,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19397, 277.597198, 1570.093627, 2013.221557, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 277.593536, 1563.743774, 2013.226440, -0.000007, -0.000007, 180.000030,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2208, 272.672576, 1573.851928, 2011.438232, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2207, 273.135833, 1571.607543, 2011.566772, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(14455, 271.298339, 1569.720214, 2013.248535, 0.000000, 0.000000, -32.400016,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(14455, 272.501800, 1567.166748, 2013.248535, 0.000000, 0.000000, -0.600021,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(14455, 270.699798, 1575.112060, 2013.271728, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2894, 272.575531, 1574.660400, 2012.314819, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19893, 272.926666, 1572.511230, 2012.337524, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1806, 271.836578, 1572.518310, 2011.603027, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1702, 273.641143, 1576.353149, 2011.588989, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1702, 275.651184, 1573.952026, 2011.588989, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1817, 274.023406, 1574.656860, 2011.591674, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1806, 271.456573, 1575.038452, 2011.603027, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2164, 276.180877, 1577.837768, 2011.623291, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 279.128997, 1581.500610, 2013.226440, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 281.128936, 1580.499633, 2013.226440, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1745, 283.432159, 1577.915771, 2011.610717, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1745, 283.432159, 1570.305053, 2011.610717, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1745, 283.432159, 1566.614624, 2011.610717, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2091, 281.411437, 1566.552001, 2011.564453, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2843, 282.474090, 1565.099609, 2011.630737, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2843, 285.114105, 1567.940429, 2011.630737, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2845, 285.010345, 1563.590698, 2011.638183, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2845, 285.010345, 1579.650024, 2011.638183, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2845, 283.150299, 1577.479980, 2011.638183, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2867, 286.349090, 1579.386474, 2011.651000, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 284.943695, 1567.742919, 2011.630859, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 282.123748, 1563.132812, 2011.630859, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2091, 281.411437, 1578.062500, 2011.564453, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 284.093658, 1580.182983, 2011.630859, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 286.333618, 1580.802978, 2011.630859, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 281.503845, 1571.735473, 2011.479614, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 281.503845, 1575.595947, 2011.479614, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19786, 277.569793, 1576.226684, 2013.885009, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19174, 272.877899, 1576.670166, 2013.704345, 0.000000, 0.000000, 28.199991,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 277.593841, 1569.315185, 2011.499633, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(640, 293.103057, 1578.725463, 2012.294921, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(640, 293.103057, 1568.515625, 2012.294921, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2400, 280.990386, 1571.158935, 2011.577514, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2400, 280.990386, 1567.459228, 2011.577514, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2043, 280.608703, 1571.241943, 2013.625610, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2043, 280.608703, 1570.511840, 2013.625610, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2043, 280.608703, 1569.721801, 2013.625610, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2043, 280.608703, 1568.882080, 2013.625610, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2043, 280.608703, 1567.861572, 2013.625610, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(355, 280.950500, 1570.780639, 2013.238525, 0.000000, 37.399997, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(356, 280.962066, 1569.861328, 2013.066528, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(356, 280.962066, 1569.861328, 2012.686157, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(356, 280.962066, 1569.861328, 2012.266601, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(351, 280.956024, 1568.425170, 2012.942260, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(351, 280.956024, 1568.425170, 2012.662353, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(351, 280.956024, 1568.425170, 2012.281982, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(353, 281.030792, 1567.616577, 2012.942749, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(353, 281.030792, 1567.616577, 2012.582641, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(353, 281.030792, 1567.616577, 2012.172607, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(355, 280.950500, 1570.832519, 2012.796142, 0.000000, 37.399997, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(355, 280.950500, 1570.771118, 2012.452758, 0.000000, 37.399997, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.243957, 1567.518554, 2011.945068, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.964111, 1567.518554, 2011.945068, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.243957, 1567.518554, 2012.585693, 0.000000, 0.000007, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.964111, 1567.518554, 2012.585693, 0.000000, 0.000007, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.153869, 1568.229370, 2011.945068, 0.000007, 0.000007, 89.999946,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.153869, 1568.949584, 2011.945068, 0.000007, 0.000007, 89.999946,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.153869, 1568.229370, 2012.585693, 0.000007, 0.000015, 89.999946,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 278.153869, 1568.949584, 2012.585693, 0.000007, 0.000015, 89.999946,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 279.733795, 1567.208374, 2011.945068, 0.000015, 0.000007, 89.999923,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 279.733795, 1567.928588, 2011.945068, 0.000015, 0.000007, 89.999923,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 279.733795, 1567.208374, 2012.585693, 0.000015, 0.000015, 89.999923,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1271, 279.733795, 1567.928588, 2012.585693, 0.000015, 0.000015, 89.999923,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1985, 290.201751, 1579.713623, 2015.125122, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2629, 287.891998, 1577.022583, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2628, 288.032806, 1579.192138, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1703, 287.737152, 1564.399047, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1703, 287.737152, 1567.279052, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2964, 291.167358, 1573.713867, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(338, 293.103210, 1573.237304, 2011.894531, 0.000000, 18.499996, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(338, 293.103210, 1573.397460, 2011.894531, 0.000000, 18.499996, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(338, 293.103210, 1573.567749, 2011.894531, 0.000000, 18.499996, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(338, 293.103210, 1573.787963, 2011.894531, 0.000000, 18.499996, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2998, 291.490203, 1573.840820, 2012.565063, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2997, 290.866882, 1573.151123, 2012.554931, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(3106, 291.046966, 1574.373901, 2012.565185, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(3003, 290.706939, 1573.304077, 2012.545166, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(336, 289.179321, 1565.978149, 2012.147583, -152.199951, 10.099999, 23.800001,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1823, 289.524963, 1564.869873, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1823, 289.524963, 1567.859985, 2011.624267, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(336, 288.796722, 1565.967773, 2012.152099, -152.199951, 10.099999, 23.800001,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(955, 291.260528, 1562.844970, 2012.014648, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1753, 297.984832, 1572.221435, 2008.034667, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1775, 292.253417, 1577.209960, 2009.103759, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1753, 297.974822, 1575.021728, 2008.034667, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1753, 295.931579, 1577.471435, 2008.034667, 0.000000, 0.000000, -36.300010,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1753, 297.556793, 1568.975341, 2008.034667, 0.000000, 0.000000, -138.800018,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1823, 297.004852, 1571.169433, 2008.023803, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1823, 297.004852, 1574.510375, 2008.023803, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1823, 296.639709, 1569.424804, 2008.023803, 0.000000, 0.000000, 129.000015,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1946, 294.584350, 1573.778076, 2008.289672, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1946, 293.944335, 1567.608032, 2008.289672, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(16151, 302.122497, 1572.785644, 2008.409667, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 285.459045, 1581.489746, 2009.756347, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 289.458923, 1579.489746, 2009.736328, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19461, 288.578979, 1576.659057, 2009.706298, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2336, 290.011871, 1579.911499, 2008.002807, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2334, 290.020660, 1578.965332, 2008.002441, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2334, 290.020660, 1578.015502, 2008.002441, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2147, 289.936248, 1577.251342, 2008.031250, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2147, 290.916259, 1577.251342, 2008.031250, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1502, 302.183746, 1581.506591, 2008.020385, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1498, 294.517486, 1582.522827, 2007.990356, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1498, 302.237548, 1562.362670, 2007.990356, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1498, 289.707550, 1562.402709, 2011.620605, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(19378, 298.359680, 1586.743896, 2011.538330, 180.000000, 90.000000, 90.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.642974, 1571.855712, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.302978, 1571.335693, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.742980, 1571.335693, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.002960, 1569.355468, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.002960, 1569.355468, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.642974, 1575.055297, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.642974, 1575.375244, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.872985, 1574.615112, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1544, 296.383026, 1574.615112, 2008.516723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 289.013732, 1568.353027, 2012.130981, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 289.013732, 1565.212768, 2012.130981, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 295.743713, 1569.573242, 2008.551147, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 289.703735, 1578.093750, 2009.071655, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 289.924133, 1578.982788, 2009.071655, 0.000000, 0.000000, 62.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(2840, 290.762939, 1578.536865, 2008.071166, 0.000000, 0.000000, 62.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1527, 298.329437, 1581.585083, 2009.831665, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1528, 302.941192, 1567.024780, 2009.902465, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	ganghqint = CreateDynamicObject(1524, 296.946868, 1581.383056, 2010.021240, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	


	// Mafia HQ Int
	new mafiahqint;
	mafiahqint = CreateDynamicObject(6300, 1913.507568, -1424.116088, 794.872375, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1928.850097, -1453.440551, 803.376342, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1930.479858, -1453.520629, 802.086608, 90.000000, 90.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1934.344482, -1427.215942, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1913.470947, -1441.895874, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1913.470947, -1432.266723, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1924.542602, -1432.330932, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.254882, -1447.050781, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1917.653198, -1447.050781, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1919.729248, -1430.713012, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1910.116943, -1430.713012, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(18762, 1914.005981, -1436.650878, 803.943603, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(18762, 1916.997802, -1436.650878, 806.248718, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(18762, 1921.987792, -1436.650878, 806.248718, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(18762, 1923.996582, -1436.650878, 803.256164, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1913.470947, -1451.518066, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1928.789916, -1451.849853, 802.086608, 90.000000, 90.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.705932, -1441.793945, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19377, 1926.651245, -1451.806396, 802.887145, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.705932, -1451.427978, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(6300, 1913.727661, -1453.656127, 814.422546, 180.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14534, "ab_wooziea", "ab_tileDiamond", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1931.455810, -1445.485229, 804.662170, 0.000000, 0.000000, 19.600002,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1930.924804, -1442.422485, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1929.919067, -1439.660522, 804.662170, 0.000000, 0.000000, 39.900005,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19392, 1926.099487, -1437.063720, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1928.745483, -1438.256835, 804.662170, 0.000000, 0.000000, 39.900005,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19392, 1934.344482, -1433.637939, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1929.473754, -1427.504760, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1928.551391, -1426.858520, 804.662170, 0.000000, 0.000000, 122.800010,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1934.344482, -1436.832031, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1934.344482, -1440.031982, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19392, 1934.344482, -1443.238037, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1939.096069, -1438.347412, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1943.856933, -1433.607910, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1943.856933, -1443.248413, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1939.096069, -1429.758178, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1939.096069, -1445.227539, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1934.344482, -1449.647583, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19392, 1931.982788, -1448.742431, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1931.986206, -1455.139892, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.121704, -1453.805664, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1930.723144, -1426.784790, 804.662170, 0.000000, 0.000000, -130.399887,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(2164, 1929.226196, -1438.684204, 802.921875, 0.000000, 0.000000, 129.899993,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(2164, 1930.348876, -1440.026977, 802.921875, 0.000000, 0.000000, 129.899993,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(mafiahqint, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(1557, 1927.979125, -1427.556884, 802.925354, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 3820, "boxhses_sfsx", "ws_wood_doors2", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1921.712158, -1447.060424, 803.645202, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1921.006225, -1446.328002, 803.645202, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1918.487915, -1447.047973, 803.538391, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1920.289916, -1447.061767, 803.645202, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1918.457763, -1446.328002, 802.823181, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1917.320556, -1446.338012, 802.823181, 90.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1917.327880, -1447.047973, 803.538391, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1915.746215, -1446.328002, 803.645202, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1916.489868, -1447.061767, 803.645202, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1915.029907, -1447.061767, 803.645202, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1916.827880, -1447.047973, 805.302917, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19443, 1919.927856, -1447.047973, 805.302917, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(14455, 1922.483764, -1446.926025, 804.505615, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(14455, 1927.439697, -1447.531860, 804.505615, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(1817, 1919.064697, -1443.588134, 802.882507, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14650, "ab_trukstpc", "mp_CJ_WOOD5", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1916.835571, -1441.729003, 802.943969, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(19929, 1915.952514, -1436.775512, 802.932983, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(mafiahqint, 1, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19929, 1918.805786, -1436.775512, 802.932983, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(mafiahqint, 1, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(19929, 1920.612060, -1436.775512, 802.932983, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(mafiahqint, 1, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1918.037963, -1441.729003, 802.943969, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1919.239257, -1441.729003, 802.943969, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1920.441284, -1441.729003, 802.943969, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1921.505126, -1441.915161, 802.953979, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1921.260131, -1441.729003, 802.933959, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1921.505126, -1443.075195, 802.943969, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1915.523071, -1442.019287, 802.953979, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1915.701538, -1441.718505, 802.933959, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(11685, 1915.523071, -1442.979248, 802.943969, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	mafiahqint = CreateDynamicObject(19327, 1918.398559, -1446.918212, 804.397644, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 10765, "airportgnd_sfse", "black64", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1915.631225, -1437.130126, 805.456787, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1915.631225, -1437.130126, 805.170166, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1917.951171, -1437.130126, 805.456787, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1920.271240, -1437.130126, 805.456787, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1922.511230, -1437.130126, 805.456787, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1917.951171, -1437.130126, 805.170227, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1920.271240, -1437.130126, 805.170227, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1922.511230, -1437.130126, 805.170227, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1914.819580, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1915.259643, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1915.699584, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1916.159545, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1916.599487, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1917.039550, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1917.519653, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1917.999755, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1918.479858, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1918.979858, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1919.459960, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1919.939941, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1920.439941, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1920.919921, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1921.399902, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1921.899902, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1922.399902, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1922.859863, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19834, 1923.319946, -1437.130126, 806.263610, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1920.380737, -1442.704467, 802.858520, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1916.915161, -1442.710693, 802.858520, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1916.361816, -1436.613647, 802.858520, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1919.847045, -1436.612182, 802.858520, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1938.587646, -1434.226684, 802.862304, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1936.811157, -1452.536621, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1929.325439, -1452.874511, 802.928039, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1929.137939, -1453.067871, 803.047119, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1928.930175, -1453.280395, 803.150390, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1928.729980, -1453.440551, 803.246215, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.745849, -1451.807983, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1931.966186, -1455.139892, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19392, 1931.962768, -1448.742431, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1927.224975, -1447.090820, 804.662170, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 15041, "bigsfsave", "AH_flroortile5", 0x00000000);
	mafiahqint = CreateDynamicObject(19363, 1938.587646, -1441.587402, 802.862304, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14500, "imm_roomss", "mp_motel_carpet", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1916.099487, -1430.733032, 803.141723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	mafiahqint = CreateDynamicObject(2164, 1929.226196, -1438.684204, 803.841796, 0.000000, 0.000000, 129.899993,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(19455, 1924.572631, -1432.330932, 804.662170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14387, "dr_gsnew", "mp_gs_wall", 0x00000000);
	mafiahqint = CreateDynamicObject(2164, 1930.348510, -1440.026611, 803.841796, 0.000000, 0.000000, 129.899993,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(14455, 1936.789550, -1438.110351, 804.505615, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	mafiahqint = CreateDynamicObject(1557, 1929.479858, -1427.556884, 802.925354, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(mafiahqint, 0, 3820, "boxhses_sfsx", "ws_wood_doors2", 0x00000000);
	mafiahqint = CreateDynamicObject(1724, 1923.504272, -1444.659790, 802.807312, 0.000000, 0.000000, 55.500000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1724, 1924.438476, -1443.557373, 802.807250, 0.000000, 0.000000, 26.879999,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1817, 1916.613159, -1443.588134, 802.882507, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1917.191040, -1443.237304, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2127, 1921.206420, -1431.272583, 802.898071, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2127, 1914.211669, -1435.659790, 802.898071, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2127, 1914.200317, -1433.685913, 802.898071, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1914.313476, -1431.697875, 802.904785, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1914.313476, -1430.710937, 802.904785, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1914.349853, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1916.323974, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1915.337158, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1917.284057, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1918.264160, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1919.264160, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2129, 1920.224243, -1431.272583, 802.904785, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2130, 1919.213745, -1431.277709, 802.912170, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2127, 1923.106445, -1431.272583, 802.898071, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2128, 1923.966186, -1431.942382, 802.898071, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2128, 1923.966186, -1432.902343, 802.898071, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2128, 1923.966186, -1433.882324, 802.898071, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2128, 1923.966186, -1434.882324, 802.898071, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2128, 1923.966186, -1435.882324, 802.898071, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2124, 1919.850097, -1434.060668, 803.764587, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2124, 1918.468750, -1434.799682, 803.764587, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2029, 1917.818481, -1434.029418, 802.940429, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2124, 1918.411621, -1433.133544, 803.764587, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2124, 1916.938964, -1433.980834, 803.764587, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1491, 1934.360595, -1434.378540, 802.943176, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1491, 1925.327880, -1437.028320, 802.943176, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1491, 1934.340576, -1443.978759, 802.943176, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1491, 1932.015869, -1449.481689, 802.943176, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2204, 1932.365722, -1428.319458, 802.909362, 0.000000, 0.000000, -39.899978,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2204, 1932.365722, -1428.319458, 803.629333, 0.000000, 0.000000, -39.899978,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(3130, 1914.541625, -1446.679443, 802.765869, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19173, 1913.598754, -1441.865356, 805.085693, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2165, 1927.165161, -1441.046020, 802.925170, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2000, 1927.211181, -1440.280395, 802.942871, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1715, 1925.888061, -1441.631958, 802.927062, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1822, 1924.583740, -1445.408081, 802.909240, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1828, 1925.244873, -1444.919555, 802.922241, 0.000000, 0.000000, 41.700000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2894, 1925.008666, -1444.967651, 803.406494, 0.000000, 0.000000, 53.279998,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1919.288330, -1442.936889, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1919.788208, -1442.953491, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1920.125000, -1443.211547, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1919.562500, -1443.258544, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1919.821899, -1443.238281, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1917.563110, -1443.001342, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1917.486328, -1442.786621, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1917.030883, -1442.827148, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1916.651367, -1442.829101, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1916.583618, -1443.164794, 803.352722, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2125, 1920.470336, -1437.750610, 803.216979, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2125, 1919.010253, -1437.750610, 803.216979, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2125, 1917.530273, -1437.750610, 803.216979, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2125, 1916.130249, -1437.750610, 803.216979, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19327, 1917.781860, -1446.237060, 803.345520, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1917.729614, -1436.859375, 803.846801, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1916.827880, -1436.820556, 803.846801, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1919.134765, -1436.891845, 803.846801, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1544, 1920.385986, -1436.880615, 803.846801, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2563, 1941.300659, -1432.890747, 802.863891, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2385, 1937.998413, -1429.853027, 802.931762, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2394, 1940.843261, -1430.422851, 803.615173, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2372, 1941.411010, -1430.195678, 802.909301, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2394, 1940.743286, -1430.422851, 803.608093, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1939.295776, -1430.107299, 803.089843, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1939.295776, -1430.107299, 803.528930, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1939.295776, -1430.107299, 803.968017, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1938.575805, -1430.107299, 803.529296, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1938.575805, -1430.107299, 803.968017, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2386, 1938.575805, -1430.107299, 803.089782, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2573, 1935.070800, -1430.251342, 802.903869, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2562, 1934.918457, -1437.870727, 802.874206, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19787, 1934.386840, -1436.247680, 804.574462, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2565, 1941.276123, -1439.661743, 803.347900, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2576, 1935.978027, -1438.841064, 802.902526, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19787, 1934.386840, -1441.027709, 804.574523, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2372, 1939.711059, -1444.355346, 802.909301, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2394, 1939.064941, -1444.572998, 803.608093, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1649, 1928.095703, -1451.891357, 804.515319, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1649, 1930.418945, -1454.969482, 804.515319, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2528, 1928.250366, -1448.293823, 802.944824, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2834, 1928.987182, -1428.598388, 802.948303, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2964, 1926.494262, -1431.044677, 802.837280, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2995, 1926.543457, -1430.845581, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2995, 1926.197998, -1430.368530, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2996, 1926.027343, -1431.414672, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2997, 1926.745239, -1431.429077, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2998, 1926.901367, -1430.399536, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2999, 1926.927734, -1430.815917, 803.766784, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(3004, 1924.718383, -1432.099731, 802.853271, 89.980003, -3.700000, -68.400001,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(3004, 1924.718383, -1432.219726, 802.853271, 89.980003, -3.700000, -68.400001,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1649, 1930.418945, -1454.969482, 804.515319, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(1649, 1928.095703, -1451.891357, 804.515319, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19842, 1924.656982, -1464.348510, 803.572448, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2230, 1919.635253, -1446.981201, 803.573181, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(2230, 1916.554687, -1446.981201, 803.573181, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	mafiahqint = CreateDynamicObject(19172, 1934.246093, -1437.177001, 804.933105, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	


	// House Int 1
	new interiorperhouse;
	interiorperhouse = CreateDynamicObject(6300, 1461.587280, -1946.458251, 900.481323, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.588623, -1943.649047, 910.253723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1476.928955, -1942.118164, 910.253723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1472.259033, -1943.969238, 910.253723, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1472.259887, -1950.388305, 910.258666, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.588623, -1956.428710, 910.253723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1480.303100, -1956.213134, 910.255065, 0.000000, 0.000000, -54.099983,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1474.309936, -1957.278320, 910.258666, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1469.809936, -1953.567626, 910.258666, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1477.495239, -1957.208374, 910.255065, 0.000000, 0.000000, -87.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.508666, -1951.909545, 910.253723, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(6300, 1461.877563, -1974.268188, 920.011352, 180.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14735, "newcrak", "carpet-tile", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1476.928955, -1942.138183, 907.053100, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1476.928955, -1942.138183, 913.443420, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.568603, -1944.459350, 907.043823, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.568603, -1943.138549, 913.444091, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1472.298583, -1944.838867, 907.053100, 0.000007, -0.000007, 179.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1472.298583, -1947.179443, 913.443420, 0.000007, -0.000007, 179.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1472.298583, -1937.689453, 913.443420, 0.000007, -0.000007, 179.999908,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1472.279907, -1950.328247, 907.028503, 180.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.568603, -1955.570068, 907.043823, 0.000000, 0.000015, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.568603, -1952.639770, 913.444091, 0.000000, 0.000015, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1480.285522, -1956.188842, 907.044860, 0.000000, 0.000000, -54.099983,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1480.285522, -1956.188842, 913.444946, 0.000000, 0.000000, -54.099983,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1475.161865, -1941.614013, 910.253723, 0.000000, 0.000000, 142.899978,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1478.797729, -1941.246582, 910.253723, 0.000000, 0.000000, -145.000106,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1475.169799, -1941.619995, 907.043334, 0.000000, 0.000000, 142.899978,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1475.169799, -1941.619995, 913.443115, 0.000000, 0.000000, 142.899978,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1478.781372, -1941.258056, 907.053527, 0.000000, 0.000000, -145.000106,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1478.781372, -1941.258056, 913.443664, 0.000000, 0.000000, -145.000106,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1477.393920, -1957.182739, 907.044921, 0.000000, 0.000000, -87.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1474.259887, -1957.248291, 907.049072, 180.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1470.988647, -1957.251342, 913.444091, 0.000000, 0.000015, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1477.393920, -1957.182739, 913.445312, 0.000000, 0.000000, -87.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.938354, -1957.281616, 910.253723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1473.083740, -1958.912475, 910.255065, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1472.271240, -1961.776367, 910.255065, 0.000000, 0.000000, -34.499950,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.628173, -1963.071533, 910.253723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.417236, -1967.710937, 910.253723, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1477.376098, -1967.982177, 910.253723, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1475.881835, -1958.789794, 910.255065, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1476.661499, -1961.790893, 910.255065, 0.000000, 0.000000, 26.600053,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.907714, -1971.319335, 910.253723, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1475.996948, -1969.084716, 910.253723, 0.000000, 0.000000, -62.400009,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1474.259887, -1957.318359, 907.049072, 180.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.918457, -1971.282348, 907.083007, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1474.259887, -1957.318359, 907.049072, 180.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1475.851806, -1958.791259, 907.065002, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1475.859008, -1958.941528, 913.445251, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1476.630371, -1961.795532, 907.064758, 0.000000, 0.000000, 26.600053,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1476.630371, -1961.795532, 913.445129, 0.000000, 0.000000, 26.600053,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1477.356079, -1967.982177, 913.393066, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(14455, 1477.134521, -1967.803344, 910.084472, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(14455, 1477.134521, -1967.883422, 910.084472, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(14455, 1472.614379, -1970.807373, 910.084472, 0.000000, 0.000000, 27.900012,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(14455, 1472.693725, -1970.765380, 910.084472, 0.000000, 0.000000, 27.900012,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1473.104736, -1958.910522, 907.065002, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1473.104858, -1958.909912, 913.445312, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1472.296142, -1961.793212, 907.074768, 0.000000, 0.000000, -34.499950,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1472.296142, -1961.793212, 913.444519, 0.000000, 0.000000, -34.499950,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.668212, -1963.101562, 907.083190, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.668212, -1963.101562, 913.443481, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1466.958496, -1971.302124, 913.443481, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.628662, -1955.568115, 910.253723, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.628662, -1944.459838, 909.273803, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1486.468383, -1947.117919, 910.253723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1488.338623, -1951.808349, 910.253723, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1481.589965, -1950.037963, 910.258666, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1486.357055, -1953.589233, 910.253723, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1481.628662, -1945.936767, 912.734130, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14702, "masmall3int2", "HS3_wall6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1468.748413, -1957.251342, 907.063964, 0.000000, 0.000015, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1469.791259, -1955.933227, 910.255065, 0.000000, 0.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1470.501586, -1956.578002, 910.255065, 0.000000, 0.000000, 26.100046,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1470.590698, -1956.646240, 907.064575, 0.000000, 0.000000, 26.100046,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1470.572631, -1956.655029, 913.445068, 0.000000, 0.000000, 26.100046,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1469.839965, -1953.617675, 907.058349, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1469.839965, -1953.617675, 913.449096, 180.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1470.988647, -1957.321411, 913.444091, 0.000000, 0.000015, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1474.289916, -1957.318359, 907.059082, 180.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19390, 1469.759887, -1953.587646, 910.258666, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.997680, -1951.969604, 910.253723, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1465.098510, -1956.620971, 910.253723, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.668334, -1956.801513, 910.253723, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.988403, -1953.711181, 908.473510, 180.000000, 90.000000, 450.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.988403, -1957.201049, 908.473510, 180.000000, 90.000000, 450.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14387, "dr_gsnew", "AH_flroortile12", 0x00000000);
	interiorperhouse = CreateDynamicObject(1499, 1481.563232, -1949.263427, 908.502563, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1499, 1473.532470, -1957.253295, 908.502563, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1499, 1469.832641, -1952.833374, 908.502563, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1499, 1472.263427, -1951.122924, 908.502563, 0.000000, 0.000000, 450.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.558715, -1951.929565, 907.033142, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.558715, -1951.929565, 913.443054, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1557, 1475.520629, -1942.225097, 908.450683, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 3820, "boxhses_sfsx", "ws_wood_doors2", 0x00000000);
	interiorperhouse = CreateDynamicObject(1557, 1478.540649, -1942.225097, 908.450683, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 3820, "boxhses_sfsx", "ws_wood_doors2", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.508178, -1943.969238, 910.253723, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.806396, -1947.109375, 910.253723, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "ws_whiteplaster_top", 0x00000000);
	interiorperhouse = CreateDynamicObject(2131, 1465.038208, -1951.546630, 908.369323, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1471.307983, -1944.241699, 908.503967, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1469.997802, -1944.241699, 908.503967, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1468.667846, -1944.241699, 908.503967, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1467.367797, -1944.241699, 908.503967, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1466.057617, -1944.241699, 908.503967, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1465.228515, -1945.062011, 908.503967, 0.000000, 0.000000, 53.900024,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1464.907226, -1946.271606, 908.503967, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1464.897216, -1947.631713, 908.503967, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2153, 1464.779296, -1948.285400, 908.448303, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2153, 1464.779296, -1948.915893, 908.448303, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2153, 1464.779296, -1949.565917, 908.448303, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(19377, 1466.980224, -1947.162597, 908.472778, 0.000000, 90.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 4830, "airport2", "bathtile01_int", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1464.826416, -1943.309570, 908.983337, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	interiorperhouse = CreateDynamicObject(19453, 1467.437377, -1943.999511, 908.983337, 0.000000, 0.000000, 450.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 7088, "casinoshops1", "fakestone1_LA", 0x00000000);
	interiorperhouse = CreateDynamicObject(2151, 1464.871337, -1944.567260, 908.503967, 0.000000, 0.000000, 53.900024,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2123, 1468.625610, -1948.621826, 909.133117, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2123, 1470.295898, -1947.751342, 909.133117, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2123, 1468.735473, -1947.201293, 909.133117, 0.000000, 0.000000, 450.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2123, 1467.715087, -1947.661254, 909.133117, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2131, 1469.118652, -1951.336425, 908.549499, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0x00000000);
	interiorperhouse = CreateDynamicObject(2087, 1472.492187, -1947.035278, 908.536010, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2087, 1472.492187, -1949.025512, 908.536010, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2087, 1472.492187, -1949.025512, 909.636047, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2087, 1472.492187, -1947.035400, 909.636047, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2307, 1479.384887, -1944.685058, 908.536010, 0.000000, 0.000000, -54.700008,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2164, 1481.111572, -1955.512084, 908.536010, 0.000000, 0.000000, -144.100158,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2164, 1480.058349, -1956.274169, 908.536010, 0.000000, 0.000000, -144.100158,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2164, 1480.058349, -1956.274169, 909.405761, 0.000000, 0.000000, -144.100158,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2164, 1481.111572, -1955.512084, 909.405700, 0.000000, 0.000000, -144.100158,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 2, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2307, 1478.511596, -1943.452392, 908.536010, 0.000000, 0.000000, -54.700008,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(638, 1473.919677, -1943.989868, 909.196411, 0.000000, 0.000000, -34.800006,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19786, 1464.461669, -1967.240478, 910.475952, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 10765, "airportgnd_sfse", "black64", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	interiorperhouse = CreateDynamicObject(2290, 1470.325317, -1965.974121, 908.536010, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2290, 1467.014648, -1964.442749, 908.536010, 0.000000, 0.000000, 360.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(2290, 1469.005615, -1969.543090, 908.536010, 0.000000, 0.000000, 540.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 5986, "chateau_lawn", "chatwall01_law", 0x00000000);
	SetDynamicObjectMaterial(interiorperhouse, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1817, 1467.134155, -1966.429931, 908.536010, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1817, 1469.434326, -1967.740966, 908.536010, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(1817, 1468.084228, -1967.680908, 908.536010, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1478.320556, -1948.843872, 908.484985, 0.000000, 90.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14853, "gen_pol_vegas", "grey_carpet_256", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1474.873901, -1948.994628, 908.484985, 0.000000, 90.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14853, "gen_pol_vegas", "grey_carpet_256", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1475.012329, -1952.171630, 908.484985, 0.000000, 90.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14853, "gen_pol_vegas", "grey_carpet_256", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1478.438842, -1952.022583, 908.484985, 0.000000, 90.000000, 2.500045,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14853, "gen_pol_vegas", "grey_carpet_256", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1471.864624, -1965.833618, 908.484985, 0.000000, 90.000015, -0.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14706, "labig2int2", "whitecarpet01", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1468.414916, -1965.803833, 908.484985, 0.000000, 90.000015, -0.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14706, "labig2int2", "whitecarpet01", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1468.386840, -1968.983642, 908.484985, 0.000000, 90.000015, -0.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14706, "labig2int2", "whitecarpet01", 0x00000000);
	interiorperhouse = CreateDynamicObject(19361, 1471.816528, -1969.014160, 908.484985, 0.000000, 90.000015, -0.499954,-1,-1,-1,300.0);
	SetDynamicObjectMaterial(interiorperhouse, 0, 14706, "labig2int2", "whitecarpet01", 0x00000000);
	interiorperhouse = CreateDynamicObject(2525, 1466.640136, -1952.545410, 908.547851, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2519, 1466.555297, -1956.105346, 908.523254, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2523, 1465.239379, -1954.185913, 908.563110, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(1737, 1468.247924, -1947.650512, 908.533630, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2562, 1483.871215, -1947.708007, 908.536010, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2563, 1486.671875, -1951.025390, 908.536010, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2570, 1487.744018, -1949.121459, 908.536010, 0.000000, 0.000000, 270.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2845, 1482.453002, -1952.825805, 908.566040, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(19172, 1477.031982, -1957.124877, 910.506042, 0.000000, 0.000000, -177.699935,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2001, 1481.020751, -1948.095092, 908.536010, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2001, 1481.020751, -1951.765380, 908.536010, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2240, 1471.410888, -1956.432617, 909.096435, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2251, 1475.073486, -1942.605468, 909.366088, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2964, 1478.510131, -1952.730590, 908.495971, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(338, 1479.442626, -1952.248779, 908.536010, 12.599997, 0.000000, -110.300018,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(338, 1479.440185, -1952.621459, 908.564514, 12.599997, 0.000000, -110.300018,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2998, 1478.359252, -1953.159545, 909.436157, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(1703, 1478.026611, -1956.507690, 908.536010, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2230, 1464.436401, -1968.918945, 909.836120, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2230, 1464.436401, -1964.977661, 909.836120, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2288, 1469.904296, -1970.717773, 910.316101, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2270, 1468.355224, -1970.723144, 909.855773, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2271, 1467.052978, -1970.718261, 910.375976, 0.000000, 0.000000, 180.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2257, 1468.042968, -1963.186767, 910.356018, 0.000000, 0.000000, 0.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2258, 1472.487304, -1961.697631, 910.366149, 0.000000, 0.399999, 56.200019,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(2313, 1464.971313, -1967.905395, 908.536010, 0.000000, 0.000000, 90.000000,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(1829, 1465.087646, -1963.664062, 908.936096, 0.000000, 0.000000, 24.299989,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(1724, 1474.502197, -1967.742675, 908.475952, 0.000000, 0.000000, 122.399993,-1,-1,-1,300.0);
	interiorperhouse = CreateDynamicObject(1724, 1473.937988, -1966.295043, 908.475952, 0.000000, 0.000000, 60.999977,-1,-1,-1,300.0);
	return 1;
}