// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_umbrella_active(_c_wp){
	var _umbrella_active = false;
	
	if _c_wp = 603 and instance_exists(obj_Umbrella_Shot) {
		with (obj_Umbrella_Shot) {
			if shot_stats.Shot_Follow_Origin = other.id {
				_umbrella_active = true;
			}
		}
	}
	
	return _umbrella_active
}