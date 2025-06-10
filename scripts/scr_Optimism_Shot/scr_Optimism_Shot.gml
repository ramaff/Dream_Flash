function scr_Optimism_Shot(xxx,yyy, _bullet_power = other.bulletpower, _additional_power = 5) {
	
	current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 5,
		Shot_Count: 1,
		Shot_Mouse: 0,
		Shot_Sprite: "spr_Optimism_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 0.25 + random(0.5),
		Shot_Direction: other.direction,
		Shot_Acceleration: 0.05,
		Shot_Power: (_additional_power + _bullet_power / 2),
		Shot_Knock_Back: 10,
		Shot_Life_Span: 480,
		Shot_Pierce: 1,
		Shot_Size: 0.4 + random(0.1),
		Shot_Forward: 0,
		Shot_Follow_The_Leader: true,
		Shot_Form_Show: 0,
		Shot_XX: xxx - x,
		Shot_YY: yyy - y
	};
	
	if current_weapon_stats.Shot_Speed < 0 {
		current_weapon_stats.Shot_Speed = 0;	
	}
	if current_weapon_stats.Shot_Power < 0 {
		current_weapon_stats.Shot_Power = 0;	
	}
		
	if instance_exists(obj_Boss_Parent) {
		current_weapon_stats.Shot_Mouse = 0;
		current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	}
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	scr_Shot_Creation();


}
