function scr_Beast_Maw_Use() {
	current_weapon_stats = scr_Setup_Default_Shot_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 20,
		Shot_Count: 1,
		Shot_Sprite: "spr_Beast_Maw",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 0,
		Shot_Movement: 0,
		Shot_Power: 5 * global.soulheartboost,
		Shot_Knock_Back: 10,
		Shot_Life_Span: 23,
		Shot_Size: 0.4,
		Shot_Phasing: 1,
		Shot_Melee: true,
		Shot_Pierce: 100
	};
	
	var _target = instance_nearest(x, y, obj_Boss_Parent)
	
	var dist = point_distance(x,y,_target.x,_target.y);
	if dist > 200 {
		dist = 200;	
	}
	var ang = point_direction(x,y,_target.x,_target.y) - 30 + random(60);
	
	current_weapon_stats.Shot_XX = lengthdir_x(dist, ang);
	current_weapon_stats.Shot_YY = lengthdir_y(dist, ang);
	current_weapon_stats.Shot_Life_Drain = 1;
	
	speed = 10;
	friction = 2;
	direction = ang;
	
	if scr_Chance(5) {
		current_weapon_stats.Shot_Screen_Shake = 4
		current_weapon_stats.Shot_Life_Drain = 2;
		current_weapon_stats.Shot_Size = 0.7;
		current_weapon_stats.Shot_Power = 14 * global.soulheartboost;
		speed = 15;
	}
		
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

	scr_Shot_Creation();
	
	var delay = 15;
	
	delay = (delay - sdelayconservation) / sdelayconservationfactor / ((160 + global.souldexterity + global.souldexterityTemp) / 160);	
	
	alarm[4] = delay;

}
