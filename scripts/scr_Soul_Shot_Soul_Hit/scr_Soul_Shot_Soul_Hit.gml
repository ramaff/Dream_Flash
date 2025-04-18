// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Soul_Hit(){

	if shot_stats.Shot_Damage {
		if shot_stats.Shot_Healing = 1 {
			other.shealth += shot_stats.Shot_Power / 60;

			if shothealemit = 0 {
				var valdis = shot_stats.Shot_Power * shot_stats.Shot_Life_Span / 60;

				scr_setup_dmg_indicator(x,y, valdis, c_fuchsia)
				shothealemit = 1;
			}
		}
	
	}

}