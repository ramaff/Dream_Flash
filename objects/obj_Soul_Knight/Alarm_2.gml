scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 5;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Knight_Soul_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
    
    current_weapon_stats.Shot_Speed = 0.5;
    current_weapon_stats.Shot_Power = 15;
    current_weapon_stats.Shot_Knock_Back = 11;
    current_weapon_stats.Shot_Life_Span = 7;
	current_weapon_stats.Shot_Angle = -90 + point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	Image_Rotation_Speed = 30;
	current_weapon_stats.Shot_Phasing = 1;
	
	speed = 9;
	direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	friction = 1;
	
	current_weapon_stats.Shot_Pierce += 19;
	current_weapon_stats.Shot_Size = 0.4;
	
	current_weapon_stats.Shot_Shield_Type = 3;
	current_weapon_stats.Shot_Shield_Power = 4;
    
    scr_Minion_Shot_Creation();
}


