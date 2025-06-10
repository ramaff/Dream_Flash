/// @description Insert description here
// You can write your code in this editor

var _wave_fac = scr_Wave(0.85, 1.15, shot_stats.Shot_Extra_Hits_Frequency / 30, 0)

image_xscale = shot_stats.Shot_Size * _wave_fac
image_yscale = shot_stats.Shot_Size * _wave_fac

// Inherit the parent event
event_inherited();

