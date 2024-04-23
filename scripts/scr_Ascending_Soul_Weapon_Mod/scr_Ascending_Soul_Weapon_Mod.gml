// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Ascending_Soul_Weapon_Mod(){
	current_weapon_stats.Shot_Speed += Charge_Speed;
	
	var increase_fact = (Charge_Power + current_weapon_stats.Shot_Power) / current_weapon_stats.Shot_Power;
	
	current_weapon_stats.Shot_Power += Charge_Power;
	
	current_weapon_stats.Shot_Burst_Power = increase_fact * current_weapon_stats.Shot_Burst_Power;
	
	current_weapon_stats.Shot_Knock_Back += Charge_Knockback;
	
	current_weapon_stats.Shot_Life_Span += Charge_Lifespan;
	
	current_weapon_stats.Shot_Size = Charge_Size;
}