function scr_Shield_Shot_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Sprite = spr_Shield_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 6.5;
	Shot_Power = 23;
	Shot_Knockback = 15;
	Shot_Lifespan = 150;

	Shot_Shield_Type = 2;
	Shot_Shield_Power = 23;

	Shot_Size = 0.5;
	Shot_Pierce += 2;

	scr_Shot_Creation();



}
