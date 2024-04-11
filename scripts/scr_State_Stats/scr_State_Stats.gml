// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Stats(){
	if obj_Soul_Parent.scurrentstate = "Base" {
		obj_Soul_Parent.smovementspeed = 5;
		global.soulmovementspeed = 5;
		obj_Soul_Parent.sstatefirerate = 1;
		global.soulstatefirerate = 1;
	} else {
		if global.F[10] >= 1 {
			obj_Soul_Parent.shealth -= 0.025;	
		}	
	}
	
	
	
	if obj_Soul_Parent.scurrentstate = "Snake" {
		obj_Soul_Parent.smovementspeed = 5 + (2.5 * global.soulstateformboost);
		global.soulmovementspeed = 5 + (2.5 * global.soulstateformboost);
	}
	
	if obj_Soul_Parent.scurrentstate = "Beast" {
		obj_Soul_Parent.smovementspeed = 5 + (1 * global.soulstateformboost);
		global.soulmovementspeed = 5 + (1 * global.soulstateformboost);
	}
	
	if obj_Soul_Parent.scurrentstate = "Spike" {
		obj_Soul_Parent.smovementspeed = 5 + (0.5 * global.soulstateformboost);
		global.soulmovementspeed = 5 + (0.5 * global.soulstateformboost);
	}
	
	if obj_Soul_Parent.scurrentstate = "Casting" {
		obj_Soul_Parent.sstatefirerate = 1 - (0.5);
		global.soulstatefirerate = 1 - (0.5);
	}
	
	if obj_Soul_Parent.scurrentstate = "Bleeding" {
		obj_Soul_Parent.sstatefirerate = 1 - (0.45);
		global.soulstatefirerate = 1 - (0.45);
		
		obj_Soul_Parent.smovementspeed = 5 + (2.5 * global.soulstateformboost);
		global.soulmovementspeed = 5 + (2.5 * global.soulstateformboost);
	}
	
	if obj_Soul_Parent.scurrentstate = "Mechanical" {
		obj_Soul_Parent.sstatefirerate = 1 - (0.45);
		global.soulstatefirerate = 1 - (0.45);
	}
	
	if obj_Soul_Parent.scurrentstate = "Scrub" {
		obj_Soul_Parent.sstatefirerate = 1 + (0.66 * global.soulstateformboost);
		global.soulstatefirerate = 1 + (0.66 * global.soulstateformboost);
	}
}