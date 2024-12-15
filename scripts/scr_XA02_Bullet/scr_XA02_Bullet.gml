// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XA02_bullet_v2(_bullet_stats){
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