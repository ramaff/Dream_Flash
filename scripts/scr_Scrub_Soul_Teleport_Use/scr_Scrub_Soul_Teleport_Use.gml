function scr_Scrub_Soul_Teleport_Use(dist, ang) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Size = 0.325 + random(0.125);
	
	Shot_Sprite = spr_Shot_Bubble_Medium;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Power = 6 * global.soulstateformboost * (1 + global.teleportboost);
	
	Shot_Friction = 0.05;
	Shot_Min_Speed = 0.33;
	
	Shot_Homing_Type = 1;
	Shot_Homing_Range = 120;
    
	Shot_Speed = 3;
	Shot_Knockback = 0;
	Shot_Lifespan = 120;
	
	Shot_Mouse = 0;
	Shot_Shield_Type = 1;
	Shot_Shield_Power = Shot_Power * 2;
	
	Shot_Direction = random(360);
	
	Shot_Off_State = 1;

	Shot_XX = lengthdir_x(dist, ang) - 75 + random(150);
	Shot_YY = lengthdir_y(dist, ang) - 75 + random(150);
	scr_Shot_Creation();

}
