function scr_Maw_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Maw_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 40;
	Shot_Knockback = 10;
	Shot_Lifespan = 13;

	Shot_Mouse_Origin = 1;
	Shot_Life_Drain = 10 / 28;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 15;
	Shot_Extra_Hit_Power[0] = 14;

	Shot_Phasing = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Size = 0.8;
	Shot_Image_Speed = 1;

	scr_Shot_Creation();



}
