function scr_Splitting_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Splitting_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Split_Essence;

	Shot_Speed = 8;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Burst_Type = 1;
	Shot_Burst_Amount = 4;
	Shot_Burst_Power = 5;

	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 1;

	Shot_Size = 0.4;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(255,255,255);
	Shot_Trail_Color2 = make_color_rgb(255,255,255);

	scr_Shot_Creation();



}
