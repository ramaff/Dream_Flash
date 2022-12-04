//scr_Light_Follow_Soul_AI();

scr_Minion_Follow_Leader();

//scr_New_Face_Direction();

if instance_exists(obj_Boss_Parent) {
		soulshotdirection = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	} else {
		soulshotdirection = point_direction(x,y,mouse_x,mouse_y);	
	}

scr_Beam_Step();

scr_Weapon_Warmup_Step();