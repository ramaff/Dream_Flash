// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_single_instance_weapon_active(_c_wp){
	var _single_instance_active = false;
	var _single_instance_object = noone;

	if _c_wp = 601 {
		_single_instance_object = obj_Healing_Essence
	}
	if _c_wp = 603 {
		_single_instance_object = obj_Umbrella_Shot
	}
	if _c_wp = 604 {
		_single_instance_object = obj_Bounce_Ball
	}
	
	if instance_exists(_single_instance_object) {
		with (_single_instance_object) {
			if shot_stats.Shot_Follow_Origin = other.id {
				_single_instance_active = true;
			}
		}
	}
	
	return _single_instance_active
}