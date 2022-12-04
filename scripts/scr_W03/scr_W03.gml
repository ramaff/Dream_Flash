function scr_W03() {
	// Teleport After Position Change

	if global.W[3] > 0 {

		var hamount = (1 + global.W[3] * 2) * (1 + global.teleportboost);
	
		scr_Heal_Soul(hamount);

	}


}
