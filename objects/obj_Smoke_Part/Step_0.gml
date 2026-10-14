/// @description Insert description here
// You can write your code in this editor

if alarm[0] <= 15 {
	var _split = size / 15
	image_xscale -= _split;
	image_yscale = image_xscale;
	image_alpha -= _split
}

friction = speed / (life / 3);