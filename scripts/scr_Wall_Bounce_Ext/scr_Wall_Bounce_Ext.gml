function scr_Wall_Bounce_Ext() {
	var _hor_bounce = scr_Generic_Outside_Check(0, hspeed, 0)
	var _ver_bounce = scr_Generic_Outside_Check(0, vspeed, 0)

	if _hor_bounce {
		hspeed = -hspeed
		shot_stats.Shot_ID_Offset++;
		scr_Keep_In_Room()
	}
	if _ver_bounce {
		vspeed = -vspeed
		shot_stats.Shot_ID_Offset++;
		scr_Keep_In_Room()
	}

}
