/// @description Insert description here
// You can write your code in this editor
target = noone;
alarm[0] = 90;
image_angle = -90;

image_xscale = 0.5;
image_yscale = 0.5;

// pointed down and follows soul
// every 10 seconds points in direction it will move while wobbling
// then does a slash movement in that direction w/ after images
// when out of bounds, loops, and gains normal ai again (follow soul)
thrusting = false;
bosses_hit = {};
