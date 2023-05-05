alarm[3] = sfirerate - 10 - random(sfirerate / 3);

alarm[2] = 20;

scr_Soul_Stretch("Vertical", 0.8);
image_index = 0;

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 30;
    Shot_Accuracy += 360;
    Shot_Count += 11;
        
    Shot_Sprite = spr_Panic_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
        
    Shot_Phasing = 1;
        
    Shot_Speed = 4.5 + random(2);
    Shot_Power = 15;
    Shot_Soul_Damage = 10;
    Shot_Knockback = 10;
    Shot_Lifespan = 120;
	Shot_Size = 0.55;
	
	Shot_Pierce += 1;
		
	scr_Minion_Shot_Creation();
	
	//Shot_Spread = 30;
    Shot_Accuracy = 15;
    Shot_Count = 5;
	Shot_Direction = scr_Soul_Point();
	
	Shot_Speed += 2;
	
	scr_Minion_Shot_Creation();
		
}

