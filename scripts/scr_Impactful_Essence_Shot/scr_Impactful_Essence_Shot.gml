function scr_Impactful_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Impact_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6;
	Shot_Power = 10;
	Shot_Knockback = 12;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 20;
	
	Shot_Weaken += 2;
	Shot_Weaken_Time = 60;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(204,0,89);
	Shot_Trail_Color2 = make_color_rgb(229,0,102);


	scr_Shot_Creation();



}
