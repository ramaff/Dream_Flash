function scr_Grenade_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Sprite = spr_Grenade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Fire_Essence_Shot;

	Shot_Bounce = 2;
	Shot_Image_Rotation_Speed = 10;

	Shot_Speed = 3 + other.Charge_Speed;
	Shot_Power = 20 + other.Charge_Power;
	Shot_Knockback = 10 + (Shot_Power / 10);
	Shot_Lifespan = 50;
	Shot_Size = (1 + other.Charge_Size) / 2;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80 + (Shot_Power / 2);
	Shot_Impact_Power = Shot_Power / 2;
	
	if Shot_Power > 80 {
		Shot_Screen_Shake = 7;	
	}
	
	if Shot_Power >= 80 {
		/*
		Shot_Burst_Type = 1;
		Shot_Burst_Amount = 4;
		Shot_Burst_Power = Shot_Power / 8;
		
		Weapon_Split_Visible = 1;
		Weapon_Split_Hit_Again = 1;
		*/
	}

	Shot_Face_Direction = 1;
	Shot_Lobbing = 2;
	//Shot_Size = 0.325;

	scr_Shot_Creation();



}
