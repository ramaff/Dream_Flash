if soulinvincibility = 0 {

if other.bossknockbackforce > sknockbackdefense {
    sminknockbackdirection = point_direction(x,y,other.x,other.y) + 180;
    sminknockback = (other.bossknockbackforce - sknockbackdefense);
    if sminknockback >= 10 {
        sminknockback = 10;
    }
    sminknockbacktime = 6;
    }
        
shealth -= other.bosscontactdamage;
soulinvincibility = 6

if global.totalhearts <= 0 {
if shealth <= 0 {
    instance_destroy();
}
}

    if instance_exists(obj_Troubling_Thingo) {

        scr_Default_Weapon_Stats();
        
        Shot_Stats.Shot_Spread += 45;
        Shot_Stats.Shot_Accuracy += 360;
        Shot_Stats.Shot_Count += 7;
        
        Shot_Stats.Shot_Sprite = spr_Troubling_Shot;
        Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
        
        Shot_Stats.Shot_Phasing = 1;
        
        Shot_Stats.Shot_Speed = 5.5 + random(2);
        Shot_Stats.Shot_Power = 15;
        Shot_Stats.Shot_Soul_Damage = 10;
        Shot_Stats.Shot_Knockback = 10;
        Shot_Stats.Shot_Life_Span = 120;
		Shot_Stats.Shot_Size = 0.55;
		Shot_Stats.Shot_Pierce += 1;
		
		scr_Minion_Shot_Creation();
    
		/*
		Shot_Homing_Type = 1;
        Shot_Homing_Range = 60;
		
        repeat(Shot_Count) {
            with instance_create(x,y,Shot_Type) {
                scr_Default_Shot_Stats();
                scr_Proj_Teleport();
                sprite_index = other.Shot_Sprite;
                shot_stats.Shot_Size = other.Shot_Size;
                image_xscale = shot_stats.Shot_Size;
                image_yscale = shot_stats.Shot_Size;
                shot_stats.Shot_Speed = other.Shot_Speed * other.sshotspeed / 10;
                shot_stats.Shot_Power_Max = other.Shot_Power * other.spower / 10;
                shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
                shot_stats.Shot_Power_Level = other.Shot_Power;
                shot_stats.Shot_Knock_Back = other.Shot_Knockback * other.sshotknockback / 10;
                move_towards_point(instance_nearest(x,y,obj_Troubling_Thingo).x,instance_nearest(x,y,obj_Troubling_Thingo).y, shot_stats.Shot_Speed);
                shot_stats.Shot_Life_Span = 60 + distance_to_object(instance_nearest(x,y,obj_Troubling_Thingo)) / shot_stats.Shot_Speed;
                alarm[0] = shot_stats.Shot_Life_Span;
                shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
                scr_Extra_Shot_Stats();
            }
        }
		*/
    }   

}

