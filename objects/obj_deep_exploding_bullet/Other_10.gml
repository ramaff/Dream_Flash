/// @description Insert description here
// You can write your code in this editor

var _bull = variable_clone(bullet_stats)

_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = "spr_Glowy_Yellow_Shot"
_bull.bullet_speed = _bull.bullet_speed * 2;
_bull.bullet_life_span = 180
_bull.bullet_count = 8;
_bull.bullet_spread = 45;

scr_shoot_bullets(_bull, x, y)




