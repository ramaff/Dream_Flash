// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Morph_In(version = 1){
	if state = states.spawned { 
		
		with instance_create(x,y,obj_Boss_Overlay) {
			sprite_index = other.sprite_index;
			image_index = other.image_index;
			image_angle = other.image_angle;
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			
			bossSprite = other.sprite_index;
			
			//xxadd = 100;
			//yyadd = 100;
			
			xxadd = sprite_get_xoffset(bossSprite) - (sprite_get_width(bossSprite) / 2);
			yyadd = sprite_get_yoffset(bossSprite) - (sprite_get_height(bossSprite) / 2);
			
			depth = other.depth - 100;
			alarm[0] = 120;
			
			bossd = other.id;
			
			fade_out = true;
			alph = 1;
			
			backg = spr_Mental_Background;
			if global.currentchapter = 2 {
				backg = spr_Mental_Background_Feel;
			}
			if global.currentchapter = 3 {
				backg = spr_Mental_Background_Dream;
			}
		}
		if version = 1 {
			var ac = 0;
			for(ac = 0; ac < 10; ac++) {
				bossActiveAttackDelay[ac] += 120;
				bossPassiveAttackDelay[ac] += 120;
			}
		} else if version = 2 {
			active_attack_delay += 120;
		}
		state = states.phasing;
		
		if object_get_name(id) = obj_Cursed_Clapper {
			tickdown += 120;
		}
	}
	
	/*
	if state = states.phasing and object_get_name(id) != obj_Cursed_Clapper {
		speed = 0;	
		//path_speed = 0;
	}
	*/
}