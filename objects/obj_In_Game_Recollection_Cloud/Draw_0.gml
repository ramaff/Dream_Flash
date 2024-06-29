draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);

draw_set_halign(fa_center);

recollectionUpgradeString = "";

repeat(recollectionUpgrade) {
    recollectionUpgradeString += "+";
}

recollectionIndex = 0;

image_xscale = 0.5;
image_yscale = 0.5; 

if image_alpha >= 0.25 {
    recollectionIndex = 1;
}
if image_alpha >= 0.5 {
    recollectionIndex = 2;
}
if image_alpha >= 0.75 {
    recollectionIndex = 3;
}

var _y_offset = -50;

if shop > 0 || (string_length(recollectionExtraStats) > 50) {
	
	var _y_offset = -70;
}

if leave = 1 {
	recollectionIndex = image_index;	
	image_alpha = 1;
}

draw_sprite_ext(sprite_index,recollectionIndex,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
if image_alpha >= 0.5 {
	draw_set_alpha(image_alpha);
	draw_text(x,y+_y_offset, string_hash_to_newline(recollectionString + recollectionUpgradeString));
	if recollectionExtraStats != 0 {
		draw_text_ext(x,y+_y_offset+32, string_hash_to_newline(recollectionExtraStats),24,200);
	}
	draw_set_alpha(1);
}


if priceString != "" {
    if image_alpha >= 0.5 {
	    draw_set_alpha(image_alpha);
		if shop != 3 {
		    draw_text(x+204,y-128, string_hash_to_newline(priceString));
		    draw_sprite_ext(recollectionPriceType,0,x,y+_y_offset, 0.5, 0.5, 0, c_white, 1)
		} else {
			draw_text(x+192,y-128, string_hash_to_newline(priceString));
		}
	    draw_set_alpha(1);
    }
}

draw_set_alpha(1);

if image_alpha > 1 {
	image_alpha = 1;	
}
if image_alpha < 0 {
	image_alpha = 0;	
}