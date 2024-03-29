scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Rain_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 6;
    Shot_Power = 10;
    Shot_Knockback = 10;
    Shot_Life_Span = 210;
	Shot_Size = 0.5;
    
    Shot_ID = instance_id_get( instance_count ) + glumcount;
    
    glumcount++
    
    Shot_Homing_Type = 1;
    Shot_Homing_Range = 60;
    
    Shot_Pierce += 1;
    Shot_Looping += 1;  
	
	Shot_Point_Angle = 1;
    
    variable_struct_set(projectile_hits, Shot_ID, Shot_ID)
    
    scr_Minion_Shot_Creation();
}

