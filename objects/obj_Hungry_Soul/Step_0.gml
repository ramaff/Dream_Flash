
depth = -1;
/*
if instance_exists(obj_Boss_Parent) {
	if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
		if point_distance(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y) < 10 {
			scr_New_Face_Direction();
		}
	}
}
*/
scr_New_Face_Direction();

scr_Aggressive_Follow_Boss_AI_No_Orbit();

//speed = 0;