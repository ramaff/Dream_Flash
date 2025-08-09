/// @description Insert description here
// You can write your code in this editor

frequency = 120 + (480 / global.P[11]);

alarm[0] = 60 + (frequency / 2);
alarm[1] = alarm[0] - 120;

image_alpha = 0;
image_xscale = 0.8;
image_yscale = 0.8;
