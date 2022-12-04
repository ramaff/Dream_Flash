function scr_Soul_Punch_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Phasing = 1;

	Shot_Sprite = spr_Soul_Punch_Start;
	Shot_Type = obj_Beam_Shot;
	Shot_Duplicate_Sprite = spr_Soul_Punch_Shot;
	Shot_Beam = 1;
	
	Shot_Curve = 0.75
	Shot_Melee = 1;

	Shot_Speed = 0;
	Shot_Power = 20;
	Shot_Knockback = 15;
	Shot_Lifespan = 10;
	Shot_Size = 0.5;

	Shot_Burst_Power = Shot_Power;
	
	Shot_Point_Angle = 1;

	Shot_Beam_Count = 8;
	Shot_Beam_Curve = 0.75;
	
	Weapon_Split_Visible = 1;
	Weapon_Split_Hit_Again = 0;
	
	Shot_Pierce += 10;

	speed = 3;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	scr_Shot_Creation();

	/// Unlimited Targets, Max Range
	//scr_Hitscan_Damage(0,190);

	/*
	with (obj_Boss_Parent) {
    
	        if collision_line(other.x,other.y,other.x + lengthdir_x(190,Dir),other.y + lengthdir_y(190,Dir),self,false,false) {
	            with instance_create(other.x + lengthdir_x(190,Dir),other.y + lengthdir_y(190,Dir),obj_Weapon_Effect) {
					sprite_index = spr_Soul_Punch_Effect;
					image_xscale = 0.5;
					image_yscale = 0.5;
					image_angle = Dir;
					moveUp = 0;
					alarm[0] = 10;
				}
	        }
	}
	*/

	//scr_Shot_Creation();



}
