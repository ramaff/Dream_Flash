scr_Invincibility_Frames();

scr_Minion_Step();

if instance_exists(obj_Soul_Parent) {
	followtarget = obj_Soul_Parent;
} else {
	instance_destroy();	
}

scr_Minion_Follow_Leader(300, 4);

var dist = point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);
var ang = point_direction(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);

if dist > 375 {
	with obj_Soul_Parent {
		x += lengthdir_x((dist - 375) / 20, ang - 180);	
		y += lengthdir_y((dist - 375) / 20, ang - 180);	
	}
}

var num = 0
repeat(5) {
	num++;
	var xx = lengthdir_x(dist * 0.16 * num,ang);
	var yy = lengthdir_y(dist * 0.16 * num,ang);
    
	with instance_create(x + xx,y + yy,obj_Thought) {
		sprite_index = spr_Boss_Chain;
		image_xscale = 0.4;
		image_yscale = 0.4;
	    image_index = 0;
	}
}
	