function scr_Poison_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Poison_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6;
	Shot_Power = 6;
	Shot_Knockback = 0;
	Shot_Lifespan = 90;

	Shot_Poison = 4;
	Shot_Poison_Time = 90;
	Shot_Poison_Ticks = 10;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(107,229,0);
	Shot_Trail_Color2 = make_color_rgb(119,255,0);


	scr_Shot_Creation();



}
