function scr_Marble_Rifle_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 8;
	Shot_Accuracy += 45;
	Shot_Count += 4;

	Shot_Sprite = spr_Marble_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Frame = 1 + irandom(6);
	Shot_Image_Speed = 0;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;
	
	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.5;
	Weapon_Vomit_Max_Speed = 1;

	Shot_Friction = 0.5;
	Shot_Min_Speed = 0;

	Shot_Bounce = 2;
	Shot_Pierce += 1;

	Shot_Speed = 22.5;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
