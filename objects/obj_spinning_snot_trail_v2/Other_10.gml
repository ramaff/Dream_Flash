/// @description Insert description here
// You can write your code in this editor
var _bull = scr_base_bullet_stats(0, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_damage_pool_v2"
_bull.bullet_sprite = "spr_Damage_Pool"
_bull.bullet_blend = make_colour_rgb(0, 255, 168)
_bull.bullet_size = _bull.bullet_size * (0.5 + random(0.25));
_bull.bullet_life_span = 180 + random(60);
_bull.bullet_depth = depth + 100;

scr_shoot_bullets(_bull, x - 10 + random(20), y - 10 + random(20))

alarm[1] = 3;

