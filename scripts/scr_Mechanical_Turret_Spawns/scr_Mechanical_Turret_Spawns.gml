// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mechanical_Turret_Spawns(){
	if obj_Soul_Parent.scurrentstate == "Mechanical" {
		global.turretSpawnTime--;
	} else if (global.F[5] >= 1 and obj_Soul_Parent.stransformedstate == "Mechanical") {
		global.turretSpawnTime -= 0.15 * global.F[5];
	}
	
	if (obj_Soul_Parent.scurrentstate == "Mechanical" || (global.F[5] > 0 and obj_Soul_Parent.stransformedstate == "Mechanical")) and global.turretSpawnTime <= 0 {
		var followtar = other.id
		var a8 = 0;
		
		with (obj_Turret_Soul) {
			if alarm[8] > a8 {
				a8 = alarm[8];
				followtar = id;
			}
		}
		with instance_create(x,y,obj_Turret_Soul) {
			followtarget = followtar
		}
		global.turretSpawnTime = 120 / ((160 + global.souldexterity + global.souldexterityTemp) / 160) / (sstatefirerate * ((200 + global.soulassurance + global.soulassuranceTemp) / 200) * ((10 + scr_Get_Status_Magnitude(id, "firerate_mult")) / 10));
	}
}