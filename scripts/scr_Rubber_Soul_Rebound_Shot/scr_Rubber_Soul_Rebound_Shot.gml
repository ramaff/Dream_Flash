function scr_Rubber_Soul_Rebound_Shot(_b_speed, _b_power) {
	
	current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 5,
		Shot_Count: 1,
		Shot_Mouse: 0,
		Shot_Sprite: sprite_get_name(other.sprite_index),
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 6 + _b_speed,
		Shot_Direction: other.direction + 180,
		Shot_Power: max(1, _b_power) * 3 * global.B[5],
		Shot_Knock_Back: 10,
		Shot_Life_Span: 100,
		Shot_Pierce: 1,
		Shot_Size: other.image_xscale,
		Shot_Forward: 0,
		Shot_Form_Show: 0,
		Shot_Angle: other.image_angle + 180
	};
	
	if current_weapon_stats.Shot_Speed < 2 {
		current_weapon_stats.Shot_Speed = 2;	
	}
	if current_weapon_stats.Shot_Power < 5 {
		current_weapon_stats.Shot_Power = 5;	
	}
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	scr_Shot_Creation();
	
	with(other) {
	    instance_destroy();
	}


}
