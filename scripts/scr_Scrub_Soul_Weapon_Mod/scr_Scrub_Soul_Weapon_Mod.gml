// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scrub_Soul_Weapon_Mod(_cw){
	
	if global.currentweapon < 700 and _cw.Shot_Off_State = 0 {
		if scr_State_Active_Check("Scrub") {
			_cw.Shot_Bubble_Air_Burst_Stats = [{}]
			_cw.Shot_Bubble_Air_Burst_Stats[0].Range = 180
			_cw.Shot_Bubble_Air_Burst_Stats[0].Spread = 15
			_cw.Shot_Bubble_Air_Burst_Stats[0].Amount = 1
			_cw.Shot_Bubble_Air_Burst_Stats[0].Shot_Count = 1;
			_cw.Shot_Bubble_Air_Burst_Stats[0].Shot_Type = _cw.Shot_Type
			_cw.Shot_Bubble_Air_Burst_Stats[0].Shot_Sprite = _cw.Shot_Sprite
			_cw.Shot_Bubble_Air_Burst_Stats[0].Shot_Accuracy = _cw.Shot_Accuracy
			_cw.Shot_Type = "obj_Bubble_Shot";
			_cw.Shot_Accuracy = max(120, _cw.Shot_Accuracy + 60);
		}
	}
}