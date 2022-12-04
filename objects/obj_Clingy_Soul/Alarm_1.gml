scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 15;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Clingy_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
    
    Shot_Speed = 6;
    Shot_Power = 10;
    Shot_Knockback = 10;
    Shot_Lifespan = 165;
	Shot_Size = 0.4;
	
	Shot_Homing_Type = 2;
	Shot_Homing_Range = 120;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 45;
	Shot_Extra_Hit_Power[0] = 5;
    
    Shot_Phasing = 1;
	Shot_Pierce += 2;
    
    scr_Minion_Shot_Creation();
}

