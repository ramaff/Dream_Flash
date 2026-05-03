/// @description Insert description here
// You can write your code in this editor
var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 1.25, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_basic_bullet_v2"
_bull.bullet_sprite = "spr_pink_bullet_v2"
_bull.bullet_life_span = 180
_bull.bullet_count = 6;
_bull.bullet_spread = 360 / _bull.bullet_count;
_bull.bullet_size = bullet_stats.bullet_size * 0.6;
_bull.bullet_direction_angle = 1;

_bull.bullet_part = 1;
_bull.bullet_part_sprite = "spr_Soul_Big_Bit";
_bull.bullet_part_area = 30;
_bull.bullet_part_life = 15;
_bull.bullet_part_color1 = make_color_rgb(255, 0, 253);
_bull.bullet_part_color2 = _bull.bullet_part_color1
_bull.bullet_part_frequency = 4;

scr_shoot_bullets(_bull, x, y)
