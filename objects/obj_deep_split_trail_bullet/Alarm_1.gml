/// @description Insert description here
// You can write your code in this editor


alarm[1] = 10 + random(5);

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed / 5, bullet_stats.bullet_power, 1)


_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = "spr_Glowy_Green_Shot"
_bull.bullet_size = 0.5
_bull.bullet_life_span = 120
_bull.bullet_direction = direction - 120 + random(120)
_bull.bullet_speed = 0.5 + random(1.5)

scr_shoot_bullets(_bull, x, y)

