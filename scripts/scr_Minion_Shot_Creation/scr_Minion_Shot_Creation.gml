function scr_Minion_Shot_Creation() {
	dir = -(Shot_Stats.Shot_Spread * (Shot_Stats.Shot_Count - 1) / 2) + (-(Shot_Stats.Shot_Accuracy / 2) + random(Shot_Stats.Shot_Accuracy)) / saccuracy;
	repeat(Shot_Stats.Shot_Count) {
		if Shot_Stats.Weapon_Vomit = 1 {
	        dir = (-(Shot_Stats.Shot_Accuracy / 2) + random(Shot_Stats.Shot_Accuracy));
	    }
		if !is_string(Shot_Stats.Shot_Type) {
			Shot_Stats.Shot_Type = object_get_name(Shot_Stats.Shot_Type)
		}
		if !is_string(Shot_Stats.Shot_Sprite) {
			Shot_Stats.Shot_Sprite = sprite_get_name(Shot_Stats.Shot_Sprite)
		}
		
	    with instance_create(x,y,asset_get_index(Shot_Stats.Shot_Type)) {
	        scr_Default_Shot_Stats();
			shot_stats = json_parse(json_stringify(other.Shot_Stats));
		
			shot_stats.Shot_Origin = other.id;
	        sprite_index = asset_get_index(shot_stats.Shot_Sprite);
	        //shot_stats.Shot_Size = other.Shot_Size;
	        image_xscale = shot_stats.Shot_Size;
	        image_yscale = shot_stats.Shot_Size;
	        shot_stats.Shot_Speed = shot_stats.Shot_Speed * other.sshotspeed / 10 * (shot_stats.Weapon_Vomit_Min_Speed + random(shot_stats.Weapon_Vomit_Max_Speed - shot_stats.Weapon_Vomit_Min_Speed));
	        shot_stats.Shot_Power_Max = shot_stats.Shot_Power * other.spower / 10;
	        shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
	        shot_stats.Shot_Power_Level = shot_stats.Shot_Power;
	        shot_stats.Shot_Knock_Back = shot_stats.Shot_Knockback * other.sshotknockback / 10;
	        if shot_stats.Shot_Mouse = 1 {
				if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
					move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y, shot_stats.Shot_Speed);
				}
			} else {
	            direction = shot_stats.Shot_Direction;
	        }
	        direction += other.dir;
	        alarm[0] = shot_stats.Shot_Life_Span;
	        scr_Extra_Shot_Stats();
			
			shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			
	    }
	    dir += Shot_Stats.Shot_Spread;
	}
   



}
