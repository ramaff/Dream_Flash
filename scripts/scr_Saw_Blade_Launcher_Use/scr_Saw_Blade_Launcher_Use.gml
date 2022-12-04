function scr_Saw_Blade_Launcher_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Saw_Blade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Image_Rotation_Speed = 5;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Speed = 10.5;
	Shot_Power = 27;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Pierce += 1;

	Shot_Size = 0.4;

	scr_Shot_Creation();



}
