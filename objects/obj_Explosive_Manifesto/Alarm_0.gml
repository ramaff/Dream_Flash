alarm[0] = sfirerate;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 15;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Explosive_Soul_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    current_weapon_stats.Shot_Speed = 5;
    current_weapon_stats.Shot_Power = 15;
	current_weapon_stats.Shot_Impact_Type = 1;
    current_weapon_stats.Shot_Impact_Size = 80;
    current_weapon_stats.Shot_Impact_Power = 20;
    
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 100;
	
	current_weapon_stats.Shot_Face_Direction = 1;
	current_weapon_stats.Shot_Lobbing = true;
	current_weapon_stats.Shot_Size = 0.5;
    
    scr_Minion_Shot_Creation();
	
	image_index = 1;
}

alarm[2] = 15;