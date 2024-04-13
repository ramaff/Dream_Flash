scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    current_weapon_stats.Shot_Spread += 0;
    current_weapon_stats.Shot_Accuracy += 15;
    current_weapon_stats.Shot_Count += 0;
    
    current_weapon_stats.Shot_Sprite = spr_Friendly_Shot;
    current_weapon_stats.Shot_Type = obj_Lesser_Soul_Shot;
	current_weapon_stats.Shot_Size = 0.4;
    
    current_weapon_stats.Shot_Speed = 5.5;
    current_weapon_stats.Shot_Power = 16;
    current_weapon_stats.Shot_Knockback = 10;
    current_weapon_stats.Shot_Life_Span = 100;
    
    scr_Minion_Shot_Creation();
}

if scr_Chance(2) {
	with instance_create(x,y,obj_Healthy_Essence) {
	    speed = 0.5 + random(0.8);
	    friction = 0.01;
	    direction = random(360);
	}
}
