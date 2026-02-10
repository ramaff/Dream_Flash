// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Basic_Projectile_Burst(_xx, _yy){

	var _og_stats = shot_stats
	var burstIndex = array_length(shot_stats.Shot_Burst_Stats) - 1;
	var dir = -shot_stats.Shot_Burst_Stats[burstIndex].Spread / 2;
	image = 1
	var _v_burst_stats = shot_stats.Shot_Burst_Stats[burstIndex]

	repeat(shot_stats.Shot_Burst_Stats[burstIndex].Amount) {
		with instance_create_depth(_xx,_yy, depth, asset_get_index(_v_burst_stats.Shot_Type)) {
			shot_stats = scr_Duplicate_Shot_Stats(_v_burst_stats, variable_clone(_og_stats), dir);
					
			scr_Shot_Burst_Stats(_v_burst_stats);
			shot_stats.Shot_Exist_Time = 0;
			shot_stats.Shot_Soul_Maintain = 0;
					
			if burstIndex > 0 {
				shot_stats.Shot_Burst_Stats = [];
				for(var i = 0; i <= burstIndex-1; i++) {
					array_insert(shot_stats.Shot_Burst_Stats,i,_og_stats.Shot_Burst_Stats[i])
				}
			} else {
				shot_stats.Shot_Burst_Stats = false;	
			}
			shot_stats.Shot_Step_Scripts = []
			shot_stats.Shot_Draw_Scripts = []
			scr_Assign_Shot_Scripts();
		}
		dir += shot_stats.Shot_Burst_Stats[burstIndex].Spread;
	}

}