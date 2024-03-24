function scr_Weapon_Rebound_Mouse() {
	bsize = other.image_xscale;
	bsprite = other.sprite_index;
	bspeed = other.bulletspeed;
	xrelation = other.x - x;
	yrelation = other.y - y;
	biangle = other.image_angle;

	if bspeed > 50 {
		exit;	
	}
	
	var pow = max(1, shot_stats.Shot_Rebound_Power)

	with(obj_Soul_Parent) {
		scr_Default_Weapon_Stats();
		
		Shot_XX = other.xrelation;
		Shot_YY = other.yrelation;
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 5,
			Shot_Count: 1,
			Shot_Mouse: 0,
			Shot_Sprite: sprite_get_name(other.bsprite),
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 4,
			Shot_Direction: other.image_angle, //point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y),
			Shot_Power: pow,
			Shot_Knockback: 10,
			Shot_Lifespan: 100,
			Shot_Pierce: 1,
			Shot_Size: other.bsize,
			Shot_Forward: 0,
			Shot_Form_Show: 0,
			Shot_Angle: other.image_angle, //point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y)
			Shot_Init_Grow: 0
		};
	
		if other.bspeed > 0 {
	        current_weapon_stats.Shot_Speed = 3 + other.bspeed; 
	    }
	
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();

	}
	with(other) {
	    instance_destroy();
	}



}
