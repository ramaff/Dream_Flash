function scr_D10_Shot_Mod(_current_weapon_stats = current_weapon_stats) {
	// Location: Extra Shot Stats

	if global.D[10] >= 1 {

		_current_weapon_stats.Shot_Power = _current_weapon_stats.Shot_Power * 0.6;
		_current_weapon_stats.Shot_Size = _current_weapon_stats.Shot_Size * 0.85;
	}



}
