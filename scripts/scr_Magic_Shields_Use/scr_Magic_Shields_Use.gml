function scr_Magic_Shields_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 3;

	Shot_Sprite = spr_Magic_Shield_Shot;
	Shot_Type = obj_Defense_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 2.5;
	Shot_Power = 5;
	Shot_Knockback = 10;
	Shot_Lifespan = 600;

	Shot_Shield_Type = 1;
	Shot_Shield_Power = 10;

	Shot_Size = 0.5;
	Shot_Orbital_Type = 2;
	Shot_Orbital_Range = 60;
	Shot_Phasing = 1;

	Shot_Trail = 1;
	Shot_Trail_Frequency = 5;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
