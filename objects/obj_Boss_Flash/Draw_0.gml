/// @description Insert description here
// You can write your code in this editor


if !instance_exists(target) {
	instance_destroy()
	exit;
}

	//depth = target.depth - 1;
gpu_set_fog(true, c_white, 0, 0);
//with(target) {
event_user(0)
draw_self()	
//}
/*depth = target.depth - 1;
var _spr = target.sprite_index
if sprite_exists(_spr) {
	draw_sprite_ext(_spr, target.image_index, target.x, target.y, target.image_xscale, target.image_yscale, target.image_angle, c_white, image_alpha)
}*/
gpu_set_fog(false, c_white, 0, 0);


//image_alpha -= 0.05;