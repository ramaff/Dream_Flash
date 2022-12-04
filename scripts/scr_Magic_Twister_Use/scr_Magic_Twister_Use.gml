function scr_Magic_Twister_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Magic_Twister_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Duplicate_Sprite = spr_Magic_Twister_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Extra_Hits[0] = 1;
	Shot_Extra_Hit_Frequency[0] = 10;
	Shot_Extra_Hit_Power[0] = 8;

	Shot_Friction = 0.02;
	Shot_Min_Speed = 0.5;

	Shot_Speed = 5.5;
	Shot_Power = 18;
	Shot_Knockback = 13;
	Shot_Lifespan = 150;
	
	Shot_Bullet_Redirect = 1;
	Shot_Bullet_Redirect_Chance = 70;

	Shot_Size = 0.5;

	Shot_Pierce += 3;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 20;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
