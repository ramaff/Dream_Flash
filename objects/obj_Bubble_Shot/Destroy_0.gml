/// @description Insert description here
// You can write your code in this editor
dir = -shotburstspread / 2;
repeat(shotburstamount) {
	with instance_create(x,y,obj_Lesser_Soul_Shot) {
		shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
				
		scr_Duplicate_Shot_Stats();
		shot_stats.Shot_Size = other.shot_stats.Shot_Size_Max;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		sprite_index = other.shotduplicatesprite;
		shot_stats.Shot_Form_Show = 0;
		image_alpha = 1;
		shot_stats.Shot_Homing_Type = 0;
		shot_stats.Shot_Speed = other.shot_stats.Shot_Min_Speed * 7;
		speed = shot_stats.Shot_Speed;
		shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
		alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
		
		shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
		
		shot_stats.Shot_Size_Relation = 1;
		if instance_exists(obj_Boss_Parent) {
			direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);	
		}
	}
	dir += shotburstspread / shotburstamount;
}
shotbursttype = 0;

scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, make_color_rgb(89, 0, 255), make_color_rgb(255, 73, 253), 10, 10, 270, 360);
