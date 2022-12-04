function scr_Light_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Light_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 9;
	Shot_Power = 8;
	Shot_Knockback = 8;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 10;
	Shot_Trail_Color1 = make_color_rgb(49,184,255);
	Shot_Trail_Color2 = make_color_rgb(127,210,255);

	scr_Shot_Creation();



}
