// Location: Weapon Use List

function scr_Bleeding_Blade_Use() {
	//scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: "spr_Bleeding_Spear_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot"
	};
	
	//scr_Setup_Weapon_Stats(current_weapon_stats);

	current_weapon_stats.Shot_Phasing = 1;
	current_weapon_stats.Weapon_Soul_Maintain = 1;
	//current_weapon_stats.Shot_Mouse = 1;
	current_weapon_stats.Weapon_Melee = 1;
	current_weapon_stats.Shot_Speed = 0;
	current_weapon_stats.Shot_Power = 8 + (weaponCost * 2);
	current_weapon_stats.Shot_Knockback = 10 + sqrt(Shot_Power);
	current_weapon_stats.Shot_Lifespan = 7;
	current_weapon_stats.Shot_Angle = point_direction(x,y,mouse_x,mouse_y);
	//current_weapon_stats.Shot_Angle = 90 + point_direction(x,y,mouse_x,mouse_y);
	//current_weapon_stats.Shot_Image_Rotation_Speed = -30;
	current_weapon_stats.Shot_Pierce = 20;
	//current_weapon_stats.Shot_Shield_Type = 3;
	//current_weapon_stats.Shot_Shield_Power = Shot_Power / 5;
	current_weapon_stats.Shot_Redirect = 1;
	current_weapon_stats.Shot_Redirect_Chance = 100;
	current_weapon_stats.Shot_Bleed = 1 + floor(Shot_Power / 10);
	current_weapon_stats.Shot_Bleed_Time = 60;
	current_weapon_stats.Shot_Bleed_Ticks = 3;
	current_weapon_stats.Shot_Point_Angle = 0;

	speed = 8;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);

	current_weapon_stats.Shot_Size = 0.35 + (sqrt(Shot_Power) / 40);
	
	scr_Setup_Weapon_Stats(current_weapon_stats);

	scr_Shot_Creation();
	
	scr_Sound_Effect(sd_Sword_Slash);



}
