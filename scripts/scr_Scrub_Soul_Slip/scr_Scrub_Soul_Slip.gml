// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scrub_Soul_Slip(){
	if scurrentstate = "Scrub" {
		if soulFriction > 0.5 {
			soulFriction = 0.5;
		}
	}
}