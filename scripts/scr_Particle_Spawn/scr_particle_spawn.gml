// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Particle_Spawn(partCount, partArea, partDirection, partSpeed, partSprite, partSize, partLife, partColor, partAngle = c_white){
	
	if global.gameParticles > 0 {
	
		var xx = partArea / 2 - random(partArea);
		var yy = partArea / 2 - random(partArea);
	
		with instance_create(x + xx,y + yy,obj_Weapon_Trail) {
		
			depth = other.depth + 2;
		
			sprite_index = partSprite;
		
			image_angle = partAngle;

			size = partSize;
			image_xscale = size;
			image_yscale = size;
		
			life = partLife;
		
			image_blend = partColor;
		
			alarm[0] = life;

		}
	}
	
}