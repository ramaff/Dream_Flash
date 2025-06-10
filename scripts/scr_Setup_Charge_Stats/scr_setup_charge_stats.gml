// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Charge_Stats(_current_weapon_stats){
	
	if variable_struct_exists(_current_weapon_stats, "Shot_Charge_Power") {
		Shot_Charge_Power = _current_weapon_stats.Shot_Charge_Power
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Charge_Speed") {
		Shot_Charge_Speed = _current_weapon_stats.Shot_Charge_Speed
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Charge_Lifespan") {
		Shot_Charge_Lifespan = _current_weapon_stats.Shot_Charge_Lifespan
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Charge_Knockback") {
		Shot_Charge_Knockback = _current_weapon_stats.Shot_Charge_Knockback
	}
	if variable_struct_exists(_current_weapon_stats, "Shot_Charge_Size") {
		Shot_Charge_Size = _current_weapon_stats.Shot_Charge_Size
	}
	if variable_struct_exists(_current_weapon_stats, "Charge_Essence") {
		Charge_Essence = _current_weapon_stats.Charge_Essence;
	}
	if variable_struct_exists(_current_weapon_stats, "Charge_Time") {
		Charge_Total_Time = _current_weapon_stats.Charge_Time;
	}
		
	/*if variable_struct_exists(_current_weapon_stats, "Shot") {
		Shot = _current_weapon_stats.Shot
	}*/
}