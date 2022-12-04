function scr_Tomato_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Tomato_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 9.5;
	Shot_Power = 10;
	Shot_Knockback = 12;
	Shot_Lifespan = 60;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 60;
	Shot_Impact_Power = 10;
	Shot_Impact_Explode = 0;
	
	Shot_Weaken += 2;
	Shot_Weaken_Time = 60;

	Shot_Size = 0.33;
	Shot_Lobbing = 1;

	Shot_Trail = 2;
	Shot_Trail_Frequency = 15;
	Shot_Trail_Hit_Type = obj_Gravity_Particle;
	Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
	Shot_Trail_Hit_Life = 15;
	Shot_Trail_Area = 30;
	Shot_Trail_Color1 = make_color_rgb(255,0,19);
	Shot_Trail_Color2 = make_color_rgb(255,0,42);


	scr_Shot_Creation();



}
