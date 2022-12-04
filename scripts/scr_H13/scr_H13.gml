function scr_H13() {
	// Location: Soul Step Check

	if global.totalhearts > 0 {
	if Soul_Hearts_Control.heart[global.currentheart, 2] = 13 {
	    sdelayregenfactor = sdelayregenfactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart, 4] + smaxhealth) / (Soul_Hearts_Control.heart[global.currentheart, 3] + smaxhealth));
	    smovefactor = smovefactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart, 4] + (smaxhealth * 2)) / (Soul_Hearts_Control.heart[global.currentheart, 3] + (smaxhealth * 2)));
		energyregenfactor = energyregenfactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart, 4] + (smaxhealth * 2)) / (Soul_Hearts_Control.heart[global.currentheart, 3] + (smaxhealth * 2)));
	}
	}


}
