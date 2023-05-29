// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Life_Set(amount = 60){
	shotlifespan = amount
	alarm[0] = shotlifespan;
	shottimer = shotlifespan;
}