draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);
draw_set_halign(fa_center);
image_speed = 0;
image_index = 0;

image_alpha = 1;

depth = -3;

var ybott = camera_get_view_y(view) + 80 + 11;
var ytop = camera_get_view_y(view) + 156 + 379 + 64;


if global.recollectCategory = "Bosses" || global.recollectCategory = "State" || global.recollectCategory = "Information" {
	ybott -= 31;
	ytop += 30;
}

if (y < ybott) {
    image_alpha = 0;
}
if (y > ytop) {
    image_alpha = 0;
}
/*
recollectionString = "You cannot remember";
recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
recollectionPower = -999;
recollectionEssence = -999;
recollectionRecharge = -999;
recollectionSpeed = -999;
recollectionLifespan = -999;
recollectionAccuracy = -999;
recollectionExtraStats = "????";
recollectionDescription = "????"
recollectionCount = 0;

recollectionChamp = 0;

for(v = 0; v < 10; v++) {
	recollectionBSprite[v] = spr_Recollection_Unknown_Boss_Icon;
	recollectionBString[v] = "You cannot remember";
	recollectionHealth1[v] = -999;
	recollectionHealth2[v] = -999;
	recollectionDefense1[v] = -999;
	recollectionDefense2[v] = -999;
	recollectionDanger[v] = -999;
	recollectionImaginaryResist[v] = -999;
	recollectionSharpResist[v] = -999;
	recollectionExplosiveResist[v] = -999;
	recollectionMagicResist[v] = -999;
	recollectionEnergyResist[v] = -999;
}

if global.recollectCategory = "Items" {
recollectionSprite = spr_Recollection_Unknown_Weapon_Icon;
}
if global.recollectCategory = "Bosses" {
recollectionSprite = spr_Recollection_Unknown_Boss_Icon;
}
if global.recollectCategory = "State" {
recollectionSprite = spr_Recollection_State_Icon;
}
scr_Memory_Info_Bank();
//draw_text(x,y, recollectionString);

if is_string(itemVal) {
    itemNum = string_digits(itemVal);
    itemGroup = string_letters(itemVal);
    tempNum = 0;
    
    if itemGroup = "A" {
        tempNum = 1;
    }
    if itemGroup = "B" {
        tempNum = 2;
    }
    if itemGroup = "C" {
        tempNum = 3;
    }
    if itemGroup = "D" {
        tempNum = 4;
    }
    if itemGroup = "E" {
        tempNum = 5;
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
    if itemGroup = "J" {
        tempNum = 9;
    }
    if itemGroup = "K" {
        tempNum = 10;
    }
    if itemGroup = "M" {
        tempNum = 11;
    }
    if itemGroup = "R" {
        tempNum = 12;
    }
    
	image_index = tempNum;
} else {
}

if global.recollectCategory = "State" {
		recoNum = string_digits(itemVal);
		recollectionCount = global.recollectionState[recoNum];
	}
	
	if global.recollectCategory = "Information" {
		recoNum = string_digits(itemVal);
		if recoNum > 6 {
			recoNum = recoNum - 6;	
		}
	}
	*/


if image_alpha = 1 {
	if global.recollectCategory != "Bosses" and global.recollectCategory != "State" and global.recollectCategory != "Information" {
		if y > ytop - 82 {
			var showam = 82 - (y - (ytop - 82));
			var showdiff = 82 - sprite_get_height(recollectionSprite);
			draw_sprite_part_ext(sprite_index,image_index,0,0,164,showam * 2,x-41,y-41,0.5,0.5,c_white,1);
		} else if y < ybott + 82 {
			var showam = 82 - ((ybott + 82) - y);
			var showdiff = 82 - sprite_get_height(recollectionSprite);
			draw_sprite_part_ext(sprite_index,image_index,0,(82 - showam) * 2,164,showam * 2,x-41,y-41 + (82 - showam),0.5,0.5,c_white,1);
		} else {
			draw_self();	
		}
	} else {
		image_xscale = 1;
		image_yscale = 1;
		if y > ytop - 144 {
			var showam = 144 - (y - (ytop - 144));
			draw_sprite_part_ext(sprite_index,image_index,0,0,288,showam * 2,x-72,y-72,0.5,0.5,c_white,1);
		} else if y < ybott + 144 {
			var showam = 144 - ((ybott + 144) - y);
			draw_sprite_part_ext(sprite_index,image_index,0,(144 - showam) * 2,288,showam * 2,x-72,y-72 + (144 - showam),0.5,0.5,c_white,1);
		} else {
			draw_sprite_ext(sprite_index,image_index,x,y,0.5,0.5,0,c_white,1);
		}
	}
}


var boxSize = 82;

if global.recollectCategory != "Bosses" and global.recollectCategory != "State"  and global.recollectCategory != "Information" {
	var boxSize = 82;
} else {
	var boxSize = 144;
	//boxSize = sprite_get_height(recollectionSprite) * recollectionSize;
}

var rHeight = (sprite_get_height(recollectionSprite)) * recollectionSize;
var rWidth = (sprite_get_width(recollectionSprite)) * recollectionSize;

//var sOffset = (64 - sprite_get_height(recollectionSprite)) / 2;

var ind = 0;

if global.recollectCategory = "Information" {
	ind = recoNum - 1;
}

if image_alpha != 0 {
	if y > ytop - boxSize {
		//boxSize = 288;
		var showam = boxSize - (y - (ytop - boxSize));
		var showspr = rHeight - (y - (ytop - rHeight));
		//draw_sprite_part_ext(recollectionSprite,0,0,0,256/recollectionSize,showam/recollectionSize,x-(rWidth / 2),y-(rHeight / 2),recollectionSize,recollectionSize,c_white,1);
		draw_sprite_part_ext(recollectionSprite,ind,0,0,256/recollectionSize,showam/recollectionSize,x-(rWidth / 2),y-(boxSize / 2),recollectionSize,recollectionSize,c_white,1);
	} else if y < ybott + boxSize {
		//boxSize = -144;
		var showam = boxSize - ((ybott + boxSize) - y);
		var showspr = rHeight - ((ybott + rHeight) - y);
		//draw_sprite_part_ext(recollectionSprite,0,0,rHeight - (showam),256/recollectionSize,1600,x-(rWidth / 2),y - (rHeight / 2) + recollectionSize * (rHeight - (showam)),recollectionSize,recollectionSize,c_white,1);
		draw_sprite_part_ext(recollectionSprite,ind,0,(boxSize - showam) / recollectionSize,256/recollectionSize,boxSize / recollectionSize,x-(rWidth / 2),(y - (boxSize / 2)) + (boxSize - (showam)),recollectionSize,recollectionSize,c_white,1);
	} else {
		draw_sprite_ext(recollectionSprite,ind,x,y,recollectionSize,recollectionSize,0,c_white,1)	
	}
}

image_xscale = 0.5;
image_yscale = 0.5;


//draw_sprite_ext(recollectionSprite,0,x-(sprite_get_xoffset(recollectionSprite) * recollectionSize)+(rWidth / 2),y-(sprite_get_yoffset(recollectionSprite) * recollectionSize)+(rHeight / 2),recollectionSize,recollectionSize,0,c_white,1)	


//texture_set_interpolation(false);