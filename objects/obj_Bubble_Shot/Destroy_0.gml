/// @description Insert description here
// You can write your code in this editor
dir = -shot_stats.Shot_Spread / 2;
if is_array(shot_stats.Shot_Air_Burst_Stats) {
	var _pop_stats = shot_stats.Shot_Air_Burst_Stats[0]
	repeat(_pop_stats.Shot_Count) {
		with instance_create(x,y,asset_get_index(_pop_stats.Shot_Type)) {
			//shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
				
			scr_Duplicate_Shot_Stats(_pop_stats, scr_Dupe_Struct(other.shot_stats));
			/*shot_stats.Shot_Size = other.shot_stats.Shot_Size_Max;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			//sprite_index = other.shotduplicatesprite;
			shot_stats.Shot_Form_Show = 0;
			image_alpha = 1;
			shot_stats.Shot_Homing_Type = 0;
			shot_stats.Shot_Speed = other.shot_stats.Shot_Min_Speed * 7;
			speed = shot_stats.Shot_Speed;
			shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
			alarm[0] = shot_stats.Shot_Life_Span;
			//shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
		
			shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
		
			shot_stats.Shot_Size_Relation = 1;
			*/
			if instance_exists(obj_Boss_Parent) {
				direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
				direction += (random(1) - 0.5) * shot_stats.Shot_Accuracy
			}
		}
		dir += shot_stats.Shot_Spread / shot_stats.Shot_Air_Burst_Stats[0].Shot_Count;
	}
}
//shotbursttype = 0;

scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, make_color_rgb(89, 0, 255), make_color_rgb(255, 73, 253), 10, 10, 270, 360);
