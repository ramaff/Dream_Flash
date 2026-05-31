// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Aura_Damage(){
	if instance_exists(obj_Boss_Parent) {
		var _range = shot_stats.Shot_Aura_Range
		var _pow = shot_stats.Shot_Aura_Power / 60
		with(obj_Boss_Parent) {
			if distance_to_object(other) <= _range {
				bosshealth -= _pow;
				if global.roomtime mod 10 = 0 {
					scr_setup_dmg_indicator(x,y, _pow * 10, c_white);
				}
			}
		}
	}
}