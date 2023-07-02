scr_Invincibility_Frames();

scr_Minion_Step();


if !instance_exists(followtarget) || followtarget = noone {
	var followtar = obj_Soul_Parent.id
	with (obj_Bullet_Eater) {
		followtarget = followtar
		followtar = id	
	}
}

scr_Minion_Follow_Leader(150, 1.25);

image_index = 0;
if distance_to_object(obj_Bullet_Parent) < 200 {
	scr_Enemy_Bullet_Suck(4.5);
	image_index = 1;
}

