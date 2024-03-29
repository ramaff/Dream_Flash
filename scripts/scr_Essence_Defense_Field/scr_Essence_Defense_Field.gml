function scr_Essence_Defense_Field() {
	//scr_Default_Weapon_Stats();
	
	scr_Default_Weapon_Stats();
		
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 5,
		Shot_Count: 1,
		Shot_Mouse: 0,
		Shot_Sprite: "spr_Essence_Defense_Field",
		Shot_Type: "obj_Defense_Soul_Shot",
		Shot_Image_Speed: 1,
		Shot_Speed: 1,
		Shot_Power: 10,
		Shot_Knockback: 0,
		Shot_Life_Span: 12,
		Shot_Pierce: 30,
		Shot_Size: 0.45,
		Shot_Point_Angle: 1,
		Shot_Forward: 0,
		Shot_Essence_Drain: 0.5,
		Shot_Shield_Type: 2,
		Shot_Shield_Power: 10,
	};
		
	if instance_exists(obj_Boss_Parent) {
		current_weapon_stats.Shot_Mouse = 0;
		current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();
	}
	
	/*

	Shot_Spread += 0;
	Shot_Accuracy += 5;
	Shot_Count += 0;

	Shot_Mouse = 0;
	if instance_exists(instance_nearest(x,y,obj_Bullet_Parent)) {
		Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Bullet_Parent).x,instance_nearest(x,y,obj_Bullet_Parent).y);
	} else {
		exit;	
	}

	Shot_Sprite = spr_Essence_Defense_Field;
	Shot_Type = obj_Defense_Soul_Shot;

	Shot_Speed = 1;
	Shot_Power = 10;
	Shot_Knockback = 0;
	Shot_Life_Span = 12;
	Shot_Forward = 0;

	Shot_Shield_Type = 2;
	Shot_Shield_Power = 10;

	Shot_Essence_Drain = 0.5;

	Shot_Pierce += 30;
	Shot_Phasing = 1;
	
	Shot_Point_Angle = 1;

	Shot_Size = 0.45;

	scr_Shot_Creation();
	*/



}
