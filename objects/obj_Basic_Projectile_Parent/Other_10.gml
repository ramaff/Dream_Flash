/// @description Insert description here
// You can write your code in this editor

var _og_stats = shot_stats
var burstIndex = array_length(shot_stats.Shot_Burst_Stats) - 1;
var dir = -shot_stats.Shot_Burst_Stats[burstIndex].Spread / 2;
image = 1
var _v_burst_stats = shot_stats.Shot_Burst_Stats[burstIndex]
repeat(shot_stats.Shot_Burst_Stats[burstIndex].Amount) {
	with instance_create(x,y, asset_get_index(_v_burst_stats.Shot_Type)) {
		shot_stats = scr_Duplicate_Shot_Stats(_v_burst_stats, variable_clone(_og_stats), dir);
		
		shot_stats.Shot_Exist_Time = 0;
					
		scr_Shot_Burst_Stats(_v_burst_stats);
					
		if burstIndex > 0 {
			shot_stats.Shot_Burst_Stats = [];
			for(var i = 0; i <= burstIndex-1; i++) {
				array_insert(shot_stats.Shot_Burst_Stats,i,_og_stats.Shot_Burst_Stats[i])
			}
		} else {
			shot_stats.Shot_Burst_Stats = false;	
		}
		scr_Assign_Shot_Scripts();
	}
	dir += shot_stats.Shot_Burst_Stats[burstIndex].Spread;
}



