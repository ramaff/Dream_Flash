function scr_Minion_Shot_Creation() {
	dir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy)) / saccuracy;
	repeat(Shot_Count) {
		if Weapon_Vomit = 1 {
	        dir = (-(Shot_Accuracy / 2) + random(Shot_Accuracy));
	    }
	    with instance_create(x,y,Shot_Type) {
	        scr_Default_Shot_Stats();
		
			shot_stats.Shot_Origin = other.id;
	        sprite_index = other.Shot_Sprite;
	        shot_stats.Shot_Size = other.Shot_Size;
	        image_xscale = shot_stats.Shot_Size;
	        image_yscale = shot_stats.Shot_Size;
	        shot_stats.Shot_Speed = other.Shot_Speed * other.sshotspeed / 10 * (other.Weapon_Vomit_Min_Speed + random(other.Weapon_Vomit_Max_Speed - other.Weapon_Vomit_Min_Speed));
	        shot_stats.Shot_Powermax = other.Shot_Power * other.spower / 10;
	        shot_stats.Shot_Power = shot_stats.Shot_Powermax;
	        shotPowerLevel = other.Shot_Power;
	        shotknockback = other.Shot_Knockback * other.sshotknockback / 10;
	        if other.Shot_Mouse = 1 {
				if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
					move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y, shot_stats.Shot_Speed);
				}
			} else {
	            direction = other.Shot_Direction;
	        }
	        direction += other.dir;
	        shot_stats.Shot_Life_Span = other.Shot_Lifespan;
	        alarm[0] = shot_stats.Shot_Life_Span;
	        scr_Extra_Shot_Stats();
			
			shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			
	    }
	    dir += Shot_Spread;
	}
   



}
