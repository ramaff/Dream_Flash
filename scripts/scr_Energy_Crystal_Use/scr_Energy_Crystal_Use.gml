function scr_Energy_Crystal_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Frame = irandom(5);
	Shot_Image_Speed = 0;

	Shot_Beam = 1;

	Shot_Sprite = spr_Energy_Crystal_Start;
	Shot_Type = obj_Beam_Shot;
	Shot_Duplicate_Sprite = spr_Energy_Crystal_Shot;

	Shot_Speed = 0;
	Shot_Power = 12;
	Shot_Knockback = 0;
	Shot_Lifespan = 10;
	
	Shot_Beam = 1;

	Shot_Burst_Power = Shot_Power;
	
	Shot_Size = 0.5;
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;

	Shot_Pierce += 100;

	speed = 3;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y) - 180;
	
	scr_Shot_Creation()
	//scr_Beam_Damage();

	//scr_Beam_Damage();



}
