alarm[0] = sfirerate;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Explosive_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 5;
    Shot_Power = 15;
	Shot_Impact_Type = 1;
    Shot_Impact_Size = 80;
    Shot_Impact_Power = 20;
    
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
	
	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.5;
    
    scr_Minion_Shot_Creation();
	
	image_index = 1;
}

alarm[2] = 15;