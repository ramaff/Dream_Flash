function scr_Pin_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 45;
	Shot_Count += 4;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Sprite = spr_Pin;
	Shot_Type = obj_Lesser_Soul_Shot;

	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.5;
	Weapon_Vomit_Max_Speed = 1;

	Shot_Speed = 12;
	Shot_Power = 9;
	Shot_Knockback = 10;
	Shot_Lifespan = 45;
	
	Shot_Point_Angle = 1;

	Shot_Shield_Type = 4;
	Shot_Shield_Power = 15;

	Shot_Size = 0.5;
	
	var chance = scr_Chance(5);
	if chance = true {
		Shot_Bleed = 2;
		Shot_Bleed_Time = 90;
		Shot_Bleed_Ticks = 3;
	}

	scr_Shot_Creation();



}
