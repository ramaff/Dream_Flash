function scr_Frosty_Cannon_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Frosty_Bomb_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 6;
	Shot_Power = 20;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 20;

	Shot_Freeze_Type = 0.5;
	Shot_Freeze = 2;
	Shot_Freeze_Time = 120;

	Shot_Face_Direction = 1;
	Shot_Lobbing = 1;
	Shot_Size = 0.45;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Fade = 0;
	Shot_Trail_Frequency = 2;
	Shot_Trail_Color1 = make_color_rgb(49,184,255);
	Shot_Trail_Color2 = make_color_rgb(127,210,255);

	scr_Shot_Creation();



}
