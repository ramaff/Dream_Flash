// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Ascending_Soul_Weapon_Mod(){
	Shot_Speed += Charge_Speed;
	current_weapon_stats.Shot_Speed = Shot_Speed
	
	var increase_fact = (Charge_Power + Shot_Power) / Shot_Power;
	
	Shot_Power += Charge_Power;
	current_weapon_stats.Shot_Power = Shot_Power
	
	Shot_Burst_Power = increase_fact * Shot_Burst_Power;
	current_weapon_stats.Shot_Burst_Power = Shot_Burst_Power
	
	Shot_Knockback += Charge_Knockback;
	current_weapon_stats.Shot_Knockback = Shot_Knockback
	
	Shot_Lifespan += Charge_Lifespan;
	current_weapon_stats.Shot_Lifespan = Shot_Lifespan
	
	Shot_Size = Charge_Size;
	current_weapon_stats.Shot_Size = Shot_Size
}