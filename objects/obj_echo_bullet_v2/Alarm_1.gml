/// @description Insert description here
// You can write your code in this editor


alarm[1] = 25;

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed / 10, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = bullet_stats.bullet_sprite;
_bull.bullet_life_span = 65
_bull.bullet_direction_angle = 1
_bull.bullet_direction = direction

scr_shoot_bullets(_bull, x, y)




