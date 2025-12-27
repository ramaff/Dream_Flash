/// @description Insert description here
// You can write your code in this editor

if instance_exists(frame) {
	frame.frozen_bullets = frozen_bullets
	frame.frozen_shots = frozen_shots
}

var _bullet_ids = struct_get_names(frozen_bullets);
var _bullets = array_length(_bullet_ids)

var _i;

for(_i = 0; _i < _bullets; _i++) {
	var _bullet_id = _bullet_ids[_i]
	var _bullet = variable_struct_get(frozen_bullets, _bullet_id)
	with instance_create_depth(_bullet.x, _bullet.y, _bullet.depth, obj_perma_hurt) {
		bullet_stats = {
			"bullet_power": 0
		}
		alarm[0] = 350;
		sprite_index = _bullet.sprite_index
		image_index = _bullet.image_index;
		image_angle = _bullet.image_angle;
		image_xscale = _bullet.image_xscale;
		image_yscale = _bullet.image_yscale;
		image_speed = 0;
		try {
			bullet_stats.bullet_power = _bullet.bullet_stats.bullet_power
			bullet_stats.bullet_origin = _bullet.bullet_stats.bullet_origin
			bullet_stats.bullet_stun = _bullet.bullet_stats.bullet_stun
			bullet_stats.bullet_stun_time = _bullet.bullet_stats.bullet_stun_time
			bullet_stats.bullet_sleep = _bullet.bullet_stats.bullet_sleep
			bullet_stats.bullet_sleep_time = _bullet.bullet_stats.bullet_sleep_time
			bullet_stats.bullet_poison_omen = _bullet.bullet_stats.bullet_poison_omen
		} 
		catch (_exception) {
			try {
				bullet_stats.bullet_power = _bullet.bulletpower
				bullet_stats.bullet_origin = _bullet.bulletobj
				bullet_stats.bullet_stun = _bullet.bulletstun
				bullet_stats.bullet_stun_time = _bullet.bulletstuntime
				bullet_stats.bullet_sleep = _bullet.bulletsleep
				bullet_stats.bullet_sleep_time = _bullet.bulletsleeptime
				bullet_stats.bullet_poison_omen = 0;
			}
			catch (_exception) {
				instance_destroy();	
			}
		}
	}
}

var _shot_ids = struct_get_names(frozen_shots);
var _shots = array_length(_shot_ids)

var _i;

for(_i = 0; _i < _shots; _i++) {
	var _shot_id = _shot_ids[_i]
	var _shot = variable_struct_get(frozen_shots, _shot_id)
	var _cloned_shot_stats = variable_clone(_shot.shot_stats)
	with instance_create_depth(_shot.x, _shot.y, _shot.depth, obj_Lesser_Soul_Shot) {
		followtarget = noone;
		target = noone;
		otarget = noone;
		bullet_hits = _shot.bullet_hits;
		shot_boss_id = _shot.shot_boss_id;
		shot_id = _shot.shot_id;
		
		shot_stats = _cloned_shot_stats
		sprite_index = _shot.sprite_index;
		image_index = _shot.image_index;
		image_angle = _shot.image_angle;
		direction = _shot.direction;
		image_xscale = _shot.image_xscale;
		image_yscale = _shot.image_yscale;
		shot_stats.Shot_Speed = 0;
		speed = 0;
		shot_stats.Shot_Life_Span = 350;
		alarm[0] = 350;
		shot_stats.Shot_Pierce = 999;
		image_speed = 0;
		
		shot_stats.Shot_Angular_Velocity = 0;
		
		shot_stats.Shot_Extra_Stats = noone;
		shot_stats.Shot_Extra_Hits_Frequency = 60;
		shot_stats.Shot_Fizzle_Out = 0;
		shot_stats.Shot_Lobbing = false;
		shot_stats.Shot_Movement = 0;
		shot_stats.Shot_Step_Scripts = [];
		shot_stats.Shot_Draw_Scripts = [];
		
		scr_Assign_Shot_Scripts()
		
	}
}
