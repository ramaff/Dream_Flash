function scr_Screen_Shake(sstr, stime) {
	if global.gameScreenShake > 0 {
		with instance_create_depth(x,y,0, obj_Screen_Shake) {
			shakeLife = stime;
			alarm[0] = shakeLife;
			shakeStrength = sstr * global.gameScreenShake;
		}
	}


}
