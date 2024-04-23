alarm[3] = sfirerate - 10 - random(sfirerate / 3);

alarm[2] = 30;

scr_Soul_Stretch("Vertical", 0.8);
image_index = 0;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 30;
    current_weapon_stats.Shot_Accuracy += 360;
    current_weapon_stats.Shot_Count += 11;
        
    current_weapon_stats.Shot_Sprite = spr_Panic_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
        
    current_weapon_stats.Shot_Phasing = 1;
        
    current_weapon_stats.Shot_Speed = 4.5 + random(2);
    current_weapon_stats.Shot_Power = 15;
    current_weapon_stats.Shot_Soul_Damage = 10;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 120;
	current_weapon_stats.Shot_Size = 0.55;
	
	current_weapon_stats.Shot_Pierce += 1;
		
	scr_Minion_Shot_Creation();
	
	//current_weapon_stats.Shot_Spread = 30;
    current_weapon_stats.Shot_Accuracy = 15;
    current_weapon_stats.Shot_Count = 12;
	current_weapon_stats.Shot_Direction = 18
	
	current_weapon_stats.Shot_Speed += 2;
	
	scr_Minion_Shot_Creation();
		
}

