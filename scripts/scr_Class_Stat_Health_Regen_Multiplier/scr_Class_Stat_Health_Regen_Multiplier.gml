// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Class_Stat_Health_Regen_Multiplier(){
	return 1 + ((global.soulvitality + global.soulvitalityTemp) / 40) + (((global.soulbliss + global.soulblissTemp)) / 80)
}