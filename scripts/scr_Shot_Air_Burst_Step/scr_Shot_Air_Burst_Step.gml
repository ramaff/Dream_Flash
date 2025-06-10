// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Air_Burst_Step(){

	if shot_stats.Shot_Air_Burst_Stats != false {
		var burstIndex = array_length(shot_stats.Shot_Air_Burst_Stats) - 1;
		var near_boss = noone;
		if instance_exists(obj_Boss_Parent) {
			near_boss = instance_nearest(x,y, obj_Boss_Parent).id
		}
		if instance_exists(near_boss) and burstIndex >= 0 and shot_stats.Shot_Air_Burst_Stats[burstIndex] != false {
			var sprd = shot_stats.Shot_Air_Burst_Stats[burstIndex].Spread
			if distance_to_object(near_boss) <= shot_stats.Shot_Air_Burst_Stats[burstIndex].Range {
				var dir = -sprd / 2;
			
				var _stats = shot_stats
				var _obj = asset_get_index(shot_stats.Shot_Air_Burst_Stats[burstIndex].Shot_Type)
			
				shot_stats.Shot_Excess_Essence = shot_stats.Shot_Excess_Essence / shot_stats.Shot_Air_Burst_Stats[burstIndex].Amount
			
			    repeat(shot_stats.Shot_Air_Burst_Stats[burstIndex].Amount) {
				
					if sprd < 0 {
						dir = random(sprd) - (sprd / 2)
					}
			        with instance_create(x,y,_obj) {
						var _v_shot_air_burst_stats = other.shot_stats.Shot_Air_Burst_Stats[burstIndex]
				
						shot_stats = scr_Duplicate_Shot_Stats(_v_shot_air_burst_stats, variable_clone(_stats), dir);
					
						scr_Shot_Burst_Stats(_v_shot_air_burst_stats);
					
						shot_stats.Shot_Burst_Stats = _stats.Shot_Burst_Stats;
						shot_stats.Shot_Extra_Stats = _stats.Shot_Extra_Stats;
					
						if burstIndex > 0 {
							shot_stats.Shot_Air_Burst_Stats = [];
							for(var i = 0; i <= burstIndex-1; i++) {
								array_insert(shot_stats.Shot_Air_Burst_Stats,i, _stats.Shot_Air_Burst_Stats[i])
							}
						} else {
							shot_stats.Shot_Air_Burst_Stats = false;	
						}
			        }
			        dir += shot_stats.Shot_Air_Burst_Stats[burstIndex].Spread;
			    }
				instance_destroy();
			}
		}	
	}

}