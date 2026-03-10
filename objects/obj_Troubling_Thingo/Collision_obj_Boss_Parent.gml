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

if global.currentheart < 0 {
if shealth <= 0 {
    instance_destroy();
}
}

    if instance_exists(obj_Troubling_Thingo) {

        current_weapon_stats = scr_Setup_Default_Shot_Stats();
        
        current_weapon_stats.Shot_Spread += 45;
        current_weapon_stats.Shot_Accuracy += 360;
        current_weapon_stats.Shot_Count += 7;
        
        current_weapon_stats.Shot_Sprite = spr_Troubling_Shot;
        current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
        current_weapon_stats.Shot_Phasing = 1;
        
        current_weapon_stats.Shot_Speed = 5.5 + random(2);
        current_weapon_stats.Shot_Power = 15;
        current_weapon_stats.Shot_Soul_Damage = 10;
        current_weapon_stats.Shot_Knock_Back = 10;
        current_weapon_stats.Shot_Life_Span = 120;
		current_weapon_stats.Shot_Size = 0.55;
		current_weapon_stats.Shot_Pierce += 1;
		current_weapon_stats.Shot_Point_Angle = true;
		
		scr_Minion_Shot_Creation();
    
    }   

}

