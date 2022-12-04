function scr_Soul_Strike_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Soul_Strike_Start;
	Shot_Type = obj_Beam_Shot;
	Shot_Duplicate_Sprite = spr_Soul_Strike_Shot;
	Shot_Beam = 1;

	Shot_Speed = 0
	Shot_Power = 90;
	Shot_Knockback = 40;
	Shot_Lifespan = 10;
	Shot_Size = (0.75);
	Shot_Image_Speed = 1;

	Shot_Pierce += 10;

	Shot_Burst_Power = Shot_Power;
	
	Shot_Point_Angle = 1;

	Shot_Beam_Count = 10;
	Shot_Beam_Curve = 0.75;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;
	
	Shot_Pierce += 10;

	scr_Shot_Creation();

	speed = 10;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	/*
	var len = 400 * Shot_Size;


	/// Unlimited Targets, Max Range
	scr_Hitscan_Damage(1,len);
	*/

}
