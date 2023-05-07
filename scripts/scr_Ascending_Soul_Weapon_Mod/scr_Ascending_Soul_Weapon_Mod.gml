// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Ascending_Soul_Weapon_Mod(){
	Shot_Speed += Charge_Speed;
	
	var increase_fact = (Charge_Power + Shot_Power) / Shot_Power;
	
	Shot_Power += Charge_Power;
	Shot_Burst_Power = increase_fact * Shot_Burst_Power;
	Shot_Knockback += Charge_Knockback;
	Shot_Lifespan += Charge_Lifespan;
	Shot_Size = Charge_Size;
}