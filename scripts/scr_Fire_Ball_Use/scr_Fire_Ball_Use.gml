function scr_Fire_Ball_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Fire_Ball_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 8;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 70;

	Shot_Fire = 3;
	Shot_Fire_Time = 30;
	Shot_Fire_Ticks = 3;

	Shot_Size = 0.4;
	
	Shot_Acceleration = 0.05;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 20;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,246,0);
	Shot_Trail_Color2 = make_color_rgb(255,119,0);
	Shot_Trail_Hit_Count = 13;
	Shot_Trail_Hit_Life = 10;

	scr_Shot_Creation();



}
