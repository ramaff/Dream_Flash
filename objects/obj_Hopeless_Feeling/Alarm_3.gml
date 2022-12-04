/// @description Insert description here
// You can write your code in this editor
alarm[3] = 10;

var dist = point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);
var ang = point_direction(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);

var num = 0
repeat(5) {
	num++;
	var xx = lengthdir_x(dist * 0.16 * num,ang);
	var yy = lengthdir_y(dist * 0.16 * num,ang);
    
	with instance_create(x + xx,y + yy,obj_Hopeless_Chain) {
		sprite_index = spr_Boss_Chain;
		image_xscale = 0.4;
		image_yscale = 0.4;
	    image_index = 0;
	}
}
	