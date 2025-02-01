/// @description Insert description here
// You can write your code in this editor

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 1.5, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = "spr_Small_Green_Laser"
_bull.bullet_life_span = 180
_bull.bullet_count = 4;
_bull.bullet_spread = 360 / _bull.bullet_count;
_bull.bullet_size = 0.5;
_bull.bullet_direction_angle = 1;

scr_shoot_bullets(_bull, x, y)

