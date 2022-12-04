function scr_Boomerang_Blade_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Boomerang_Blade_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Phasing = 1;
	Shot_Comeback += 1;
	Shot_Duplicate_Sprite = spr_Boomerang_Blade_Shot;

	Shot_Speed = 7.5;
	Shot_Power = 27;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;
	Shot_Burst_Power = 25;

	Shot_Size = 0.5;
	Shot_Point_Angle = 1;

	Shot_Pierce += 3;

	scr_Shot_Creation();




}
