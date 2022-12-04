alarm[3] = sfirerate - 10;

alarm[2] = 20;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 45;
    Shot_Count += 4;
    
    Shot_Sprite = spr_Secure_Atk_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.5;
	
	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.5;
	Weapon_Vomit_Max_Speed = 1;
    
    Shot_Speed = 9.5;
    Shot_Power = 10;
    Shot_Knockback = 10;
    Shot_Lifespan = 90;
    
    scr_Minion_Shot_Creation();
	
	Shot_Spread += 0;
    Shot_Accuracy += 45;
    Shot_Count -= 1;
	
	Shot_Shield_Type = 1;
    Shot_Shield_Power = 10;
	
	Shot_Sprite = spr_Secure_Def_Shot;
	Shot_Type = obj_Defense_Soul_Shot;
	
	scr_Minion_Shot_Creation();
}

