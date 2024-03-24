function scr_Mechanical_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Mechanical" {
		
		scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 10,
			Shot_Count: 3,
			Shot_Sprite: "spr_Gear_Shield_Shot",
			Shot_Type: "obj_Defense_Soul_Shot"
		};

		current_weapon_stats.Shot_Speed = 1.75;
		current_weapon_stats.Shot_Power = 10 * global.soulstateformboost * (1 + global.teleportboost);
		current_weapon_stats.Shot_Knockback = 10;
		current_weapon_stats.Shot_Lifespan = 180;

		current_weapon_stats.Shot_Shield_Type = 1;
		current_weapon_stats.Shot_Shield_Power = Shot_Power * 2;

		current_weapon_stats.Shot_Size = 0.5;
		current_weapon_stats.Shot_Orbital_Type = 2;
		current_weapon_stats.Shot_Orbital_Range = 60;
		current_weapon_stats.Shot_Phasing = 1;
		
		current_weapon_stats.Shot_Off_State = 1;
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

		scr_Shot_Creation();
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 3 * stdis;
		}
		
	}



}
