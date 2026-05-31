/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
if scr_bullet_lob(bullet_stats) {
	instance_destroy()	
}

var _scale = scr_Wave(1, 1.3, 0.25, 0)

scr_set_bullet_size(bullet_stats.bullet_size * _scale)

speed = lerp(speed, bullet_stats.bullet_speed * 0.15, 0.025);
