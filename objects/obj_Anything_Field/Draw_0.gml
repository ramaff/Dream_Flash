if image_xscale >= 0.5 {
	image_xscale = 0.5;
	image_yscale = 0.5;
}

var scale = image_xscale * 0.8 * ((300 + (y - starty)) / 300);

with instance_create(x,starty + 50, obj_Field_Shadow) {
	size = scale;	
	alarm[0] = 1;
	depth = other.depth + 12;
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_color(c_white);

