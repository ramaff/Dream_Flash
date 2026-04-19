// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Swap_Heart(_heart_id) {
	var _heart_stats = Soul_Hearts_Control.current_heart_stats;
	
	scr_Modify_Soul_Stats_From_Heart(_heart_stats, -1 * global.soulheartboost);
	
	switch(_heart_id) {
	
		case 2:
			_heart_stats = {
				"ssize": -0.3,
				"spowerfactor": -2,
				"sshotsizefactor": -0.3,
				"sdelayconservationfactor": 0.4,
				"smovementfactor": 0.3
			}
			break;
		case 4:
			_heart_stats = {
				"ssize": 0.3,
				"spowerfactor": 3,
				"sshotsizefactor": 0.3,
				"sdelayconservationfactor": -0.2,
				"smovementfactor": -0.3
			}
			break;
		default:
			_heart_stats = {}
	}
	Soul_Hearts_Control.current_heart_stats = _heart_stats
	
	scr_Modify_Soul_Stats_From_Heart(Soul_Hearts_Control.current_heart_stats, 1 * global.soulheartboost)
	
}