function scr_Powered_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Power_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 9.5;
	Shot_Power = 16;
	Shot_Knockback = 12;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(255,128,166);
	Shot_Trail_Color2 = make_color_rgb(255,51,113);

	scr_Shot_Creation();



}
