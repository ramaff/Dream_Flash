// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Particle_Suck_In(particletype = obj_Bullet_Trail_Target, particlesprite = spr_Soul_Big_Bit, particlecolor1 = c_white, particlecolor2 = c_white, burstcount = 0, burstspeed = 10, burstdir = 0, burstspread = 360, particleArea = 0, partSize = 0.5, partLife = 10, burstUniformSpread = false, xoffset = 0, yoffset = 0) {
	if global.gameParticles > 0 {
		repeat(burstcount) {
			
			var dist = sqrt(random(particleArea * particleArea));
			var angle = random(360);
		
			var xx = lengthdir_x(dist, angle)
			var yy = lengthdir_y(dist, angle)
	
			with instance_create(x + xx,y + yy, particletype) {
		
				target = other.id;
		
				sprite_index = particlesprite;
		
				image_angle = other.image_angle;
				
				if particletype = obj_Pointy_Part {
					image_angle = direction;	
				}
				
				depth = other.depth + 5;
		
				image_blend = merge_colour(particlecolor1, particlecolor2, random(1));

				size = partSize;
				image_xscale = size;
				image_yscale = size;
		
				life = partLife;
				alarm[0] = life;
				
				direction = point_direction(x,y,other.x,other.y);
				speed = point_distance(x,y,other.x,other.y) / life;
				
				xxx = xoffset;
				yyy = yoffset;
			}	
		}
	}
}