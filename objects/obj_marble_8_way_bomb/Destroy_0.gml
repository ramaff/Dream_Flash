/// @description Insert description here
// You can write your code in this editor

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 1, global.stagedamage, 1)


_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = "spr_red_bullet_v2"
_bull.bullet_life_span = 180
_bull.bullet_count = 8;
_bull.bullet_spread = 360 / _bull.bullet_count;
_bull.bullet_size = 0.5;

scr_shoot_bullets(_bull, x, y)

_bull = scr_base_bullet_stats(0, global.stagedamage, 1)

_bull.bullet_type = "obj_bullet_explosion_v2"
_bull.bullet_sprite = "spr_Bullet_Explosion"
_bull.bullet_life_span = 30;
_bull.bullet_size = 0.4;

scr_shoot_bullets(_bull, x, y)