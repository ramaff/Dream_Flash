function scr_Soul_Status_Step() {

	if TPCooldown > 0 {

		TPCooldown--;
	}

	if TPCooldown <= 0 {
		TPCooldown = 0;
		perX = x;
		perY = y;
	}
	
	sNoHitTime++;

	if sWindGustTime > 0 {
	    sWindGustTime--;
	}
	if senergy <= 0 {
		sWeaponOvertimeTick = 1;
	}
	if sWeaponOvertimeTick > 0 {
		sWeaponOvertime++;
	}


}
