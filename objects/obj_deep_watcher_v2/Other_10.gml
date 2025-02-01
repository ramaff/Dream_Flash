/// @description Insert description here
// You can write your code in this editor

var _xx = x + boss_xoffset;
var _yy = y + boss_yoffset;

var bull = bullet_type;
var _seg_size = 128 * bullet_size;

var _seg_tail = id;

for(var _count = 0; _count < 17; _count++) {
	with instance_create(_xx, _yy, bull) {
		scr_Bullet_Shoot_Properties();
		bulletpower = 0;
							
		if _count = 0 {
			sprite_index = spr_Boss_Beam_Start;
			other.laser_start = id;	
		}
		if _count = 16 {
			sprite_index = spr_Boss_Beam_Tail;
			depth -= 5;
		}
		direction = other.bullet_direction;
		image_angle = direction;
		scr_Spiritual_Stats_Boss_Bullet_Effects();
		
		seg_tail = _seg_tail;
		seg_distance = _seg_size;
		seg_angle = other.bullet_direction;
		
		_seg_tail = id;
	}
	_xx += lengthdir_x(_seg_size, bullet_direction)
	_yy += lengthdir_y(_seg_size, bullet_direction)
}






