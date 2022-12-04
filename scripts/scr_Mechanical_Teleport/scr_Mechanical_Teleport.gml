function scr_Mechanical_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Mechanical" {
		
		scr_Default_Weapon_Stats();

		Shot_Spread += 0;
		Shot_Accuracy += 5;
		Shot_Count += 3;

		Shot_Sprite = spr_Gear_Shield_Shot;
		Shot_Type = obj_Defense_Soul_Shot;

		Shot_Speed = 1.75;
		Shot_Power = 10 * global.soulstateformboost * (1 + global.teleportboost);
		Shot_Knockback = 10;
		Shot_Lifespan = 180;

		Shot_Shield_Type = 1;
		Shot_Shield_Power = Shot_Power * 2;

		Shot_Size = 0.5;
		Shot_Orbital_Type = 2;
		Shot_Orbital_Range = 60;
		Shot_Phasing = 1;
		
		Shot_Off_State = 1;

		scr_Shot_Creation();
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 3 * stdis;
		}
		
	}



}
