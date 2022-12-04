/// @description Insert description here
// You can write your code in this editor
image_xscale = lerp(image_xscale, 1,  0.1);
image_yscale = lerp(image_yscale, 1, 0.1);


if instance_exists(target) {
	x = target.x;
	y = target.y;
	image_xscale = min(target.image_xscale, image_xscale);
	image_yscale = min(target.image_yscale, image_yscale);
} else {
	instance_destroy();	
}