// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Power_Up(){
	if global.soultransformedstate != "Base" and obj_Soul_Parent.scurrentstate = "Base" and global.soultransformedstate != "None" and (obj_Soul_Parent.sstatecharge = obj_Soul_Parent.smaxstate) {
		var drainfac = (1 + global.soulstatedrainslow);
		
		if global.soultransformedstate = "Snake" {
			obj_Soul_Parent.sstatedrainrate = (10 / 36) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Beast" {
			obj_Soul_Parent.sstatedrainrate = (10 / 45) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Spike" {
			obj_Soul_Parent.sstatedrainrate = (10 / 45) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Scrub" {
			obj_Soul_Parent.sstatedrainrate = (10 / 45) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Casting" {
			obj_Soul_Parent.sstatedrainrate = (10 / 45) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Bleeding" {
			obj_Soul_Parent.sstatedrainrate = (10 / 36) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		if global.soultransformedstate = "Mechanical" {
			obj_Soul_Parent.sstatedrainrate = (10 / 45) / drainfac;
			global.soulstatedrainrate = obj_Soul_Parent.sstatedrainrate;
		}
		
		
		global.currentstate = "Powering Up";
		obj_Soul_Parent.scurrentstate = "Powering Up";
		obj_Soul_Parent.statepoweruptime = 70;
	}
	
}