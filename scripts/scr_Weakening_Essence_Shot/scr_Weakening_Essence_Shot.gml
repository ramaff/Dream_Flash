function scr_Weakening_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Weakening_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6;
	Shot_Power = 7;
	Shot_Knockback = 0;
	Shot_Lifespan = 90;

	Shot_Weaken += 3;
	Shot_Weaken_Time = 120;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(149,50,255);
	Shot_Trail_Color2 = make_color_rgb(133,76,255);

	scr_Shot_Creation();



}
