scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 20;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Magical_Soul_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    current_weapon_stats.Shot_Speed = 5;
    current_weapon_stats.Shot_Power = 16;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
	current_weapon_stats.Shot_Pierce += 1;
	current_weapon_stats.Shot_Size = 0.4;
    
    current_weapon_stats.Shot_Homing_Type = 1;
    current_weapon_stats.Shot_Homing_Range = 180;
	
	current_weapon_stats.Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

