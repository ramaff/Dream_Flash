function scr_Essence_Beam_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 0.1;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Essence_Beam_Start;
	Shot_Type = obj_Beam_Shot;
	Shot_Duplicate_Sprite = spr_Essence_Beam_Shot;

	Shot_Beam = 2;

	Shot_Speed = 0;
	//Shot_Power = 1 + (2 * sBeamAlpha);
	Shot_Power = 7.5;
	if sWeaponTicker mod 3 = 0 { 
		Shot_Damage = true;
	} else {
		Shot_Damage = false;
	}
	Shot_Knockback = 0;
	Shot_Lifespan = 1;
	
	Shot_Burst_Power = Shot_Power;
	
	Shot_Size = global.essencebeamsize;
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;
	
	global.essencebeamsize = min(0.6, global.essencebeamsize + 0.3);

	Shot_Armour_Pierce += 10;
	Shot_Pierce += 100;

	speed = floor(1 + Shot_Power * 0.15);
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y) - 180;

	//scr_Beam_Damage();
	scr_Shot_Creation();


}
