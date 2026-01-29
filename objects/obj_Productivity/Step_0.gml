scr_Invincibility_Frames();

scr_Minion_Step();

//scr_Light_Follow_Soul_AI();

if followtarget = obj_Soul_Parent.id {
	if instance_exists(followtarget) {
		var dis = point_distance(x, y, followtarget.x, followtarget.y - 80)
		if dis > 1 {
			direction = point_direction(x, y, followtarget.x, followtarget.y - 80);
			speed = (dis - 1) / 10;
		} else {
			speed = lerp(speed, 0, 0.3);
		}
	} else {
		speed = lerp(speed, 0, 0.3);
		instance_destroy();
	}
} else {
	scr_Minion_Follow_Leader();	
}

/// In Boss Beat Script
if instance_number(obj_Main_Boss_Parent) - instance_number(obj_Dead_Boss) <= 0 {
	scr_N02_Pay();	
}