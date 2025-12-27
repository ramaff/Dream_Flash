senergy = 100;
sdelay = 0;
bi = 0;

image_index = 0;

if instance_exists(obj_Boss_Parent) {
	soulshotmouse = 0;
	if instance_exists(obj_Boss_Parent) {
		soulshotdirection = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	} else {
		soulshotdirection = point_direction(x,y,obj_Astral_Indicator.x,obj_Astral_Indicator.y);	
	}
	scr_Weapon_Use();   
}

if sdelay = 0 {
sdelay = sfirerate;
}

alarm[1] = max(2, (sdelay * 1.6));
alarm[0] = max(1, alarm[1] - 15);

