function scr_Throwing_Knives_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Throwing_Knife_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 9.5;
	Shot_Power = 23;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Bleed = 3;
	Shot_Bleed_Time = 120;
	Shot_Bleed_Ticks = 2;

	Shot_Size = 0.4;
	
	Shot_Point_Angle = 1;

	scr_Shot_Creation();



}
