if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 5;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = "spr_Shot_Explosion";
    current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";
    
    current_weapon_stats.Shot_Speed = 0;
    current_weapon_stats.Shot_Power = 100;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 30;
    current_weapon_stats.Shot_Size = 0.75;
	
	current_weapon_stats.Shot_Pierce += 50;
	current_weapon_stats.Shot_Phasing = 1;
    
    scr_Minion_Shot_Creation();
}

