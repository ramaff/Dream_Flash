function scr_Wave_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Wave_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Phasing = 1;

	Shot_Speed = 6;
	Shot_Power = 20;
	Shot_Knockback = 0;
	Shot_Lifespan = 40;

	Shot_Pierce += 2;

	Shot_Grow = 1;
	Shot_Grow_Time = 40;
	Shot_Grow_Size = 0.1;

	Shot_Size = 0.5;

	scr_Shot_Creation();



}
