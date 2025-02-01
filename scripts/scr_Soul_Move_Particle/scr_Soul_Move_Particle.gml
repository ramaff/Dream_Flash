// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Move_Particle(xx, yy, type, _blend = c_white){
	var partrad = 15;
	var parts = spr_Diamond_Part
	
	if scurrentstate != "Base" {
		parts = spr_State_Part;
	}
		
	if scurrentstate = "Snake" {
		parts = spr_Snake_Part;	
	}
		
	if scurrentstate = "Beast" {
		parts = spr_Beast_Part;	
	}
	
	if scurrentstate = "Mechanical" {
		parts = spr_Mechanical_Part;	
	}
	
	if scurrentstate = "Scrub" {
		parts = spr_Scrub_Part;	
	}
		
	if scurrentstate = "Spike" {
		parts = spr_Spike_Part;	
	}
	
	if scurrentstate = "Bleeding" {
		parts = spr_Bleeding_Part;	
	}
		
	if scurrentstate = "Casting" {
		parts = spr_Casting_Part;	
	}
	
	var partx = 10;
	if image_xscale < 0 {
		partx = -10;	
	}
	
	if type = "Teleport" {
		with instance_create(xx + partx - (partrad / 2) + random(partrad), yy + 12 - (partrad / 2) + random(partrad),obj_Friction_Part) {
		
			sprite_index = parts;
		
			direction = 45 + random(90);
			speed = 1.25 + random(3);

			size = 0.2 + random(0.3) + (partrad / 640);
			image_xscale = size;
			image_yscale = size;
		
			life = 30 + irandom(30);
			alarm[0] = life;
			alarm[1] = life / 2;
		
			depth = other.depth + 2;
			
			image_blend = _blend;

		}
	} else {
		with instance_create(xx + partx - (partrad / 2) + random(partrad), yy + 12 - (partrad / 2) + random(partrad),obj_Soul_Trail) {
		
			sprite_index = parts;
		
			direction = 45 + random(90);
			speed = 1.25 + random(3);

			size = 0.35 + random(0.2) + (partrad / 640);
			image_xscale = size / 3;
			image_yscale = size / 3;
		
			life = 30 + irandom(30);
			alarm[0] = life;
			alarm[1] = 1;
		
			depth = other.depth + 2;
			
			image_blend = _blend;

		}
	}
}