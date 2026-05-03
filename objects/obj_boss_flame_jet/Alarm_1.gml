/// @description Insert description here
// You can write your code in this editor
with instance_create(x,y,obj_stationary_damager_v2) {
    bullet_stats = variable_clone(other.bullet_stats)
	scr_bullet_shoot_properties_v2(bullet_stats);
    sprite_index = spr_Boss_Ground_Spike_Mask;
	image_index = other.image_index;
	image_speed = other.image_speed;
	image_alpha = 0;
    bullet_stats.bullet_speed = 0;
    bullet_stats.bullet_power = other.bullet_stats.bullet_power;
    speed = bullet_stats.bullet_speed;
    direction = 0;
    bullet_stats.bullet_life_span = 25;
    alarm[0] = 25;
}
