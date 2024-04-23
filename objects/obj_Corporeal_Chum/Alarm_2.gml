scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 30;
    current_weapon_stats.Shot_Accuracy += 60;
    current_weapon_stats.Shot_Count += 2;
    
    current_weapon_stats.Shot_Sprite = spr_Corporeal_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
	current_weapon_stats.Shot_Size = 0.5;
    
    current_weapon_stats.Shot_Speed = 5.5;
    current_weapon_stats.Shot_Power = 13;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
	
	current_weapon_stats.Shot_Point_Angle = 1;
    
    scr_Minion_Shot_Creation();
}

