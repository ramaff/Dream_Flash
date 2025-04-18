scr_Minion_Reload();

image_index = 0;

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 5;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Flash_Bomb;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    current_weapon_stats.Shot_Speed = 7.5;
    current_weapon_stats.Shot_Power = 35;
    current_weapon_stats.Shot_Impact_Type = 1;
    current_weapon_stats.Shot_Impact_Size = 100;
    current_weapon_stats.Shot_Impact_Power = 20;
    
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
	
	current_weapon_stats.Shot_Face_Direction = 1;
	current_weapon_stats.Shot_Lobbing = true;
	current_weapon_stats.Shot_Size = 0.475;
    
    scr_Minion_Shot_Creation();
}

