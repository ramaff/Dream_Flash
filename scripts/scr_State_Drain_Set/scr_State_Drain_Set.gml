// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Drain_Set(){
	var drainfac = (1 + global.soulstatedrainslow);
	var duration = 45; // I have no clue what the unit here is
		
	if global.soultransformedstate = "Snake" {
		duration = 36;
	}
		
	if global.soultransformedstate = "Beast" {
		duration = 45;
	}
	
	if global.soultransformedstate = "Mechanical" {
		duration = 45;
	}
	
	if global.soultransformedstate = "Scrub" {
		duration = 45;
	}
		
	if global.soultransformedstate = "Spike" {
		duration = 45;
	}
		
	if global.soultransformedstate = "Casting" {
		duration = 45;
	}
	
	if global.soultransformedstate = "Bleeding" {
		duration = 36;
	}
	
	if global.soultransformedstate = "Ascending" {
		duration = 55;
	}
	
	obj_Soul_Parent.sstatedrainrate = (10 / duration) / drainfac;
	global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
}