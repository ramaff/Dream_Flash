/// @description Insert description here
// You can write your code in this editor

alarm[1] = 15;

var _bull = variable_clone(bullet_stats)

_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_speed = _bull.bullet_speed / 5;
_bull.bullet_size = _bull.bullet_size * 0.8;
_bull.bullet_lifespan = 120

scr_shoot_bullets(_bull, x, y)


