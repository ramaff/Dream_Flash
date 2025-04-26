function scr_Soul_Status_Step() {

	if TPCooldown > 0 {

		TPCooldown--;
	}

	if TPCooldown <= 0 {
		TPCooldown = 0;
		perX = x;
		perY = y;
	}


}
