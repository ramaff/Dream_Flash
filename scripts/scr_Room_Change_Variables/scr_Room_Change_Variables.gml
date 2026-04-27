function scr_Room_Change_Variables() {
	global.soulstrengthTemp = 0;
	global.soulvitalityTemp = 0;
	global.soulessenceTemp = 0;
	global.souldexterityTemp = 0;
	global.soulperceptionTemp = 0;
	global.soulstateTemp = 0;
	global.soulhopeTemp = 0;
	global.soulblissTemp = 0;
	global.soulassuranceTemp = 0;
	global.soulloathingTemp = 0;
	global.soulparanoiaTemp = 0;
	global.souldespairTemp = 0;

	global.instanceidincrementer = 1;
	global.roomtime = 0;
	global.soulNoShoot = 0;
	global.healthungen = 1;
	
	global.C01Boost = 0;
	global.C08Activated = false;

	global.roomdarkness = 0;

	//scr_V03();
	//scr_P02();
	scr_L01_Recharge();
	scr_W05_Reload();
	
	if global.OC4Debuff > 0 {
		global.OC4Debuff = 0;
		obj_Soul_Parent.ssize += 0.2 + (0.2 * global.OC[4]);
		obj_Soul_Parent.sshotsizefactor += 0.2 * global.OC[4];
		obj_Soul_Parent.spowerfactor += 3 * global.OC[4];
	}


}
