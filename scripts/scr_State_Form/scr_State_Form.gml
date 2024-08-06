// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Form(){
	if scurrentstate = "Base" and sprite_index != spr_The_Soul_Hard_Think {
		sprite_index = spr_The_Soul_Trail_Sway;
	}
	
	if scurrentstate = "Base" and global.bosscount > 0 and !scr_State_Recollection_Unlocked() {
		scr_State_Power_Up();	
	}
	
	if scurrentstate = "Powering Up" {
		//sprite_index = spr_Soul_Powering_Up;	
		scr_F03(true);
	} else if scurrentstate != "Base" {
		scr_F03(false);
	}
	
	if scurrentstate = "Powering Up" {
		image_index = 14 - ceil(statepoweruptime / 5);
		if global.soultransformedstate = "Snake" {
			sprite_index = spr_Snake_Powering_Up;
		}
		if global.soultransformedstate = "Beast" {
			sprite_index = spr_Beast_Powering_Up;
		}
		if global.soultransformedstate = "Mechanical" {
			sprite_index = spr_Mechanical_Powering_Up;	
		}
		if global.soultransformedstate = "Scrub" {
			sprite_index = spr_Scrub_Powering_Up;	
		}
		if global.soultransformedstate = "Spike" {
			sprite_index = spr_Spike_Powering_Up;
		}
		if global.soultransformedstate = "Bleeding" {
			sprite_index = spr_Bleeding_Powering_Up;
		}
		if global.soultransformedstate = "Casting" {
			sprite_index = spr_Casting_Powering_Up;
		}
		if global.soultransformedstate = "Ascending" {
			sprite_index = spr_Ascending_Powering_Up;
		}
	}
	
	if scurrentstate != "Base" and global.bosscount = 0 {
		scr_Tutorial_Note_Spawn("state_tutorial")	 
	}
	
	if scurrentstate != "Base" and scurrentstate != "Powering Up" {
		scr_State_Drain_Set();	
	}
	
	if scurrentstate = "Snake" {
		if sprite_index != spr_Snake_Soul_Hard_Think {
			sprite_index = spr_Snake_Soul;
		}
	}
	
	if scurrentstate = "Beast" {
		if sprite_index != spr_Beast_Soul_Hard_Think {
			sprite_index = spr_Beast_Soul;
		}
	}
	
	if scurrentstate = "Scrub" {
		if sprite_index != spr_Scrub_Soul_Hard_Think {
			sprite_index = spr_Scrub_Soul;
		}
	}
	
	if scurrentstate = "Spike" {
		if sprite_index != spr_Spike_State_Hard_Think {
			sprite_index = spr_Spike_State;
		}
	}
	
	if scurrentstate = "Bleeding" {
		if sprite_index != spr_Bleeding_Soul_Hard_Think {
			sprite_index = spr_Bleeding_Soul;
		}
	}
	
	if scurrentstate = "Casting" {
		if sprite_index != spr_Casting_Soul_Hard_Think {
			sprite_index = spr_Casting_Soul;
		}
	}
	
	if scurrentstate = "Mechanical" {
		if sprite_index != spr_Mechanical_Soul_Hard_Think {
			sprite_index = spr_Mechanical_Soul;
		}
	}
	
	if scurrentstate = "Ascending" {
		if sprite_index != spr_Ascending_Soul_Hard_Think {
			sprite_index = spr_Ascending_Soul;
		}
	}
}