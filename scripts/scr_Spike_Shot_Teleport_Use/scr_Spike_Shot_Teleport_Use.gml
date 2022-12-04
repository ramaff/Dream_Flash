function scr_Spike_Shot_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Rising_Spike_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 20 * global.soulstateformboost * (1 + global.teleportboost);
	Shot_Knockback = 10;
	Shot_Lifespan = 23;
	
	Shot_Lifespan = 15;
	
	Shot_Off_State = 1;

	Shot_XX = lengthdir_x(dist, ang);
	Shot_YY = lengthdir_y(dist, ang);

	Shot_Phasing = 1;
	Shot_Ground = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Size = 0.5;

	scr_Shot_Creation();

}
