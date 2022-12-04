function scr_Adept_Magic_Staff_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 90;
	Shot_Accuracy += 15;
	Shot_Count += 1;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Sprite = spr_Adept_Magic_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Adept_Bolt_Shot;

	Shot_Speed = 3 + other.Charge_Speed;
	Shot_Power = 7 + other.Charge_Power;
	Shot_Knockback = 9 + other.Charge_Power / 10;
	Shot_Lifespan = 150;
	Shot_Size = 0.3 + other.Charge_Size / 2;

	Shot_Image_Rotation_Speed = 5 + Shot_Speed / 2;

	Shot_Pierce += 2;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 250 + other.Charge_Power;
	Shot_Homing_Speed = 1;
	
	if Shot_Power > 50 {
		Shot_Extra_Hits[1] = 1;
		Shot_Extra_Hits_Sprite[1] = Shot_Duplicate_Sprite;
		Shot_Extra_Hit_Frequency[1] = 15;
		Shot_Extra_Hit_Power[1] = Shot_Power / 8;
		Shot_Extra_Hit_Speed[1] = 0;
		Shot_Extra_Hit_Lifespan[1] = 75;
		Shot_Extra_Hit_Homing[1] = 1;
		Shot_Extra_Hit_Homing_Speed[1] = 10;
		Shot_Extra_Hit_Pierce[1] = 1;
		Shot_Extra_Hit_Acceleration[1] = 0.6;
		
		Weapon_Split_Visible = 1;
	}

	Shot_Burst_Point_Angle = 0;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
