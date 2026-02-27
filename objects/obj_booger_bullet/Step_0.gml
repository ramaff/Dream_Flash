/// @description Insert description here
// You can write your code in this editor

if scr_bullet_lob(bullet_stats) {
	bullet_stats.bullet_bounce_speed = bullet_stats.bullet_bounce_speed * 0.9;
	bullet_stats.bullet_speed = bullet_stats.bullet_speed * 0.9;
	speed = speed * 0.9;
	
	var _bull = scr_base_bullet_stats(0, bullet_stats.bullet_power, 1)

	_bull.bullet_type = "obj_stationary_damager_v2"
	_bull.bullet_sprite = "spr_Poison_Pool"
	_bull.bullet_size = _bull.bullet_size * (0.5 + random(0.15));
	_bull.bullet_life_span = 180 + random(60);
	_bull.bullet_depth = depth + 100;

	scr_shoot_bullets(_bull, x, y)

}

scr_wall_bounce_v2()

var _i = 0;
var _proj_count = array_length(sticked_projectiles);
var _xx = lengthdir_x(speed, direction);
var _yy = lengthdir_y(speed, direction);
for(_i = 0; _i < _proj_count; _i++) {
	with(sticked_projectiles[_i]) {
		x += _xx;
		y += _yy;
	}
}