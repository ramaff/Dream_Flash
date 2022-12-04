function scr_Splodey_Seeds_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 60;
	Shot_Count += 5;

	Shot_Sprite = spr_Splodey_Seeds_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.5;
	Weapon_Vomit_Max_Speed = 1;

	Shot_Speed = 4.5;
	Shot_Power = 12;
	Shot_Knockback = 12;
	Shot_Lifespan = 90;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 60;
	Shot_Impact_Power = 8;

	Shot_Size = 0.4;
	Shot_Lobbing = 1;

	scr_Shot_Creation();



}
