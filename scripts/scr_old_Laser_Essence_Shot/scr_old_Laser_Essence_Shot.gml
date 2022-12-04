function scr_old_Laser_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 2;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Laser_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 0;
	Shot_Power = 15.5;
	Shot_Knockback = 0;
	Shot_Lifespan = 10;

	Shot_Pierce += 100;

	scr_Shot_Creation();



}
