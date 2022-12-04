function scr_Explosion_Machine_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Explosion_Machine_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Explosion_Machine_Shot;
	Shot_Image_Rotation_Speed = 2;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 30;
	Shot_Extra_Hit_Power[0] = 6;

	Shot_Speed = 4;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 270;

	Shot_Pierce += 4;
	Weapon_Split_Visible = 0;

	Shot_Size = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 25;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Color1 = make_color_rgb(255,230,192);
	Shot_Trail_Color2 = make_color_rgb(255,191,101);

	scr_Shot_Creation();
	
	Shot_Count += 2;
	Shot_Accuracy += 45;
	
	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 30;
	Shot_Extra_Hit_Power[0] = 2;

	Shot_Speed = 4;
	Shot_Power = 6;
	Shot_Knockback = 10;
	Shot_Lifespan = 180;
	
	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.65;
	Weapon_Vomit_Max_Speed = 1;
	
	Shot_Size = 0.33;
	
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	
	scr_Shot_Creation();



}
