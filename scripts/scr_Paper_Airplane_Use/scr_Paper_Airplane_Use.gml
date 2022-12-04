function scr_Paper_Airplane_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Paper_Airplane;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Paper_Cut;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;
	
	Shot_Point_Angle = 1;

	Shot_Extra_Hits[2] = 3;
	Shot_Extra_Hits_Sprite[2] = Shot_Duplicate_Sprite;
	Shot_Extra_Hit_Frequency[2] = 30;
	Shot_Extra_Hit_Power[2] = 9;
	Shot_Extra_Hit_Speed[2] = 12;
	Shot_Extra_Hit_Lifespan[2] = 25;
	Shot_Extra_Hit_Homing[2] = 0;
	Shot_Extra_Hit_Homing_Speed[2] = 0;
	Shot_Extra_Hit_Pierce[2] = 1;
	
	//Shot_Burst_Amount = 3;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 180;
	Shot_Homing_Speed = 6;

	Shot_Speed = 4;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 180;

	Shot_Pierce += 2;
	Weapon_Split_Visible = 1;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
