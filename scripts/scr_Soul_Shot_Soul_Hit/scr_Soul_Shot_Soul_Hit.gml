// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Soul_Hit(){

	if other.shot_stats.Shot_Damage {
		if other.shot_stats.Shot_Healing = 1 {
			shealth += other.shot_stats.Shot_Power / 60;

			if other.shothealemit = 0 {
				var valdis = other.shot_stats.Shot_Power * other.shot_stats.Shot_Life_Span / 60;

				scr_setup_dmg_indicator(other.x,other.y, valdis, c_fuchsia)
				other.shothealemit = 1;
			}
		}
	
	}

}