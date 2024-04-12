// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spike_Soul_Extra(){
	
	
	if scr_State_Active_Check("Spike") {
        var _spike_trail = {
            "Shot_Count": 1,
            "Shot_Sprite": "spr_Rising_Spike",
            "Shot_Type": "obj_Lesser_Soul_Shot",
            "Shot_Extra_Hit_Frequency": 3,
            "Shot_Speed": 0,
            "Shot_Alpha": 1,
            "Shot_Movement": 0,
            "Shot_Spread": 0,
            "Burst_Power": 0.1,
            "Shot_Life_Span": 15,
            "Shot_Point_Angle": false,
            "Shot_Phasing": 1,
            "Weapon_Melee": 1,
            "Shot_Pierce": 99,
            "Shot_Ground": true,
            "Shot_Forward": 1,
            "Shot_Size": 0.15 + random(0.1),
			"Shot_Angle": -30 + random(60),
            "Shot_Image_Speed": 1,
            "Weapon_Split_Hit_Again": 1,
            "Weapon_Split_Visible": 1,
        }
		
		var _base_stats = scr_Setup_Default_Shot_Stats()
	
		_spike_trail = scr_Struct_Merge(_base_stats, _spike_trail, false)
		
		current_weapon_stats.Shot_Extra_Stats = [
			_spike_trail
		]
		
		current_weapon_stats.Shot_Spike_Aura = true
		/*
		if global.SpikeExtra > 5 {
			Shot_Count = round(Shot_Count * (5 * global.soulstateformboost));
			
			Shot_Spread += 360 / Shot_Count;
			global.SpikeExtra = 0;
		}
		global.SpikeExtra++; */
	}
}