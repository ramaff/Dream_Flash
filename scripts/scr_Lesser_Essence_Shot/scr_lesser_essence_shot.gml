function scr_Lesser_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Lesser_Essence_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 7.5;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;

	Shot_Light = 1;
	Shot_Light_Size = Shot_Size;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = c_white;
	Shot_Trail_Color2 = make_color_rgb(230,238,255);

	scr_Shot_Creation();



}
