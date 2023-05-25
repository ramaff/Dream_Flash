// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Channel_Boss_Kill(type = "None"){
	if room = State_Room {
		if global.soultransformedstate = "None" {
			if type = "Snake" {
				global.snakeprogress++;
			}
			if type = "Beast" {
				global.beastprogress++;
			}
			if type = "Mech" {
				global.mechprogress++;
			}
			if type = "Scrub" {
				global.scrubprogress++;
			}
			if type = "Spike" {
				global.spikeprogress++;
			}
			if type = "Bleeding" {
				global.bleedingprogress++;
			}
			if type = "Casting" {
				global.castingprogress++;
			}
			if type = "Ascending" {
				global.ascendingprogress++;
			}
	
			var sDir = random(360);

			repeat(8) {
				with instance_create(x,y,obj_State_Essence) {
					direction = sDir;
					speed = 15;
				}
				sDir += 45;
			}
		} else {
			global.soulstate += 4;
			scr_Stat_Up_Indication("STE")
			scr_Stat_Up_Indication("STE")
		}
	}
	
	scr_State_Form_Unlock();
}