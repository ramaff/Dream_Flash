scr_Invincibility_Frames();

scr_Minion_Step();

scr_Minion_Follow_Leader();

image_index = 0;
if distance_to_object(obj_Bullet_Parent) < 200 {
	scr_Enemy_Bullet_Suck(4.5);
	image_index = 1;
}

