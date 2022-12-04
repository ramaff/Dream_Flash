function scr_Missile_Launcher_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Missile_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 7.5;
	Shot_Power = 24;
	Shot_Knockback = 10;
	Shot_Lifespan = 120;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 80;
	Shot_Impact_Power = 15;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 180;
	Shot_Point_Angle = 1;

	Shot_Size = 0.4;

	Shot_Trail = 2;
	Shot_Trail_Sprite = spr_Missile_Trail;
	Shot_Trail_Life = 15;
	Shot_Trail_Area = 5;
	Shot_Trail_Fade = 0;
	Shot_Trail_Color1 = make_color_rgb(255,53,0);
	Shot_Trail_Color2 = make_color_rgb(255,191,101);

	scr_Shot_Creation();



}
