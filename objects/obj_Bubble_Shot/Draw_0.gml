/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if is_array(shot_stats.Shot_Bubble_Air_Burst_Stats) {
	draw_sprite_ext(asset_get_index(shot_stats.Shot_Bubble_Air_Burst_Stats[0].Shot_Sprite),0,x,y,image_xscale,image_yscale,image_angle,c_white,1);
}

event_inherited();
