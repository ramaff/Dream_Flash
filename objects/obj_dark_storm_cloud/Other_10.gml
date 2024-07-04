/// @description Insert description here
// You can write your code in this editor

var _xx = x + boss_xoffset;
var _yy = y + boss_yoffset;

var _zag = 0.5;
var bull = bullet_type;
var _seg_size = 80;

for(var _count = 0; _count < 17; _count++) {
	with instance_create(_xx, _yy, bull) {
		scr_Bullet_Shoot_Properties();
		bulletpower = 0;
							
		if _count = 0 {
			sprite_index = spr_Lightning_Beam_Start;
		}
		if _count = 16 {
			sprite_index = spr_Lightning_Beam_Tail;
			depth -= 5;
		}
		if scr_Chance(2) and _count > 0 {
			if _zag = -0.5 {
				_zag = 0.5;
				image_yscale = -image_yscale;
			} else if _zag = 0.5 {
				_zag = -0.5;
			}
			x += lengthdir_x(_seg_size / 2, other.bullet_direction)
			y += lengthdir_y(_seg_size / 2, other.bullet_direction)
			_xx = x;
			_yy = y;
			sprite_index = spr_Lightning_Beam_Turn;
		}
		//direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
		direction = other.bullet_direction;
		image_angle = direction;
		scr_Spiritual_Stats_Boss_Bullet_Effects();
	}
	bullet_direction = dir + (90 * _zag)
	_xx += lengthdir_x(_seg_size, bullet_direction)
	_yy += lengthdir_y(_seg_size, bullet_direction)
}


