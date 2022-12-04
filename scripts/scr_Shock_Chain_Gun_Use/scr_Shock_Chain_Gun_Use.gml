function scr_Shock_Chain_Gun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Shock_Ball_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Shock_Chain_Gun_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 7.5;
	Shot_Power = 19;
	Shot_Knockback = 5;
	Shot_Lifespan = 150;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 40;
	Shot_Impact_Power = 10;

	Shot_Burst_Type = 3;
	Shot_Burst_Power = 12;
	Shot_Burst_Speed = 10;
	Shot_Burst_Amount = 3;
	Shot_Burst_Range = 100;
	Shot_Burst_Spread = 60;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;
	
	Shot_Point_Angle = 1;
	
	/*
	Shot_Chain += 1;
	Shot_Chain_Type = 1;
	Shot_Chain_Power = 19;
	Shot_Chain_Range = 200;
	Shot_Chain_Speed = 15;
	*/

	Shot_Size = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 5;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = make_color_rgb(127,255,185);

	scr_Shot_Creation();



}
