function scr_Micro_Bomb_Cannon_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Micro_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.75;
	Weapon_Vomit_Max_Speed = 1;

	Shot_Speed = 10.5;
	Shot_Power = 17;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 60;
	Shot_Impact_Power = 10;

	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.325;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Life = 6;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = make_color_rgb(243,153,255);

	scr_Shot_Creation();



}
