function scr_C05() {
	// Location Soul Hit by Bullet Event

	if global.C[5] > 0 {

	    var val = 1 + irandom(2 * global.C[5]) + irandom(40);
    
	    if val >= 40
		with (obj_Boss_Parent) {
		    if distance_to_object(other) < 145 {
	        
				var max_streaks = 30;
				var xst = x;
				var yst = y;
				var streak_length = 64;
				var streak_target = other.id;
				var chain_damage = 4;
				var streak_color = make_color_rgb(255, 200, 200);
				var chains = 1;
				var chain_range = 300;
				
				scr_Damage_Indicator(0, chain_damage, 1)
				
				bosshealth -= chain_damage;
			
				scr_Lightning_To_Target(spr_Lightning_Streak, other.x, other.y, x, y, max_streaks, streak_length, streak_color)
	
				//scr_Shot_Lightning_Chain(max_streaks, streak_target, chains, xst, yst, streak_length, chain_damage, streak_color, chain_range)
			
				scr_Refresh_Soul(2)
			
				//scr_Essence_Attack_Field();
		    }
		}

	}



}
