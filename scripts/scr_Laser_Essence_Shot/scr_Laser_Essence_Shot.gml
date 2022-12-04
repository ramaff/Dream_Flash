function scr_Laser_Essence_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Laser_Start;
	Shot_Type = obj_Beam_Shot;
	Shot_Duplicate_Sprite = spr_Laser_Shot;

	Shot_Beam = 1;

	Shot_Speed = 0;
	Shot_Power = 18;
	Shot_Knockback = 0;
	Shot_Lifespan = 10;
	
	Shot_Burst_Power = Shot_Power;
	
	Shot_Size = 0.5;
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;

	Shot_Pierce += 100;

	//scr_Beam_Damage();
	scr_Shot_Creation();


}
