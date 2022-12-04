function scr_Dense_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 25;
	Shot_Count += 0;

	Shot_Sprite = spr_Burst_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 18;
	Shot_Power = 18;
	Shot_Knockback = 15;
	Shot_Lifespan = 30;

	Shot_Size = 0.4;
	
	Shot_Friction = 12 / 15;
	Shot_Min_Speed = 6;
	
	Shot_Speed_Power_Add = 0.5;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(178,0,134);
	Shot_Trail_Color2 = make_color_rgb(229,0,172);


	scr_Shot_Creation();



}
