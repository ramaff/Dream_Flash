function scr_Mechanical_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Mechanical" {
		
		var _current_weapon_stats = {};
		
		_current_weapon_stats.Shot_Spread = 0;
		_current_weapon_stats.Shot_Accuracy = 10;
		_current_weapon_stats.Shot_Count = 3;
		_current_weapon_stats.Shot_Sprite = "spr_Gear_Shield_Shot";
		_current_weapon_stats.Shot_Type = "obj_Defense_Soul_Shot";

		_current_weapon_stats.Shot_Speed = 1.75;
		_current_weapon_stats.Shot_Power = 10 * global.soulstateformboost * (1 + global.teleportboost);
		_current_weapon_stats.Shot_Knock_Back = 10;
		_current_weapon_stats.Shot_Life_Span = 180;

		_current_weapon_stats.Shot_Shield_Type = 1;
		_current_weapon_stats.Shot_Shield_Power = _current_weapon_stats.Shot_Power * 2;

		_current_weapon_stats.Shot_Size = 0.5;
		_current_weapon_stats.Shot_Orbital_Type = 2;
		_current_weapon_stats.Shot_Orbital_Range = 60;
		_current_weapon_stats.Shot_Phasing = 1;
		
		_current_weapon_stats.Shot_Off_State = 1;
		
		_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);

		scr_Shot_Creation(_current_weapon_stats);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 3 * stdis;
		}
		
	}



}
