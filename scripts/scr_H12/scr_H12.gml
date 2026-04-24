// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H12(){

	if senergy >= 100 {
		with (obj_Boss_Parent) {
	        
			var max_streaks = 30;
			var xst = x;
			var yst = y;
			var streak_length = 64;
			var streak_target = other.id;
			var chain_damage = 10;
			var streak_color = make_color_rgb(255, 255, 200);
			var chains = 1;
			var chain_range = 1000;
				
			scr_setup_dmg_indicator(x,y, chain_damage, c_white);
				
			bosshealth -= chain_damage;
			
			scr_Lightning_To_Target(spr_Lightning_Streak, x, y - 700, x, y, max_streaks, streak_length, streak_color)
	
			scr_Refresh_Soul(-10)
		}

	}

}