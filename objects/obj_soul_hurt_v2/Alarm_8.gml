/// @description Insert description here
// You can write your code in this editor

if global.gameParticles > 0 {
	if bpart > 0 {
		
		var color = bpartcolor1;		
		var color2 = bpartcolor2;
		scr_Particle_Burst(obj_Weapon_Trail, bpartsprite, color, color2, 1, 0,
						   random(360), 0, bpartarea, (bulletsize * 2) * bpartsize + random(0.1),
						   bpartlife, false)
	
	}

	alarm[8] = bpartfrequency / global.gameParticles;
}
