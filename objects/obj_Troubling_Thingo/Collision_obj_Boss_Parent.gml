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
        
        Shot_Spread += 45;
        Shot_Accuracy += 360;
        Shot_Count += 7;
        
        Shot_Sprite = spr_Troubling_Shot;
        Shot_Type = obj_Lesser_Soul_Shot;
        
        Shot_Phasing = 1;
        
        Shot_Speed = 5.5 + random(2);
        Shot_Power = 15;
        Shot_Soul_Damage = 10;
        Shot_Knockback = 10;
        Shot_Lifespan = 120;
		Shot_Size = 0.55;
		Shot_Pierce += 1;
		
		scr_Minion_Shot_Creation();
    
		/*
		Shot_Homing_Type = 1;
        Shot_Homing_Range = 60;
		
        repeat(Shot_Count) {
            with instance_create(x,y,Shot_Type) {
                scr_Default_Shot_Stats();
                scr_Proj_Teleport();
                sprite_index = other.Shot_Sprite;
                shotsize = other.Shot_Size;
                image_xscale = shotsize;
                image_yscale = shotsize;
                shotspeed = other.Shot_Speed * other.sshotspeed / 10;
                shotpowermax = other.Shot_Power * other.spower / 10;
                shotpower = shotpowermax;
                shotPowerLevel = other.Shot_Power;
                shotknockback = other.Shot_Knockback * other.sshotknockback / 10;
                move_towards_point(instance_nearest(x,y,obj_Troubling_Thingo).x,instance_nearest(x,y,obj_Troubling_Thingo).y, shotspeed);
                shotlifespan = 60 + distance_to_object(instance_nearest(x,y,obj_Troubling_Thingo)) / shotspeed;
                alarm[0] = shotlifespan;
                shottimer = shotlifespan;
                scr_Extra_Shot_Stats();
            }
        }
		*/
    }   

}

