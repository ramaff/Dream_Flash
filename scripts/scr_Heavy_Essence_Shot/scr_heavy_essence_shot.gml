function scr_Heavy_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Heavy_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6;
	Shot_Power = 38;
	Shot_Knockback = 25;
	Shot_Lifespan = 90;
	
	Shot_Screen_Shake = 5;

	Shot_Size = 0.4;
	Shot_Continue = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 20;
	Shot_Trail_Color1 = make_color_rgb(255,124,40);
	Shot_Trail_Color2 = make_color_rgb(255,174,127);

	scr_Shot_Creation();



}
