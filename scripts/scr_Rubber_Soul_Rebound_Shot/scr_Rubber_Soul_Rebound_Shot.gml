function scr_Rubber_Soul_Rebound_Shot() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Mouse = 0;
	Shot_Direction = other.direction + 180;

	Shot_Sprite = other.sprite_index;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Size = other.bulletsize;
	Shot_Size = other.image_xscale;
	Shot_Forward = 0;

	Shot_Angle = other.image_angle + 180;

	if other.bulletspeed > 0 {
	    Shot_Speed = 6 + other.bulletspeed; 
	} else {
	    Shot_Speed = 0; 
	}
	Shot_Power = other.bulletpower * 3;
	if Shot_Speed < 2 {
		Shot_Speed = 2;	
	}
	if Shot_Power < 5 {
		Shot_Power = 5;	
	}
	Shot_Knockback = 10;
	Shot_Lifespan = 100;

	scr_Shot_Creation();

	with(other) {
	    instance_destroy();
	}



}
