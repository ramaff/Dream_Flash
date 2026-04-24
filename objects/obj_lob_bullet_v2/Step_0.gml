/// @description Insert description here
// You can write your code in this editor

scr_bullet_lob(bullet_stats)

image_angle = direction;
image_angle = scr_Angle_Converge(image_angle, 270, -(5 * bullet_stats.bullet_bounce_speed))

