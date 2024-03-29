if corporealHit > 0 {

    alarm[1] = 3;
    corporealHit--;

	var scount = 1 + irandom(1);
    repeat(scount) {
        scr_Default_Weapon_Stats();
        
        Shot_Stats.Shot_Accuracy += 360;
        Shot_Stats.Shot_Count += 0;
        Shot_Stats.Shot_Spread = 360 / Shot_Stats.Shot_Count;
        
        Shot_Stats.Shot_Mouse = 0;
        Shot_Stats.Shot_Direction = random(360);
        
        Shot_Stats.Shot_Sprite = spr_Rain_Shot;
        Shot_Stats.Shot_Type = obj_Lesser_Soul_Shot;
        
        Shot_Stats.Shot_Speed = 7.5;
        Shot_Stats.Shot_Power = 10;
        Shot_Stats.Shot_Knockback = 10;
        Shot_Stats.Shot_Life_Span = 200;
		
		Shot_Stats.Shot_Size = 0.45;
        
        Shot_Stats.Shot_Looping += 1;
		
		Shot_Stats.Shot_Point_Angle = 1;
        
        Shot_ID = instance_id_get( instance_count ) + glumcount;
    
        glumcount++
    
        //ds_list_add(projectile_hits, Shot_ID);
		
		variable_struct_set(projectile_hits, Shot_ID, Shot_ID)
        
        scr_Minion_Shot_Creation();
    }

}

