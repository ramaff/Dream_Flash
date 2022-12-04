function scr_Snap_Pops_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Sprite = spr_Snap_Pops_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 12.5;
	Shot_Power = 18;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;
	
	Shot_Friction = 6.5 / 30;
	Shot_Min_Speed = 6;
	
	//Shot_Speed_Power_Add = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Color1 = make_color_rgb(255,230,192);
	Shot_Trail_Color2 = make_color_rgb(255,191,101);

	scr_Shot_Creation();



}
