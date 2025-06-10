/// @description Insert description here
// You can write your code in this editor

alarm[1] = 20 + random(10);

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed / 5, bullet_stats.bullet_power, 1)

_bull.bullet_direction = direction - 270 + random(180);
_bull.bullet_type = "obj_wandering_poison_gas_trail"
_bull.bullet_sprite = "spr_medium_gas_cloud"
_bull.bullet_size = bullet_stats.bullet_size * (0.4 + random(0.4));
_bull.bullet_life_span = 120 + random(120);
_bull.bullet_alpha = bullet_stats.bullet_alpha / 2;
_bull.bullet_blend = bullet_stats.bullet_blend;

scr_shoot_bullets(_bull, x - 50 + random(100), y - 50 + random(100))





