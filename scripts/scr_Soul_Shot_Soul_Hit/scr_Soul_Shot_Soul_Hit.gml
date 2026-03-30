// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Soul_Hit(_minion = false){

	//if other.shot_stats.Shot_Damage {
		if other.shot_stats.Shot_Healing = 1 and other.shot_stats.Shot_Exist_Time mod other.shot_stats.Shot_Extra_Hits_Frequency = 0 {
			var _amt = other.shot_stats.Shot_Power
			if _minion {
				_amt = _amt * 5;
				shealth += _amt
			} else {
				scr_Update_Soul_Health(shealth + _amt);
			}

			scr_setup_dmg_indicator(other.x,other.y, _amt, c_fuchsia)
			
			
			shealth = min(smaxhealth, shealth)	
		}
		if other.shot_stats.Shot_Refreshing = 1 and other.shot_stats.Shot_Exist_Time mod other.shot_stats.Shot_Extra_Hits_Frequency = 0 {
			var _amt = other.shot_stats.Shot_Power
			
			if !_minion {
				scr_Refresh_Soul(_amt)
			}
		}
		//}
	
	//}

}