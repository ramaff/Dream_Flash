if corporealHit > 0 {

    alarm[1] = 3;
    corporealHit--;

	var scount = 1 + irandom(1);
    repeat(scount) {
        scr_Default_Weapon_Stats();
        
        Shot_Accuracy += 360;
        Shot_Count += 0;
        Shot_Spread = 360 / Shot_Count;
        
        Shot_Mouse = 0;
        Shot_Direction = random(360);
        
        Shot_Sprite = spr_Rain_Shot;
        Shot_Type = obj_Lesser_Soul_Shot;
        
        Shot_Speed = 7.5;
        Shot_Power = 10;
        Shot_Knockback = 10;
        Shot_Life_Span = 200;
		
		Shot_Size = 0.45;
        
        Shot_Looping += 1;
		
		Shot_Point_Angle = 1;
        
        Shot_ID = instance_id_get( instance_count ) + glumcount;
    
        glumcount++
    
        //ds_list_add(projectile_hits, Shot_ID);
		
		variable_struct_set(projectile_hits, Shot_ID, Shot_ID)
        
        scr_Minion_Shot_Creation();
    }

}

