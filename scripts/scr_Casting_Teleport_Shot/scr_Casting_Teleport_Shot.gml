function scr_Casting_Teleport_Shot(xxx, yyy, distance) {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: "spr_Pure_Magic_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot"
	};

	current_weapon_stats.Shot_Mouse = 0;
	current_weapon_stats.Shot_Direction = other.direction + 180;
	
	if instance_exists(obj_Boss_Parent) {
		current_weapon_stats.Shot_Direction = point_direction(xxx,yyy,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);	
	}

	current_weapon_stats.Shot_Size = 0.4;
	current_weapon_stats.Shot_Forward = 0;
	//current_weapon_stats.Shot_Point_Angle = 1;
	current_weapon_stats.Shot_Off_State = 1;
	current_weapon_stats.Shot_XX = xxx - x;
	current_weapon_stats.Shot_YY = yyy - y;
	/*current_weapon_stats.Shot_Homing_Type = 3;
	current_weapon_stats.Shot_Homing_Range = 500;
	current_weapon_stats.Shot_Homing_Speed = 5; */
	//current_weapon_stats.Shot_Point_Angle = true;
	current_weapon_stats.Shot_Orbital_Type = 2;
	current_weapon_stats.Shot_Orbital_Range = distance;
	current_weapon_stats.Shot_Orbit_Angle = point_direction(x,y,xxx,yyy);
	current_weapon_stats.Shot_Speed = 4;
	current_weapon_stats.Shot_Power = (5 + other.bulletpower / 4) * global.soulstateformboost * (1 + global.teleportboost);
	if current_weapon_stats.Shot_Speed < 0 {
		current_weapon_stats.Shot_Speed = 0;	
	}
	if current_weapon_stats.Shot_Power < 0 {
		current_weapon_stats.Shot_Power = 0;	
	}
	current_weapon_stats.Shot_Knock_Back = 10;
	current_weapon_stats.Shot_Life_Span = 240;
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

	scr_Shot_Creation();



}
