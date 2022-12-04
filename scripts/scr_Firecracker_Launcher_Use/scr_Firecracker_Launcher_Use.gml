function scr_Firecracker_Launcher_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Sprite = spr_Firecracker_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Soul_Fire;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 10;
	Shot_Power = 16;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Burst_Type = 2;
	Shot_Burst_Amount = 1;
	Shot_Burst_Power = 6;
	Shot_Burst_Speed = 0;
	Shot_Burst_Pierce = 2;
	Shot_Burst_Lifespan = 90;
	Shot_Burst_Extra_Hits = 1;
	Shot_Burst_Extra_Hit_Frequency = 15;
	Shot_Burst_Extra_Hit_Power = 3;
	Shot_Burst_Point_Angle = 0;

	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 16;
	
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Life = 15;
	Shot_Trail_Area = 5;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,53,0);
	Shot_Trail_Color2 = make_color_rgb(255,191,101);

	Shot_Size = 0.45;

	scr_Shot_Creation();



}
