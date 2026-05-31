/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

shot_stats.Shot_Size = scr_Sqrt_Add(shot_stats.Shot_Size, shot_stats.Shot_Size_Max * 0.0033);
image_xscale = shot_stats.Shot_Size
image_yscale = shot_stats.Shot_Size

shot_stats.Shot_Power += shot_stats.Shot_Power_Max * 0.0033;

//shot_stats.Shot_Size = sqrt((shot_stats.Shot_Size * shot_stats.Shot_Size) + 0.05);

scr_Enemy_Bullet_Orbit_Suck(shot_stats.Shot_Size * 5);
