function scr_Energy_Ball_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Energy_Ball_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 7.5;
	Shot_Power = 15;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Frequency = 4;
	Shot_Trail_Area = 15;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,255,0);
	Shot_Trail_Color2 = c_white;

	scr_Shot_Creation();



}
