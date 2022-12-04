function scr_H07() {
	// Location: scr_Boss_Beat

	if global.totalhearts > 0 {
		for (i = 0; i < 15; i++) {
		    if (Soul_Hearts_Control.heart[i,2] = 7) {
		        Soul_Hearts_Control.heart[i,3] += 10 * global.soulheartboost;
		    }
		}

		obj_Soul_Parent.shealth = Soul_Hearts_Control.heart[global.currentheart,3];
		obj_Soul_Parent.smaxhealth = Soul_Hearts_Control.heart[global.currentheart,4]; 
	}


}
