/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {
	x = target.x;	
	y = target.y;
} else {
	instance_destroy();
	exit;
}

var _mag_max = 200 + (global.A[11] * 400);
magnitude = clamp(magnitude, 0, _mag_max)

magnitude += 1.5 * ((1 + (global.soulstrength / 40)) * global.A[11]);

image_xscale = sqrt(magnitude / 600) - 0.1;
image_yscale = sqrt(magnitude / 600) - 0.1;

image_xscale = clamp(image_xscale, 0, 1)
image_yscale = clamp(image_yscale, 0, 1)
image_alpha = lerp(image_alpha, scr_Wave(0.05, 0.25, 0.5, 0), 0.05);