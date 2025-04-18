scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 5;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Knife_Soul;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    current_weapon_stats.Shot_Speed = 5;
    current_weapon_stats.Shot_Power = 11;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 1;
    
    current_weapon_stats.Shot_Pierce += 100;
    
    scr_Minion_Shot_Creation();
}

