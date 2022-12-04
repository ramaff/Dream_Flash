function scr_old_Energy_Crystal() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Frame = irandom(5);
	Shot_Image_Speed = 0;

	Shot_Sprite = spr_Energy_Crystal_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 0;
	Shot_Power = 16;
	Shot_Knockback = 0;
	Shot_Lifespan = 10;

	Shot_Pierce += 100;

	scr_Shot_Creation();



}
