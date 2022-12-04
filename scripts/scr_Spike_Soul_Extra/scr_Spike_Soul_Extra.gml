// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spike_Soul_Extra(){
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if (obj_Soul_Parent.scurrentstate = "Spike" || (obj_Soul_Parent.stransformedstate = "Spike" and reverie = true)) {
		if global.SpikeExtra > 5 {
			Shot_Count = round(Shot_Count * (5 * global.soulstateformboost));
			
			Shot_Spread += 360 / Shot_Count;
			global.SpikeExtra = 0;
		}
		global.SpikeExtra++;
	}
}