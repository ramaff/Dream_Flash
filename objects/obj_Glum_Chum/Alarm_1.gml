if corporealHit > 0 {

    alarm[1] = 3;
    corporealHit--;

	var scount = 1 + irandom(1);
    repeat(scount) {
        current_weapon_stats = scr_Setup_Default_Shot_Stats();
        
        current_weapon_stats.Shot_Accuracy += 360;
        current_weapon_stats.Shot_Count += 0;
        current_weapon_stats.Shot_Spread = 360 / current_weapon_stats.Shot_Count;
        
        current_weapon_stats.Shot_Mouse = 0;
        current_weapon_stats.Shot_Direction = random(360);
        
        current_weapon_stats.Shot_Sprite = spr_Rain_Shot;
        current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
        current_weapon_stats.Shot_Speed = 7.5;
        current_weapon_stats.Shot_Power = 10;
        current_weapon_stats.Shot_Knock_Back = 10;
        current_weapon_stats.Shot_Life_Span = 200;
		
		current_weapon_stats.Shot_Size = 0.45;
        
        current_weapon_stats.Shot_Looping += 1;
		
		current_weapon_stats.Shot_Point_Angle = 1;
        
        Shot_ID = instance_id_get( instance_count ) + glumcount;
    
        glumcount++
    
        //ds_list_add(projectile_hits, Shot_ID);
		
		variable_struct_set(projectile_hits, Shot_ID, Shot_ID)
        
        scr_Minion_Shot_Creation();
    }

}

