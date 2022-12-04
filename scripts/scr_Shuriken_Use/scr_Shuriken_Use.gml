function scr_Shuriken_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 20;
	Shot_Accuracy += 10;
	Shot_Count += 1;

	Shot_Sprite = spr_Shuriken_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 9;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 200;
	Shot_Homing_Speed = 2;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
