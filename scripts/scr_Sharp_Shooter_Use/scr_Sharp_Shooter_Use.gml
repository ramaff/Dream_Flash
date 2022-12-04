function scr_Sharp_Shooter_Use() {
	scr_Default_Weapon_Stats();

	Shot_Imaginary -= 1;
	Shot_Sharp_And_Solid += 1;

	Shot_Size = 0.5;

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Sharp_Shooter_Streak_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Frag_Shot;

	//Shot_Beam = 1;

	Shot_Speed = 20;
	Shot_Power = 33;
	Shot_Knockback = 20;
	Shot_Lifespan = 30;

	Shot_Pierce += 1;

	Shot_Burst_Type = 1;
	Shot_Burst_Amount = 3;
	Shot_Burst_Power = 11;
	
	Shot_Point_Angle = 1;

	Shot_Mouse = 1;
	//Shot_Direction = point_direction(x,y,mouse_x,mouse_y);
	//Length = 1000;

	scr_Hitscan_Damage(0,2000);




}
