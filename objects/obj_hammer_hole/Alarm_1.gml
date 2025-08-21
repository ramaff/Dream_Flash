/// @description Insert description here
// You can write your code in this editor

alarm[0] = 60;

image_xscale = image_xscale * 1.5;
image_yscale = image_yscale * 0.7;

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * (1.2 + random(0.8)), bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_normal_mallet_bullet"
_bull.bullet_sprite = "spr_Hammer_Bullet"
_bull.bullet_size = _bull.bullet_size;
_bull.bullet_lob_time = 90;
_bull.bullet_life_span = 92;
_bull.bullet_direction = direct;

scr_shoot_bullets(_bull, x, y)






