scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 15;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Rain_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    current_weapon_stats.Shot_Speed = 6;
    current_weapon_stats.Shot_Power = 10;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 210;
	current_weapon_stats.Shot_Size = 0.5;
    
    glumcount++
    
    current_weapon_stats.Shot_Homing_Type = 1;
    current_weapon_stats.Shot_Homing_Range = 60;
    
    current_weapon_stats.Shot_Pierce += 1;
    current_weapon_stats.Shot_Looping += 1;  
	
	current_weapon_stats.Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

