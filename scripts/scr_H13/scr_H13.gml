function scr_H13() {
	// Location: Soul Step Check

	if global.currentheart > 0 {
		if global.currenthearttype = 13 {
			sdelayregenfactor = sdelayregenfactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart].max_health + smaxhealth) / (Soul_Hearts_Control.heart[global.currentheart].health + smaxhealth));
			smovefactor = smovefactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart].max_health + (smaxhealth * 2)) / (Soul_Hearts_Control.heart[global.currentheart].health + (smaxhealth * 2)));
			senergyregenfactor = senergyregenfactor * global.soulheartboost * ((Soul_Hearts_Control.heart[global.currentheart].max_health + (smaxhealth * 2)) / (Soul_Hearts_Control.heart[global.currentheart].health + (smaxhealth * 2)));
		}
	}


}
