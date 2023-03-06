// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Lightning_Chain(max_streaks = 30, streak_target = noone, chains = 1, xst = x, yst = y, streak_length = 64, chain_damage = 5, streak_color = c_white, chain_range = 500){
	
	var bosses_struck = {};
	variable_struct_set(bosses_struck, other.id, other.id)
	
	while instance_exists(streak_target) and chains > 0 {
		streak_target = noone
		var streak_dis = 99999
		with obj_Boss_Parent {
			var cur_dis = distance_to_object(other);
			var hit_again = variable_struct_exists(bosses_struck, id)
			if !hit_again {
				if cur_dis < streak_dis {
					if point_distance(x,y,xst,yst) < chain_range {
						streak_target = id;
						streak_dis = cur_dis;
					}
				}
			}
		}
		if instance_exists(streak_target) {
			//var boss_target = instance_nearest(x,y,obj_Boss_Parent)
			var aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y);
			var boss_dist = point_distance(xst, yst, streak_target.x, streak_target.y);
			while boss_dist > 70 and max_streaks > 0 {
				with instance_create(xst, yst, obj_Lightning_Streak) {
					image_angle = aim_angle;
					image_blend = streak_color;
				}
				xst += lengthdir_x(streak_length, aim_angle)
				yst += lengthdir_y(streak_length, aim_angle)
				aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y) - 90 + random(180);
				boss_dist = point_distance(xst, yst, streak_target.x, streak_target.y);
				max_streaks--;
			}
			var boss_aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y);
			with instance_create(xst, yst, obj_Lightning_Streak) {
				image_angle = boss_aim_angle;
				image_blend = streak_color;
			}
			with streak_target {
				bosshealth -= chain_damage;
            
				scr_Damage_Indicator(0, chain_damage, 1);
			}
			variable_struct_set(bosses_struck, streak_target, streak_target)
			chains--;
			xst = streak_target.x;
			yst = streak_target.y;
		} else {
			max_streaks = 1 + irandom(1);
			aim_angle = random(360);
			while max_streaks > 0 {
				with instance_create(xst, yst, obj_Lightning_Streak) {
					image_angle = aim_angle;
					image_blend = streak_color;
				}
				xst += lengthdir_x(streak_length, aim_angle)
				yst += lengthdir_y(streak_length, aim_angle)
				aim_angle = aim_angle - 90 + random(180);
				max_streaks--;
			}
		}
	}
}