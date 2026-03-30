/// @description Insert description here
// You can write your code in this editor

depth = 200;

if bullet_stats.bullet_fade = 1 {
	if alarm[0] < 15 {
		bullet_stats.bullet_power = 0;
		image_xscale -= image_xscale / alarm[0]
		image_yscale -= image_yscale / alarm[0]
	}
}

if bullet_stats.bullet_life_span - alarm[0] > 15 {
	image_xscale = lerp(image_xscale, bullet_stats.bullet_size, 0.1)
	image_yscale = image_xscale
}

if alarm[0] = bullet_stats.bullet_life_span {
	image_xscale = 0;
	image_yscale = image_xscale
}