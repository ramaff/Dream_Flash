scr_Invincibility_Frames();
scr_Face_Direction();

if(place_meeting(x + hspeed, y, obj_The_Border)) {
    direction = -direction + 180;
	
	if instance_exists(obj_Boss_Parent) {
	    move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y, smovementspeed);
	}
	
} else if(place_meeting(x, y + vspeed, obj_The_Border)) {
    direction = -direction;
	
	if instance_exists(obj_Boss_Parent) {
	    move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y, smovementspeed);
	}
}


scr_Minion_Step();

direction += -0.5 + random(1);

//action_bounce(0,0);

