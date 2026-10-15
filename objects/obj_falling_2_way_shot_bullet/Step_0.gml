/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
if scr_bullet_lob(bullet_stats) {
	instance_destroy()	
}

var _scale = bullet_stats.bullet_size * scr_Wave(1, 1.3, 0.25, 0)

image_xscale = _scale
image_yscale = _scale

speed = lerp(speed, bullet_stats.bullet_speed * 0.15, 0.025);
