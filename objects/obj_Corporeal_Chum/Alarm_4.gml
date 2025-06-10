if corporealHit > 0 {

    alarm[4] = 3;
    corporealHit--;

    if instance_exists(obj_Boss_Parent) {
        current_weapon_stats = scr_Setup_Default_Shot_Stats();
        
        current_weapon_stats.Shot_Spread += 180;
        current_weapon_stats.Shot_Accuracy += 10;
        current_weapon_stats.Shot_Count += 1;
        
		current_weapon_stats.Shot_Direction = corporealdir;
        current_weapon_stats.Shot_Sprite = spr_Corporeal_Shot;
        current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
        current_weapon_stats.Shot_Speed = 5.5;
        current_weapon_stats.Shot_Power = 9;
        current_weapon_stats.Shot_Knock_Back = 10;
        current_weapon_stats.Shot_Life_Span = 100;
		current_weapon_stats.Shot_Size = 0.5;
		
		current_weapon_stats.Shot_Point_Angle = 1;
        
        scr_Minion_Shot_Creation();
		
		corporealdir += 10;
    }

}

