function scr_Room_Change_Variables() {
	global.soulstrengthTemp = 0;
	global.soulvitalityTemp = 0;
	global.soulessenceTemp = 0;
	global.souldexterityTemp = 0;
	global.soulperceptionTemp = 0;
	global.soulstateTemp = 0;
	global.soulhopeTemp = 0;
	global.soulblissTemp = 0;
	global.soulvanityTemp = 0;
	global.soulloathingTemp = 0;
	global.soulparanoiaTemp = 0;
	global.souldespairTemp = 0;

	global.instanceidincrementer = 1;
	global.roomtime = 0;
	global.soulNoShoot = 0;
	global.healthungen = 1;
	
	global.temperActive = false;

	global.B11Count = 2 + global.B[11];
	
	global.C01Boost = 0;

	global.roomdarkness = 0;

	//scr_V03();
	scr_P02();
	scr_L01_Recharge();
	scr_W05_Reload();
	
	global.OC4Debuff = 0;


}
