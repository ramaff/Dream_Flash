function scr_Boss_Muncher_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Boss_Muncher_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Image_Speed = 0.1;
	Shot_Duplicate_Sprite = spr_Boss_Muncher_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 9;
	Shot_Power = 33;
	Shot_Knockback = 10;
	Shot_Lifespan = 180;

	Shot_Homing_Type = 2;
	Shot_Homing_Range = 90;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 30;
	Shot_Extra_Hit_Power[0] = 6;

	Shot_Size = 0.5;
	
	Shot_Point_Angle = 1;

	/*
	Shot_Impact_Type = 1;
	Shot_Impact_Size = 75;
	Shot_Impact_Power = 15;
	*/

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 0;
	Shot_Trail_Life = 16;
	Shot_Trail_Frequency = 4;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,48,0);
	Shot_Trail_Color2 = make_color_rgb(255,48,0);

	Shot_Pierce += 1;

	scr_Shot_Creation();



}
