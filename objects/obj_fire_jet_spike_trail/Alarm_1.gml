/// @description Insert description here
// You can write your code in this editor

alarm[1] = 2;

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 0, bullet_stats.bullet_power, 1)

_bull.bullet_type = "obj_boss_flame_jet"
_bull.bullet_sprite = "spr_Boss_Sword_Lean"
_bull.bullet_size = _bull.bullet_size * (0.7 + random(0.3));
_bull.bullet_life_span = 75;
//_bull.bullet_direction = direction;

_bull.bullet_part = 1;
_bull.bullet_part_type = obj_Fire_Part
_bull.bullet_part_sprite = "spr_Soul_Big_Bit";
_bull.bullet_part_area = 90;
_bull.bullet_part_life = 25;
_bull.bullet_part_color1 = make_color_rgb(255, 0, 253);
_bull.bullet_part_color2 = _bull.bullet_part_color1
_bull.bullet_part_frequency = 4;
_bull.bullet_part_yy = -60;

scr_shoot_bullets(_bull, x - 20 + random(40), y - 20 + random(40))






