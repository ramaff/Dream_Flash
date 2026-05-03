/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

direction = scr_Angle_Converge(direction, scr_Soul_Point(), bullet_stats.homing_speed)

scr_bullet_expand_before_contract_v2(bullet_stats)
if alarm[0] < 60 {
	speed = speed * 0.96;
}
