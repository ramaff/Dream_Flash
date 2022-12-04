function scr_Lightning_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Lightning_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 0.05;
	Shot_Power = 21;
	Shot_Knockback = 10;
	Shot_Lifespan = 15;

	Shot_Phasing = 1;
	Shot_Pierce += 30;

	scr_Shot_Creation();



}
