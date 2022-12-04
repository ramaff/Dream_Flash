function scr_Multi_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 20;
	Shot_Accuracy += 15;
	Shot_Count += 2;

	Shot_Sprite = spr_Multi_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 7.5;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(30,197,255);
	Shot_Trail_Color2 = make_color_rgb(20,236,255);

	scr_Shot_Creation();



}
