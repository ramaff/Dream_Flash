function scr_Duplicate_Shot_Stats(_new_shot_stats = other.shot_stats, _existing_shot_stats = other.shot_stats, _dir = 0) {
	
	var shot_stats = {}
	
	if is_struct(_existing_shot_stats) {
		shot_stats = _existing_shot_stats
	} else {
		shot_stats = scr_Dupe_Struct(other.shot_stats)
	}
	

	if _new_shot_stats != _existing_shot_stats {
		shot_stats = scr_Struct_Merge(shot_stats, _new_shot_stats, false)
	}
	
	if shot_stats.Shot_Hit_Again = 0 {
	    shot_id = other.shot_id;
		shot_boss_id = other.shot_boss_id;
		bullet_hits = other.bullet_hits;
	} else {
	    shot_id = id;
		shot_boss_id = real(shot_id);
		bullet_hits = {};
	}
	
	alarm[1] = 1;
	
	if shot_stats.Shot_Frames > 0 {
		shot_stats.Shot_Frame = irandom(shot_stats.Shot_Frames)	
	}

	target = other.target;
	otarget = other.otarget;
	
	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	image_angle = shot_stats.Shot_Angle;
	image_index = shot_stats.Shot_Frame;
	image_speed = shot_stats.Shot_Image_Speed;
	image_alpha = shot_stats.Shot_Alpha;
	
	sprite_index = asset_get_index(shot_stats.Shot_Sprite)
	
	shot_stats.Shot_Origin = other.shot_stats.Shot_Origin;
	
	shot_stats.Shot_Follow_Origin = other.shot_stats.Shot_Follow_Origin;
	
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
	
	
	if shot_stats.Shot_Orbital_Type > 0 {
		shot_stats.Shot_Orbital_Range = other.shot_stats.Shot_Orbital_Range;
		shot_stats.Shot_Orbital_Angle = other.shot_stats.Shot_Orbital_Angle;
		shot_stats.Shot_Center_X = other.shot_stats.Shot_Center_X;
		shot_stats.Shot_Center_Y = other.shot_stats.Shot_Center_Y;
	}

	direction = other.direction + _dir;
	shot_stats.Shot_Direction_Addition += _dir
	speed = shot_stats.Shot_Speed;
	shot_stats.Shot_Exist_Time = 0;
	alarm[0] = shot_stats.Shot_Life_Span;
	alarm[2] = 1;
	alarm[4] = 1;
	alarm[3] = 15;

	followtarget = other.followtarget
	shot_stats.Shot_Fear_Target = other.shot_stats.Shot_Fear_Target;
	
	return shot_stats

}
