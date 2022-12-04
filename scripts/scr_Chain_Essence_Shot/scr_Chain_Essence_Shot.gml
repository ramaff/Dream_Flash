function scr_Chain_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Chain_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 7.5;
	Shot_Power = 14;
	Shot_Knockback = 10;
	Shot_Lifespan = 150;

	Shot_Chain += 2;
	Shot_Chain_Type = 1;
	Shot_Chain_Power = 10;
	Shot_Chain_Range = 200;
	Shot_Chain_Speed = 10;

	Shot_Size = 0.4;
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 0;
	Shot_Trail_Life = 21;
	Shot_Trail_Frequency = 3;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(183,255,153);
	Shot_Trail_Color2 = make_color_rgb(183,255,153);

	scr_Shot_Creation();




}
