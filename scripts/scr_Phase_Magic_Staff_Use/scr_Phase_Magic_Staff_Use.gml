function scr_Phase_Magic_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Phase_Magic_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	/*
	Shot_Extra_Hits = 1;
	Shot_Extra_Hit_Frequency = 9;
	Shot_Extra_Hit_Power = 6;
	*/

	Shot_Speed = 8.5;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 225;

	Shot_Pierce += 1;
	Shot_Looping += 1;
	
	Shot_Image_Rotation_Speed = 5;

	Shot_Size = 0.4;
	
	Shot_Acceleration = 0.05;

	Shot_Trail = 2;
	Shot_Trail_Sprite = spr_Phase_Magic_Part
	Shot_Trail_Area = 0;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 5;
	Shot_Trail_Life = 20;

	scr_Shot_Creation();



}
