function scr_Power_Whip_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 25;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Power_Whip_Start;
	Shot_Type = obj_Beam_Shot;
	//Weapon_Melee = 1;
	
	Shot_Duplicate_Sprite = spr_Power_Whip_Shot;
	Shot_Beam = 3;

	Shot_Speed = 0;
	Shot_Power = 27;
	Shot_Knockback = 11;
	Shot_Lifespan = 10;
	//Shot_Image_Speed = 1;
	//Shot_Frame = 6 * irandom(2);
	Shot_Size = 0.55;
	Shot_Burst_Power = Shot_Power;
	
	Shot_Point_Angle = 1;

	Shot_Pierce += 20;
	Shot_Beam_Count = 9;
	Shot_Beam_Curve = 0.75;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;

	speed = 3;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	scr_Shot_Creation();



}
