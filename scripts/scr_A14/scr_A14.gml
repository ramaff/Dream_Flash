function scr_A14() {
	// Location Shot Step Event
	
	var _dmg = (global.A[14]) * shot_stats.Shot_Power / 62.5;
	//if asset
	var _size = 10 * sqrt(sqrt(sprite_get_width(sprite_index) * sprite_get_height(sprite_index))) * shot_stats.Shot_Size
	if global.A[14] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent and object_index != obj_Defense_Soul_Shot {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= _size {
	            bosshealth -= _dmg;
	        }
	    }
	}



}
