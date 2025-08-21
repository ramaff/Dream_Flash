

if shop = 0 {
	draw_sprite_ext(spr_Item_Template,0,x,y,spriteSize,spriteSize,0,c_white,1);
} 


image_speed = 0;
if is_string(itemVal) {
    
    draw_sprite_ext(spr_Item_Template,tempNum,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = tempNum;

	if itemGroup = "A" || itemGroup = "B" || itemGroup = "C" || itemGroup = "D" || itemGroup = "E" || itemGroup = "M" {
		if shop = 1 {
		    draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}
		if shop >= 2 {
		    draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}
	} else {
		if shop = 1 {
		    draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}	
		if shop >= 2 {
		    draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}	
	}
} else {
	spriteSize = 0.5;
	if shop = 1 {
		draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}	
	if shop >= 2 {
		draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}	
}

if weapon = 1 {
	var weapSpr = spr_Soul_Shot_Art;
	
	spriteSize = 0.5;
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	} else {
		exit;	
	}
	
	var _complexity = "Low"
	
	if variable_struct_exists(current_weapon_stats, "Complexity") {
		_complexity = current_weapon_stats.Complexity;	
	}
	
	var _complexity_index = 0;
	fieldColor = make_color_rgb(255, 0, 9)
	
	if _complexity = "Medium" {
		_complexity_index = 1;
		fieldColor = make_color_rgb(238, 10, 255)
		
	}
	if _complexity = "High" {
		_complexity_index = 2;	
		fieldColor = make_color_rgb(92, 43, 255)
	}
	
	draw_sprite_ext(spr_Soul_Weapon_Border,_complexity_index,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = 1;
	
	if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
		weapSpr = asset_get_index(current_weapon_stats.Recollection_Sprite)
		if weapSpr = -1 {
			weapSpr = spr_Soul_Shot_Art;	
		}
	}
	
	draw_sprite_ext(weapSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}



if weapon = 0 {
	draw_sprite_ext(itemSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

image_xscale = spriteSize;
image_yscale = spriteSize;