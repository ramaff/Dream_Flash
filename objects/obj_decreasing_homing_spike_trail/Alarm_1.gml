/// @description Insert description here
// You can write your code in this editor

alarm[1] = 1;

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 0, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_boss_spike_v2"
_bull.bullet_sprite = "spr_Boss_Ground_Spike"
_bull.bullet_size = _bull.bullet_size * (0.7 + random(0.3));
_bull.bullet_life_span = 75;
//_bull.bullet_direction = direction;

scr_shoot_bullets(_bull, x - 20 + random(40), y - 20 + random(40))






