var spriteSize = 0.8;

if shop = 0 {
draw_sprite_ext(spr_Item_Template,0,x,y,spriteSize,spriteSize,0,c_white,1);
} else {
//draw_sprite_ext(spr_Weapon_Template,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

//draw_text(x,y,string(itemVal));
itemGroup = string_letters(itemVal);

if is_string(itemVal) {
    itemNum = string_digits(itemVal);
    itemGroup = string_letters(itemVal);
    tempNum = 0;
    
    if itemGroup = "A" {
        tempNum = 1;
		spriteSize = 0.5;
    }
    if itemGroup = "B" {
        tempNum = 2;
		spriteSize = 0.5;
    }
    if itemGroup = "C" {
        tempNum = 3;
		spriteSize = 0.5;
    }
    if itemGroup = "D" {
        tempNum = 4;
		spriteSize = 0.5;
    }
    if itemGroup = "E" {
        tempNum = 5;
		spriteSize = 0.5;
    }
    if itemGroup = "F" {
        tempNum = 6;
    }
    if itemGroup = "G" {
        tempNum = 7;
    }
    if itemGroup = "H" {
        tempNum = 8;
    }
	if itemGroup = "I" {
        tempNum = 9;
    }
    if itemGroup = "J" {
        tempNum = 10;
    }
    if itemGroup = "K" {
        tempNum = 11;
    }
	if itemGroup = "L" {
        tempNum = 12;
    }
    if itemGroup = "M" {
        tempNum = 13;
		spriteSize = 0.5;
    }
	if itemGroup = "N" {
        tempNum = 14;
    }
	if itemGroup = "OA" {
        tempNum = 15;
    }
	if itemGroup = "OB" {
        tempNum = 16;
    }
	if itemGroup = "OC" {
        tempNum = 17;
    }
	if itemGroup = "P" {
        tempNum = 18;
    }
	if itemGroup = "Q" {
        tempNum = 19;
    }
    if itemGroup = "R" {
        tempNum = 20;
    }
	if itemGroup = "S" {
        tempNum = 21;
    }
	if itemGroup = "T" {
        tempNum = 22;
    }
	if itemGroup = "U" {
        tempNum = 23;
    }
	if itemGroup = "V" {
        tempNum = 24;
    }
	if itemGroup = "W" {
        tempNum = 25;
    }
	if itemGroup = "XA" {
        tempNum = 26;
    }
	if itemGroup = "XB" {
        tempNum = 27;
    }
	if itemGroup = "XC" {
        tempNum = 28;
    }
	spriteSize = 0.5;
    
    draw_sprite_ext(spr_Item_Template,tempNum,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = tempNum;
} else {
	spriteSize = 0.5;
    //draw_sprite_ext(spr_Weapon_Template,1,x,y,spriteSize,spriteSize,0,c_white,1);
	draw_sprite_ext(spr_Soul_Weapon_Border,1,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = 1;
	//sprite_index = spr_Weapon_Template;
}

image_speed = 0;
//draw_text(x,y,string(itemVal));
if is_string(itemVal) {
	itemNum = string_digits(itemVal);
    itemGroup = string_letters(itemVal);
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


if hopeDiamond = true {
	draw_sprite_ext(spr_Hope_Item_Diamond,0,x,y,spriteSize,spriteSize,0,c_white,1);
}


if weapon = 1 {
	var weapSpr = spr_Soul_Shot_Art;
	
	spriteSize = 0.5;
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	} else {
		exit;	
	}
	if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
		weapSpr = asset_get_index(current_weapon_stats.Recollection_Sprite)
		if weapSpr = -1 {
			weapSpr = spr_Soul_Shot_Art;	
		}
	}
	
	draw_sprite_ext(weapSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

var itemSpr = spr_Strength_Up_Item;
spriteSize = 0.5;


if variable_struct_exists(global.item_stats, string(itemVal)) {
	current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
	if variable_struct_exists(current_item_stats, "recollectionSprite") {
		itemSpr = asset_get_index(current_item_stats.recollectionSprite)
		if itemSpr = -1 {
			itemSpr = spr_Soul_Shot_Art;	
		}
	}
}

if weapon = 0 {
	draw_sprite_ext(itemSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

image_xscale = spriteSize;
image_yscale = spriteSize;