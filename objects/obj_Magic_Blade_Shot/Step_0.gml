/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

shot_stats.Shot_Size = sqrt((shot_stats.Shot_Size * shot_stats.Shot_Size) + 0.01);
image_xscale = shot_stats.Shot_Size
image_yscale = shot_stats.Shot_Size

shot_stats.Shot_Size = sqrt((shot_stats.Shot_Size * shot_stats.Shot_Size) + 0.05);

shot_stats.Shot_Power += 0.1 + (shot_stats.Shot_Power * 0.02);
shot_stats.Shot_Power_Level += 0.1 + (shot_stats.Shot_Power_Level * 0.02);
