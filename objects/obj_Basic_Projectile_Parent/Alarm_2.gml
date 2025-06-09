/// @description Insert description here
// You can write your code in this editor
if global.gameParticles > 0 {

	alarm[2] = shot_stats.Shot_Trail_Frequency / global.gameParticles;

	if shot_stats.Shot_Trail > 0 and shot_stats.Shot_Trail < 3 {
	
		var xx = random(shot_stats.Shot_Trail_Area) - (shot_stats.Shot_Trail_Area / 2);
		var yy = random(shot_stats.Shot_Trail_Area) - (shot_stats.Shot_Trail_Area / 2);
		
		var _speed = 0;
		var _direction = 0;
	
		with instance_create(x + xx,y + yy, asset_get_index(shot_stats.Shot_Trail_Type)) {

			sprite_index = asset_get_index(other.shot_stats.Shot_Trail_Sprite);

			image_angle = other.image_angle;
			depth = other.depth - 1;
		
			image_blend = scr_Mix_Two_Color_Arrays(other.shot_stats.Shot_Trail_Color_1, other.shot_stats.Shot_Trail_Color_2)

			size = other.shot_stats.Shot_Size;
			image_xscale = size;
			image_yscale = size;
		
			life = other.shot_stats.Shot_Trail_Life;
			alarm[0] = life;
			
			speed = other.shot_stats.Shot_Trail_Speed
			direction = other.shot_stats.Shot_Trail_Direction - (other.shot_stats.Shot_Trail_Direction_Spread / 2) + random(other.shot_stats.Shot_Trail_Direction_Spread)
			
			base_direction = direction

		}
	
	} 

	if shot_stats.Shot_Trail = 3 {
	
		var xx = random(shot_stats.Shot_Trail_Area) - (shot_stats.Shot_Trail_Area / 2);
		var yy = random(shot_stats.Shot_Trail_Area) - (shot_stats.Shot_Trail_Area / 2);
	
		with instance_create(x + xx,y + yy, asset_get_index(shot_stats.Shot_Trail_Type)) {
		
			sprite_index = asset_get_index(other.shot_stats.Shot_Trail_Sprite);
		
			image_angle = other.image_angle;
			depth = other.depth - 1;
			
			image_blend = scr_Mix_Two_Color_Arrays(other.shot_stats.Shot_Trail_Color_1, other.shot_stats.Shot_Trail_Color_2)

			size = other.shot_stats.Shot_Size;
			image_xscale = size;
			image_yscale = size;
		
			life = other.shot_stats.Shot_Trail_Life;
			alarm[0] = life;
		
			if other.shot_stats.Shot_Trail_Type = obj_Black_Hole_Part {
				target = other.id
			} else {
				direction = point_direction(x,y,other.x,other.y);
				speed = point_distance(x,y,other.x,other.y) / life;
			}

		}
	
	}
	
}	
