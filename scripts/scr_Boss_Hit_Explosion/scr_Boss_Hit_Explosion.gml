// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Hit_Explosion(){
	
	var excount = floor(shot_stats.Shot_Impact_Size / 10)
	
	scr_Particle_Burst(obj_Explosion_Particle, shotexplosionsprite, shot_stats.Shot_Trail_Color1, shot_stats.Shot_Trail_Color2, excount, shot_stats.Shot_Trail_Hit_Speed * 1.5, 0, 360 / excount, shot_stats.Shot_Trail_Area, shot_stats.Shot_Size * 1.5, shot_stats.Shot_Trail_Hit_Life, true)
	
	//part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
	//part_type_color_mix(ptype, make_color_rgb(150,255,150),make_color_rgb(50,255,50));
	//part_type_alpha1(ptype, 1);
	/*
	part_type_life(obj_Particle_Control.pshotexplodetype,8,8);
	part_type_sprite(obj_Particle_Control.pshotexplodetype,shotexplosionpart,1,0,0);
	
	part_type_orientation(obj_Particle_Control.pshotexplodetype, 0, 359, 0, 0, 1);
	//part_type_alpha2(obj_Particle_Control.pshotexplodetype,1,1);
	//part_type_speed()
				
	repeat(floor(shot_stats.Shot_Impact_Size / 10 )) {
		var psize = (0.4 + random(0.6)) * (shot_stats.Shot_Impact_Size / 150);
		part_type_size(obj_Particle_Control.pshothittype,psize,psize,0,0);
		scr_Explosion_Splash();
	} */
}