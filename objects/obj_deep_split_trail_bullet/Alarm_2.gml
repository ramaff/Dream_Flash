/// @description Insert description here
// You can write your code in this editor

var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 2, bullet_stats.bullet_power, 1)


_bull.bullet_type = "obj_falling_split_shot_bullet";
_bull.bullet_sprite = "spr_Glowy_Green_Explosive_Shot"
_bull.bullet_bounce_height = 60;
_bull.bullet_life_span = 120 + random(60);
_bull.bullet_bounce_speed = 1
_bull.bullet_lob_time = _bull.bullet_life_span
_bull.bullet_speed = 4 + random(4);
_bull.bullet_direction = random(360);

scr_shoot_bullets(_bull, x, y)

alarm[2] = 30;



