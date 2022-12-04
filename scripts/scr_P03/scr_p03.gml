function scr_P03() {
	// Soul Hit Reactions

	if global.P[3] > 0 {

	    scr_Default_Weapon_Stats();
    
	    Shot_Spread += 0;
		Shot_Accuracy += 15;
		Shot_Count += 0;

		Shot_Sprite = spr_Vindictive_Soul;
		Shot_Type = obj_Lesser_Soul_Shot;
		Shot_Image_Speed = 1;
		Shot_Duplicate_Sprite = spr_Vindictive_Soul;

	
		Shot_Mouse = 0;
		if instance_exists(obj_Boss_Parent) {
			Shot_Direction = point_direction(x,y,instance_nearest(x,y, obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		} else {
			Shot_Direction = random(360);
		}
	
		Shot_Imaginary -= 1;
		Shot_Explosive += 1;

		Shot_Speed = 6;
		Shot_Power = 10 * ((20 + global.soulloathing + global.soulloathingTemp) / 20);
		Shot_Knockback = 10;
		Shot_Lifespan = 300;

		Shot_Homing_Type = 2;
		Shot_Homing_Range = 180;
		
		Shot_Face_Direction = 1;

		Shot_Extra_Hits[1] = 1;
		Shot_Extra_Hit_Frequency[1] = 95;
		Shot_Extra_Hit_Power[1] = 10 * ((20 + global.soulloathing + global.soulloathingTemp) / 20);

		Shot_Size = 0.5;
	
		Shot_Life_Drain = 0.3;

		/*
		Shot_Impact_Type = 1;
		Shot_Impact_Size = 75;
		Shot_Impact_Power = 15;
		*/

		Shot_Pierce += 3;
    
	    scr_Shot_Creation();

	}


}
