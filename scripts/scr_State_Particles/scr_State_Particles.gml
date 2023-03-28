// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Particles(){
	if scurrentstate != "Base" {
		var parts = spr_State_Part;
		var partrad = 64
		
		if scurrentstate = "Snake" {
			parts = spr_Snake_Part;	
			partrad = 96;
		}
		
		if scurrentstate = "Beast" {
			parts = spr_Beast_Part;	
			partrad = 112;
		}
		
		
		if scurrentstate = "Spike" {
			parts = spr_Spike_Part;	
			partrad = 96;
		}
		
		if scurrentstate = "Scrub" {
			parts = spr_Scrub_Part;	
			partrad = 96;
		}
		
		if scurrentstate = "Bleeding" {
			parts = spr_Bleeding_Part;	
			partrad = 96;
		}
		
		if scurrentstate = "Casting" {
			parts = spr_Casting_Part;	
			partrad = 112;
		}
		
		if scurrentstate = "Ascending" {
			parts = spr_Casting_Part;	
			partrad = 112;
		}
		
		var partx = 20;
		if image_xscale < 0 {
			partx = -20;	
		}
		
		if scurrentstate = "Mechanical" {
			parts = spr_Mechanical_Part;	
			partrad = 112;
			partx = 0;
		}
		
		with instance_create(x + partx - (partrad / 2) + random(partrad), y - 12 - (partrad / 2) + random(partrad),obj_State_Trail) {
		
			sprite_index = parts;
		
			direction = 65 + random(50);
			speed = 1.25 + random(3);

			size = 0.2 + random(0.3) + (partrad / 640);
			image_xscale = size;
			image_yscale = size;
		
			life = 20 + irandom(20);
			alarm[0] = life;
			alarm[1] = life / 2;
		
			depth = other.depth + 2;

		}
	}
}