function scr_Beast_Maw_Use() {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 20,
		Shot_Count: 1,
		Shot_Sprite: "spr_Beast_Maw",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 0,
		Shot_Movement: 0,
		Shot_Power: 14 * global.soulstateformboost,
		Shot_Knockback: 10,
		Shot_Lifespan: 23,
		Shot_Screen_Shake: 5,
		Shot_Size: 0.8,
		Shot_Phasing: 1,
		Weapon_Melee: 1,
		Shot_Pierce: 100
	};
	
	var dist = point_distance(x,y,mouse_x,mouse_y);
	if dist > 200 {
		dist = 200;	
	}
	var ang = point_direction(x,y,mouse_x,mouse_y);
	
	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang - 15 + random(30));
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang - 15 + random(30));
	current_weapon_stats.Shot_Life_Drain = 0.5;
		
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

	scr_Shot_Creation();
	
	var delay = 25 + random(10);
	
	delay = (delay - sdelayconservation) / sdelayconservationfactor / ((160 + global.souldexterity + global.souldexterityTemp) / 160);	
	
	alarm[4] = delay;
	
	
	/*

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Beast_Maw;
	Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Duplicate_Sprite = spr_Phase_Magic_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 14 * global.soulstateformboost;
	Shot_Knockback = 10;
	Shot_Lifespan = 23;
	
	Shot_Screen_Shake = 5;
	
	var dist = point_distance(x,y,mouse_x,mouse_y);
	if dist > 200 {
		dist = 200;	
	}
	var ang = point_direction(x,y,mouse_x,mouse_y);
	
	Shot_XX = lengthdir_x(dist, ang - 15 + random(30));
	Shot_YY = lengthdir_y(dist, ang - 15 + random(30));
	Shot_Life_Drain = 0.5;

	Shot_Phasing = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Size = 0.8;

	scr_Shot_Creation();
	*/

	

}
