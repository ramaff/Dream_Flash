//scr_Light_Follow_Soul_AI();

//scr_New_Face_Direction();

if !instance_exists(followtarget) {
	var followtar = obj_Soul_Parent.id
	with (obj_Turret_Soul) {
		followtar = id	
	}
	followtarget = followtar
}

if instance_exists(obj_Boss_Parent) {
		soulshotdirection = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	} else {
		soulshotdirection = point_direction(x,y,mouse_x,mouse_y);	
	}

scr_Weapon_Warmup_Step();

scr_New_Face_Direction();

scr_Minion_Follow_Leader();