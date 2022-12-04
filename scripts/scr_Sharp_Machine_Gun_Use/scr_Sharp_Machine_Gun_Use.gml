function scr_Sharp_Machine_Gun_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Sharp_Machine_Gun_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 11;
	Shot_Power = 14;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.4;
	Shot_Point_Angle = 1;

	Shot_Trail = 1;
	Shot_Trail_Sprite = spr_Essence_Trail_Bit;
	Shot_Trail_Area = 15;
	Shot_Trail_Color1 = make_color_rgb(255,128,166);
	Shot_Trail_Color2 = make_color_rgb(255,51,113);
	Shot_Trail_Fade = 0;

	var chance = irandom(9);
	if chance = 9 {
		Shot_Bleed = 3;
		Shot_Bleed_Time = 90;
		Shot_Bleed_Ticks = 2;
	}

	scr_Shot_Creation();



}
