function scr_Barrier_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Barrier_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 5.5;
	Shot_Power = 30;
	Shot_Knockback = 10;
	Shot_Lifespan = 150;

	Shot_Shield_Type = 1;
	Shot_Shield_Power = 30;

	Shot_Size = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(50,255,143);
	Shot_Trail_Color2 = make_color_rgb(127,255,185);

	scr_Shot_Creation();



}
