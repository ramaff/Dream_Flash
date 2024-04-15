alarm[0] = sfirerate - 15;

scr_Soul_Stretch("Vertical", 0.5);
sprite_index = spr_Fighter_Soul;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 15;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Fighter_Soul_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
	current_weapon_stats.Shot_Size = 0.4;
    
    current_weapon_stats.Shot_Speed = 6;
    current_weapon_stats.Shot_Power = 9;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
    
    scr_Minion_Shot_Creation();
}


