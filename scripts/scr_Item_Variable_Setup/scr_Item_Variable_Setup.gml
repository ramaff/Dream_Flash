function scr_Item_Variable_Setup() {
	
	scr_Item_Pools();
	
	/// state prog variables actually set up in soul stat control, the ones below are doing literally nothing.
	
	global.instanceidincrementer = 1;
	global.currentheartsurvival = 0;
	
	global.snakeprogress = 0;
	global.beastprogress = 0;
	global.spikeprogress = 0;
	global.castingprogress = 0;
	global.mechprogress = 0;
	
	global.turretSpawnTime = 120;
	
	global.OA5rooms = [];
	for(var i = 0; i <= 39; i++) {
		global.OA5rooms[i] = [];
	}
	
	global.gembeam_hits = ds_list_create();
	
	global.H5timer = 0;
	global.D14Trigger = 0;
	
	global.essencebeamsize = 0;
	global.essencebeamtime = 0;
	
	global.B06HeartConversions = 0;
	
	global.C01Boost = 0;
	
	global.V2activate = 0
	global.V7mindblow = 0;

	global.D10activate = 0;

	global.U03boost = 0;
	global.U03_direction = 0;

	global.P02status = 0;

	global.B11Count = 2 + global.B[11];
	
	global.A07memory = 0;
	
	global.H06refill = 0;
	
	global.V06Overwhelm = 0;
	
	global.C11Overflow = 0;
	
	global.SpikeExtra = 0;
	
	global.Q3count = 0;
	global.clarityBomb = 0;
	
	global.OC4Debuff = false;
	
	global.temperCharge = 0;
	global.temperActive = false;
	
	global.XB4Dir = 0;
	
	global.downwardSpiralBoost = 0;
	global.Tunnel_Vision_Angle = 0;
	
	global.trailing_off = 0;
	global.no_brainer = 0;
	
	var i = 0;
	for(i = 0; i < 9; i++) {
		global.L01essence[i] = 50 * global.L[1];
	}


}
