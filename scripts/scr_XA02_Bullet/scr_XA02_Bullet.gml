// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XA02_bullet_v2(_bullet_stats){
	if scr_Chance(12 / global.XA[2]) {
		if (sprite_get_width(sprite_index) <= 100) {
			_bullet_stats.bullet_sprite = spr_Loathing_Bullet;
			sprite_index = _bullet_stats.bullet_sprite;
		}
		_bullet_stats.bullet_power = _bullet_stats.bullet_power * 2;
		_bullet_stats.bullet_power_max = _bullet_stats.bullet_power;
		_bullet_stats.bullet_speed += _bullet_stats.bullet_speed * 0.33;
		speed = _bullet_stats.bullet_speed;
	}
}

function scr_XA02_Bullet(){
	if scr_Chance(12 / global.XA[2]) {
		if (sprite_get_width(sprite_index) <= 100) {
			bulletsprite = spr_Loathing_Bullet;
			sprite_index = bulletsprite;
		}
		bulletpower = bulletpower * 2;
		bulletpowermax = bulletpower;
		bulletspeed += bulletspeed * 0.33;
		speed = bulletspeed;
	}
}