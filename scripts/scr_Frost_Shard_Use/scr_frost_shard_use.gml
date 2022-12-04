function scr_Frost_Shard_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Frost_Magic_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Frost_Shard_Shot;
	Shot_Image_Speed = 0.5;
	
	Shot_Image_Rotation_Speed = 5;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 6;
	Shot_Power = 27;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Burst_Type = 2;
	Shot_Burst_Amount = 3;
	Shot_Burst_Power = 9;
	Shot_Burst_Speed = 10;
	Shot_Burst_Lifespan = 90;
	Shot_Burst_Pierce = 1;

	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;
	
	var chance = 1 + irandom(3);

	if chance = 4 {
		Shot_Freeze_Type = 0.5;
		Shot_Freeze = 2;
		Shot_Freeze_Time = 120;
	}

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
