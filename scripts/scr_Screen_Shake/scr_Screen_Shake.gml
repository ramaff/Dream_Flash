function scr_Screen_Shake(sstr, stime) {
	if global.gameScreenShake > 0 {
		with instance_create(x,y, obj_Screen_Shake) {
			shakeLife = stime;
			alarm[0] = shakeLife;
			shakeStrength = sstr * global.gameScreenShake;
		}
	}


}
