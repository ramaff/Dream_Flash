function scr_Magic_Bolt_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Magic_Bolt_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Image_Speed = 0.5;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 6.5;
	Shot_Power = 16;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.4;
	
	Shot_Homing_Type = 1;
	Shot_Homing_Range = 150;
	Shot_Homing_Speed = 2;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = make_color_rgb(243,153,255);

	scr_Shot_Creation();



}
