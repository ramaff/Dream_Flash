// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H08_Status_Build_Up() {
	
	var _near_bulls = 0
	var _soul = id;
	with(obj_soul_hurt_v2) {
		if distance_to_object(_soul) < 120 {
			_near_bulls++;	
		}
	}
	with(obj_Soul_Hurt) {
		if distance_to_object(_soul) < 120 {
			_near_bulls++;	
		}
	}
	with(obj_Boss_Parent) {
		if distance_to_object(_soul) < 120 {
			_near_bulls++;	
		}
	}
	
	if _near_bulls > 0 {
		var _curr_defensive = scr_Get_Status_Time("spike_heart_omen");
		var _status_effect = {
			"duration": _curr_defensive + ceil((5 + _near_bulls) * global.soulheartboost),
			"tick_script": scr_Spike_Heart_Omen,
			"tick_frequency": 1
		}
		var _status_effect_2 = {
			"duration": _curr_defensive + ceil((5 + _near_bulls) * global.soulheartboost),
			"max_duration": 360,
			"bar_sprite": "spr_Defensive_Omen_Status_Effect_Bar"
		}
		variable_struct_set(soul_step_status_effects, "spike_heart_omen", [_status_effect])
		variable_struct_set(soul_draw_status_effects, "spike_heart_omen", [_status_effect_2])
	}
}

function scr_Spike_Heart_Omen() {
	scr_Soul_Step_Omen_Generic("spike_heart_omen", 360, scr_H08)
}

function scr_H08() {
	
	var _dir = random(360);
	if distance_to_object(obj_Boss_Parent) < 120 {
		var _near = instance_nearest(x, y, obj_Boss_Parent);
		_dir = point_direction(x, y, _near.x, _near.y)
	} else if distance_to_object(obj_Bullet_Parent) < 120 {
		var _near = instance_nearest(x, y, obj_Bullet_Parent);
		_dir = point_direction(x, y, _near.x, _near.y)
	} else if distance_to_object(obj_bullet_parent_v2) < 120 {
		var _near = instance_nearest(x, y, obj_bullet_parent_v2);
		_dir = point_direction(x, y, _near.x, _near.y)
	}
	
	var _dam = 1.5;

	with instance_create(x, y, obj_Spike_Aura_Maintain) {
		damage = _dam * 2;
		direction = _dir;
		image_angle = direction;
		image_xscale = 0.5 + (_dam / 10);
		image_yscale = image_xscale;
					
		alarm[0] = 60;
		origin = other.id;
	}
	with instance_create(x, y, obj_Spike_Aura_Maintain) {
		damage = _dam;
		direction = _dir;
		image_angle = direction - 45;
		image_xscale = 0.45 + (_dam / 20);
		image_yscale = image_xscale;
					
		alarm[0] = 60;
		origin = other.id;
	}
	with instance_create(x, y, obj_Spike_Aura_Maintain) {
		damage = _dam;
		direction = _dir;
		image_angle = direction + 45;
		image_xscale = 0.45 + (_dam / 20);
		image_yscale = image_xscale;
					
		alarm[0] = 60;
		origin = other.id;
	}
	var _speed = 15;
	var _time = 15;
	scr_force_push(self.id, _time, _speed, _speed/_time, _dir + 180)

}