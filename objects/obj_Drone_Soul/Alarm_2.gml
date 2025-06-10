scr_Minion_Reload();

//scr_Soul_Stretch("Vertical", 0.5);

if instance_exists(obj_Boss_Parent) {
    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 10;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = "spr_Fleeting_Soul_Shot";
    current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";
	current_weapon_stats.Shot_Size = 0.4;
    
    current_weapon_stats.Shot_Speed = 9;
    current_weapon_stats.Shot_Power = other.current_weapon_stats.Shot_Power;
    current_weapon_stats.Shot_Knock_Back = 10;
    current_weapon_stats.Shot_Life_Span = 60;
    
    scr_Minion_Shot_Creation();
}
