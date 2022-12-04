function scr_Piercing_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Piercing_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 8;
	Shot_Power = 12;
	Shot_Knockback = 10;
	Shot_Lifespan = 75;

	Shot_Pierce += 2;

	Shot_Size = 0.4;
	
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Huge_Essence_Trail_Bit;
	Shot_Trail_Area = 0;
	Shot_Trail_Fade = 0;
	Shot_Trail_Life = 15;
	Shot_Trail_Color1 = make_color_rgb(243,153,255);
	Shot_Trail_Color2 = make_color_rgb(243,153,255);

	scr_Shot_Creation();



}
