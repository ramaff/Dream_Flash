scr_Minion_Reload();

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Stats.Shot_Spread += 0;
    Shot_Stats.Shot_Accuracy += 15;
    Shot_Stats.Shot_Count += 0;
    
    Shot_Stats.Shot_Sprite = "spr_Clingy_Shot";
    Shot_Stats.Shot_Type = "obj_Lesser_Soul_Shot";
    
    Shot_Stats.Shot_Speed = 6;
    Shot_Stats.Shot_Power = 10;
    Shot_Stats.Shot_Knockback = 10;
    Shot_Stats.Shot_Life_Span = 165;
	Shot_Stats.Shot_Size = 0.4;
	
	Shot_Stats.Shot_Homing_Type = 2;
	Shot_Stats.Shot_Homing_Range = 120;

	Shot_Stats.Shot_Extra_Hits[0] = 1;
	Shot_Stats.Shot_Extra_Hit_Frequency[0] = 45;
	Shot_Stats.Shot_Extra_Hit_Power[0] = 5;
    
    Shot_Stats.Shot_Phasing = 1;
	Shot_Stats.Shot_Pierce += 2;
    
    scr_Minion_Shot_Creation();
}

