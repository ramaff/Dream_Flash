alarm[3] = sfirerate - 10;

alarm[2] = 20;

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    current_weapon_stats.Shot_Spread += 10;
    current_weapon_stats.Shot_Accuracy += 45;
    current_weapon_stats.Shot_Count = 5;
    
    current_weapon_stats.Shot_Sprite = "spr_Secure_Atk_Shot";
    current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";
	current_weapon_stats.Shot_Size = 0.5;
	
	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.5;
	Weapon_Vomit_Max_Speed = 1;
    
    current_weapon_stats.Shot_Speed = 9.5;
    current_weapon_stats.Shot_Power = 10;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 90;
    
    scr_Minion_Shot_Creation();
	
	current_weapon_stats.Shot_Spread = 10;
    current_weapon_stats.Shot_Accuracy += 45;
    current_weapon_stats.Shot_Count -= 1;
	
	current_weapon_stats.Shot_Shield_Type = 1;
    current_weapon_stats.Shot_Shield_Power = 10;
	
	current_weapon_stats.Shot_Sprite = "spr_Secure_Def_Shot";
	current_weapon_stats.Shot_Type = "obj_Defense_Soul_Shot";
	
	scr_Minion_Shot_Creation();
}

