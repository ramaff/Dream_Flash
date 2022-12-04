function scr_Swift_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Swift_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 12;
	Shot_Power = 13;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(50,255,143);
	Shot_Trail_Color2 = make_color_rgb(127,255,185);

	scr_Shot_Creation();




}
