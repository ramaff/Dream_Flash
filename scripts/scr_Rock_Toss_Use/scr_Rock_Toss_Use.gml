function scr_Rock_Toss_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Sprite = spr_Rock_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Angle = random(360);

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 6.5;
	Shot_Power = 14;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.5;
	Shot_Lobbing = 1;
	
	Shot_Crit_Chance = 10;
	Shot_Crit_Multiple = 2;

	scr_Shot_Creation();



}
