// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Minion_Follow_Adjust(){
	if object_index = obj_Turret_Soul || object_index = obj_Bullet_Eater {
		exit;
	}
	if !instance_exists(followtarget) || followtarget = noone {
		var followtar = obj_Soul_Parent.id
		with (obj_Soul_Minion_Parent) {
			if object_index != obj_Turret_Soul || object_index != obj_Bullet_Eater {
				followtarget = followtar
				followtar = id	
			}
		}
		with (obj_Figment_Parent) {
			if object_index != obj_Turret_Soul || object_index != obj_Bullet_Eater {
				followtarget = followtar
				followtar = id	
			}
		}
		//followtarget = followtar
	}
}