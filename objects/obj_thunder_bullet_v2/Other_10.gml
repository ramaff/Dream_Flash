/// @description Insert description here
// You can write your code in this editor

if scr_bullet_lob(bullet_stats) {
    var _bull = scr_base_bullet_stats(bullet_stats.bullet_speed * 1, bullet_stats.bullet_power, 1)

	
	_bull.bullet_type = "obj_basic_bullet_v2"
	_bull.bullet_sprite = "spr_Lightning_Bullet"
	_bull.bullet_life_span = 180
	_bull.bullet_count = 8;
	_bull.bullet_spread = 360 / _bull.bullet_count;
	_bull.bullet_size = 0.5;
	_bull.bullet_direction_angle = 1;

	scr_shoot_bullets(_bull, x, y)
	
	_bull.bullet_speed = bullet_stats.bullet_speed * 1.333
	_bull.bullet_count = 4;
	_bull.bullet_spread = 360 / _bull.bullet_count;
	
	scr_shoot_bullets(_bull, x, y)
	
	_bull.bullet_direction += 22.5
	_bull.bullet_speed = bullet_stats.bullet_speed * 0.75
	
	scr_shoot_bullets(_bull, x, y)
	
}




