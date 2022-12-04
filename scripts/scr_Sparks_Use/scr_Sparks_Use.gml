function scr_Sparks_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Sparks_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 8;
	Shot_Power = 18;
	Shot_Knockback = 5;
	Shot_Lifespan = 120;

	Shot_Chain += 1;
	Shot_Chain_Type = 1;
	Shot_Chain_Power = 18;
	Shot_Chain_Range = 200;
	Shot_Chain_Speed = 12;

	Shot_Size = 0.5;
	
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 5;
	Shot_Trail_Life = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = make_color_rgb(204,255,255);

	scr_Shot_Creation();



}
