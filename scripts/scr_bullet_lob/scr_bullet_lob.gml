// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bullet_lob(_bullet_stats = bullet_stats){

	_bullet_stats.bullet_bounce_height += _bullet_stats.bullet_bounce_speed
	_bullet_stats.bullet_bounce_speed -= _bullet_stats.bullet_bounce_gravity

	y -= _bullet_stats.bullet_bounce_speed

	if _bullet_stats.bullet_bounce_height + _bullet_stats.bullet_bounce_speed < 0 {
		_bullet_stats.bullet_bounce_speed = _bullet_stats.bullet_bounce_speed * -1;
	}

}