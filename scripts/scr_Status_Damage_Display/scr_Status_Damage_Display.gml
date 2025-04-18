function scr_Status_Damage_Display(_dmg) {

	var _xx = x - 3 + random(6);
	var _yy = y - 23 + random(6);

	if global.gameDamageDisplay != 0 {
		scr_setup_dmg_indicator(_xx,_yy, _dmg, c_white);
	}



}
