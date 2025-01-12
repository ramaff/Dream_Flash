function scr_Item_Spawn() {
	
	fieldType = argument[0];
	currItem = 1;
	totalItems = 0;
	
	var i = 0;

	for(i = 1; i <= 13; i ++) {
	    item[i] = argument[i];
	    if item[i] != 0 and i != 13 and item[i] != "0" {
	        totalItems++;
	    }
	}
	
	var fieldSprite = spr_Variety_Item_Field;
	var tFieldColor = make_color_rgb(255,237,3);
	
	if fieldType = "Strength Field" {
	    fieldSprite = spr_Strength_Item_Field; 
		tFieldColor = make_color_rgb(255,6,20);	
	    }
	if fieldType = "Vitality Field" {
	    fieldSprite = spr_Vitality_Item_Field;
		tFieldColor = make_color_rgb(214,0,255);	
	    }
	if fieldType = "Essence Field" {
	    fieldSprite = spr_Essence_Item_Field; 
		tFieldColor = make_color_rgb(0,156,255);	
	    }
	if fieldType = "Dexterity Field" {
	    fieldSprite = spr_Dexterity_Item_Field; 
		tFieldColor = make_color_rgb(0,255,8);	
	    }
	if fieldType = "Perception Field" {
	    fieldSprite = spr_Perception_Item_Field; 
		tFieldColor = make_color_rgb(140,0,255);	
	    }
	if fieldType = "State Field" {
	    fieldSprite = spr_State_Item_Field; 
		tFieldColor = make_color_rgb(255,74,0);	
	}
	if fieldType = "Hope Field" {
		fieldSprite = spr_Hope_Item_Field;
		tFieldColor = make_color_rgb(214,0,255);
	}
	if fieldType = "Bliss Field" {
		var fieldSprite = spr_Bliss_Item_Field;
		var tFieldColor = make_color_rgb(3,255,119);	
	}
	if fieldType = "Assurance Field" {
		var fieldSprite = spr_Assurance_Item_Field;
		var tFieldColor = make_color_rgb(3,98,255);	
	}
	if fieldType = "Loathing Field" {
		var fieldSprite = spr_Loathing_Item_Field;
		var tFieldColor = make_color_rgb(187,14,0);	
	}
	if fieldType = "Paranoia Field" {
		var fieldSprite = spr_Paranoia_Item_Field;
		var tFieldColor = make_color_rgb(0,29,198);	
	}
	if fieldType = "Despair Field" {
		var fieldSprite = spr_Despair_Item_Field;
		var tFieldColor = make_color_rgb(55,34,95);	
	}
	if fieldType = "Blank Field" {
		var fieldSprite = spr_Variety_Item_Field;
		var tFieldColor = make_color_rgb(255,255,255);	
	}
	if fieldType = "Misc Field" {
	    fieldSprite = spr_Variety_Item_Field; 
		tFieldColor = make_color_rgb(255,237,3);	
	}
	if fieldType = "Hyper Field" {
	    fieldSprite = spr_Hyper_Item_Field; 
		tFieldColor = make_color_rgb(0,255,127);	
	}
	if fieldType = "Weapon Field" {
		fieldSprite = spr_Weapon_Item_Field; 
		tFieldColor = make_color_rgb(255,6,41);	
	}
	if fieldType = "Chamber" {
		fieldSprite = spr_Mind_Item_Field; 
		tFieldColor = make_color_rgb(214,0,255);	
	}
	
	//show_debug_message("somehow scr_Item_Spawn")

	with instance_create(room_width/2,room_height/2,obj_Item_Field) {
	    sprite_index = fieldSprite;
		fieldColor = tFieldColor;
	}

	if fieldType = "Strength Field" || fieldType = "Vitality Field" || fieldType = "Dexterity Field" || fieldType = "Essence Field" || fieldType = "Perception Field" || fieldType = "State Field" {
	    if item[13] != 0 and item[13] != "0" {
	        with instance_create(1024 + 50,576,obj_Item_Parent) {
				shop = 0;
	            itemOrbit = 0;
	            path_start(Item_Path_Minus,25,path_action_continue,1)
	            path_position = 0.5;
	            itemVal = other.item[13];
	            if string_digits(itemVal) = itemVal {
	                itemVal = real(itemVal);
	            }
	            itemData = 19;
				
				fieldColor = tFieldColor;
				
				hopeDiamond = false;
				
				scr_Initial_Item_Memory_Get()
	        }
	    }
	}

	var iTier = "Not Special";
	/*
	if wTier = "Special" {
		itemform = choose(19,20,53,114,206,412,413);	
	}
	*/

	for(i = 1; i <= 12; i++) {
		iTier = scr_Check_Special(item[i]);
	    if item[i] != 0 and item[i] != "0" {
		    with instance_create(1024 + 50,576,obj_Item_Parent) {
				shop = 0;
		        itemOrbit = 1 + floor((i-1) / 4);
				itemOrbit = 1;
		        path_start(Item_Path,25,path_action_continue,1)
		        path_position = (i / other.totalItems);
		        itemVal = other.item[i];
		        if string_digits(itemVal) = itemVal {
		            itemVal = real(itemVal);
		        }
		        itemData = 6 + i;
		        if other.fieldType = "Weapon Field" {
		            weapon = 1;
		        }
				if other.fieldType = "Hyper Field" {
					stacks = 3;	
				}
				
				if i > 2 {
					hopeDiamond = true;	
				}
				
				
				fieldColor = tFieldColor;
				
				scr_Initial_Item_Memory_Get()
		    }
		}
	}




}
