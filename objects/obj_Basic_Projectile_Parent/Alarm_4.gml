/// @description Insert description here
// You can write your code in this editor

if global.gameParticles > 0 {

	alarm[4] = shot_stats.Shot_Lightning_Trail_Frequency / global.gameParticles;
	
	if shot_stats.Shot_Lightning_Trail > 0 {
	
		var xx = random(shot_stats.Shot_Lightning_Trail_Area) - (shot_stats.Shot_Lightning_Trail_Area / 2);
		var yy = random(shot_stats.Shot_Lightning_Trail_Area) - (shot_stats.Shot_Lightning_Trail_Area / 2);
		
		var _speed = 0;
		var _direction = 0;
	
		with instance_create(x + xx,y + yy, obj_Weapon_Trail) {

			sprite_index = spr_Thicker_Lightning_Streak;
			image_index = irandom(2);

			image_angle = random(360);
			depth = other.depth - 1;
		
			image_blend = scr_Color_From_Array(other.shot_stats.Shot_Lightning_Trail_Color);

			size = other.shot_stats.Shot_Size;
			image_xscale = size;
			image_yscale = size;
		
			life = 10
			alarm[0] = life;

		}
	
	} 

}

