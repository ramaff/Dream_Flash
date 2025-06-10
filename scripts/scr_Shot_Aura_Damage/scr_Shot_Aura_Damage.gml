// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Aura_Damage(){
	if instance_exists(obj_Boss_Parent) {
		with(obj_Boss_Parent) {
			if distance_to_object(other) <= other.shot_stats.Shot_Aura_Range {
				dmg = other.shot_stats.Shot_Aura_Power / 60;
				bosshealth -= dmg;
			}
		}
	}
}