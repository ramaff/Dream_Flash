function scr_old_Essence_Beam() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 0.1;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Essence_Beam_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 0;
	Shot_Power = 6;
	Shot_Knockback = 0;
	Shot_Lifespan = 2;

	Shot_Pierce += 100;

	scr_Shot_Creation();



}
