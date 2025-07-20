/// @description Insert description here
// You can write your code in this editor

alarm[1] = 40;

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * (1 + random(0.5)), bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_lob_bullet_v2"
_bull.bullet_sprite = "spr_Hammer_Bullet"
_bull.bullet_size = _bull.bullet_size;
_bull.bullet_lob_time = 40;
_bull.bullet_life_span = 202;
_bull.bullet_direction = direct;

scr_shoot_bullets(_bull, x, y)






