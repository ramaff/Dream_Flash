// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Class_Stat_Defense_Increase(){
	return ((global.soulassurance + global.soulassuranceTemp) / 20) + ((global.soulbliss + global.soulblissTemp) / 20) - ((global.souldespair + global.souldespairTemp) / 20)
}