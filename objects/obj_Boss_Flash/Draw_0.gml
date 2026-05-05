/// @description Insert description here
// You can write your code in this editor
if !instance_exists(target) {
	instance_destroy()
	exit;
}

	/*sprite_index = target.sprite_index;
	image_index = floor(target.image_index);
	image_xscale = target.image_xscale;
	image_yscale = target.image_yscale;
	image_angle = target.image_angle;
	x = target.x;
	y = target.y;
	depth = target.depth - 1; */
	
gpu_set_fog(true, c_white, 0, 0);
/*with(target) {
	draw_self()	
}*/
draw_sprite_ext(target.sprite_index, target.image_index, target.x, target.y, target.image_xscale, target.image_yscale, target.image_angle, c_white, image_alpha)
gpu_set_fog(false, c_white, 0, 0);


//image_alpha -= 0.05;