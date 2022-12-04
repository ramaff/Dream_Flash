// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Charge_Stats(){
	
	if variable_struct_exists(current_weapon_stats, "Shot_Charge_Power") {
		Shot_Charge_Power = current_weapon_stats.Shot_Charge_Power
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Charge_Speed") {
		Shot_Charge_Speed = current_weapon_stats.Shot_Charge_Speed
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Charge_Lifespan") {
		Shot_Charge_Lifespan = current_weapon_stats.Shot_Charge_Lifespan
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Charge_Knockback") {
		Shot_Charge_Knockback = current_weapon_stats.Shot_Charge_Knockback
	}
	if variable_struct_exists(current_weapon_stats, "Shot_Charge_Size") {
		Shot_Charge_Size = current_weapon_stats.Shot_Charge_Size
	}
	if variable_struct_exists(current_weapon_stats, "Charge_Essence") {
		Charge_Essence = current_weapon_stats.Charge_Essence;
	}
	if variable_struct_exists(current_weapon_stats, "Charge_Time") {
		Charge_Total_Time = current_weapon_stats.Charge_Time;
	}
		
	/*if variable_struct_exists(current_weapon_stats, "Shot") {
		Shot = current_weapon_stats.Shot
	}*/
}