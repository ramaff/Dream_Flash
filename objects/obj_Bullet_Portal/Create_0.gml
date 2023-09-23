/// @description Insert description here
// You can write your code in this editor

bullets_entered = {};
portal_match = noone;

pos = scr_Boss_Teleport_v2_Return(-64, 256)

xx = pos[0]
yy = pos[1]

image_xscale = 0;
image_yscale = 0;

portal_direction = scr_Soul_Point(xx, yy) + 90 - random(180);