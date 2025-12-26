/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _wave = scr_Wave(-30, 30, 1, 0)

direction = scr_Angle_Converge(direction - _wave, scr_Soul_Point(), bullet_stats.homing_speed) + _wave

scr_bullet_expand_before_contract_v2(bullet_stats)
