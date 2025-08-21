/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if alarm[0] > 20 and image_index > 2 {
	image_index = 2;
}

speed = 0;

image_xscale = lerp(image_xscale, bullet_stats.bullet_size, 0.1)
image_yscale = lerp(image_yscale, bullet_stats.bullet_size, 0.1)