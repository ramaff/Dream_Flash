/// @description Insert description here
// You can write your code in this editor


alarm[1] = 120 + random(60);

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 5, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_spin_bullet_v2"
_bull.bullet_sprite = "spr_Arcane_Echo"
_bull.bullet_life_span = 270
_bull.bullet_count = 3;
_bull.bullet_spread = 360 / _bull.bullet_count;
_bull.bullet_size = 0.5;
_bull.angular_velocity = 360 / 270;
_bull.follow_bullets = 2;
_bull.bullet_direction_angle = 1


scr_shoot_bullets(_bull, x, y)
