function scr_Soul_Status_Step() {
	soulfreezetime--;
	soulstuntime--;
	soulsleeptime--;

	if soulstun != 0 and soulstuntime <= 0 {
	    soulstun = 0;
	}
	if soulsleep != 0 and soulsleeptime <= 0 {
	    soulsleep = 0;
	}

	if TPCooldown > 0 {

		TPCooldown--;
	}

	if TPCooldown <= 0 {
		TPCooldown = 0;
		perX = x;
		perY = y;
	}


}
