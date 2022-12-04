function scr_Bombarder_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Bombarder_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 17.5;
	Shot_Power = 42;
	Shot_Knockback = 10;
	Shot_Lifespan = 46;

	Shot_Phasing = 1;
	Shot_Air_Target = 1;

	Shot_Impact_Type = 1;
	Shot_Impact_Size = 150;
	Shot_Impact_Power = 42;
	
	Shot_Point_Angle = 1;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
