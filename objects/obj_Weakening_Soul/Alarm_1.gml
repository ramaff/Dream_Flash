scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 15;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Weakening_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    current_weapon_stats.Shot_Speed = 6;
    current_weapon_stats.Shot_Power = 3;
    current_weapon_stats.Shot_Knockback = 10;
    current_weapon_stats.Shot_Life_Span = 100;
    
    current_weapon_stats.Shot_Weaken += 3;
    current_weapon_stats.Shot_Weaken_Time = 120;
	
	current_weapon_stats.Shot_Size = 0.4;
    
    scr_Minion_Shot_Creation();
}

