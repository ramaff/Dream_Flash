scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 10;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Lightning_Bolt_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    current_weapon_stats.Shot_Speed = 7.5;
    current_weapon_stats.Shot_Power = 13;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
	current_weapon_stats.Shot_Size = 0.4;
    
    current_weapon_stats.Shot_Chain += 1;
    current_weapon_stats.Shot_Chain_Type = 1;
    current_weapon_stats.Shot_Chain_Power = 10;
    current_weapon_stats.Shot_Chain_Range = 200;
    current_weapon_stats.Shot_Chain_Speed = 12;
    
    scr_Minion_Shot_Creation();
}

