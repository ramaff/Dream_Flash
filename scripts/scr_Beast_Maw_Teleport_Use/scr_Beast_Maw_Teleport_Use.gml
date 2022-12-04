function scr_Beast_Maw_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Beast_Maw;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 30 * global.soulstateformboost * (1 + global.teleportboost);
	Shot_Knockback = 10;
	Shot_Lifespan = 23;
	
	Shot_Screen_Shake = 6;

	Shot_XX = lengthdir_x(dist, ang);
	Shot_YY = lengthdir_y(dist, ang);
	Shot_Life_Drain = 0.5;

	Shot_Phasing = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Size = 0.8;

	scr_Shot_Creation();

	var delay = 25 + random(10);
	
	delay = (delay - sdelayconservation) / sdelayconservationfactor / ((160 + global.souldexterity + global.souldexterityTemp) / 160);	
	
	alarm[4] = delay;

}
