draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);

draw_set_halign(fa_center);

recollectionUpgradeString = "";

repeat(recollectionUpgrade) {
    recollectionUpgradeString += "+";
}

image_xscale = 0.5;
image_yscale = 0.5;

var _y_offset = -50;

if shop > 0 || (string_length(recollectionExtraStats) > 50) {
	
	var _y_offset = -60;
}

if leave = 1 {
	image_alpha = 1;
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
if image_alpha >= 0.5 {
	draw_set_alpha(image_alpha);
	if recollectionExtraStats != 0 {
		draw_text_ext(x,y+_y_offset+32, string_hash_to_newline(recollectionExtraStats),24,200);
	} else {
		_y_offset += 30;	
	}
	draw_text(x,y+_y_offset, string_hash_to_newline(recollectionString + recollectionUpgradeString));
	draw_set_alpha(1);
}


if priceString != "" {
    if image_alpha >= 0.5 {
	    draw_set_alpha(image_alpha);
		draw_text(x+24,y+_y_offset+104, string_hash_to_newline(priceString));
		draw_sprite_ext(recollectionPriceType,0,x,y+_y_offset+108, 0.5, 0.5, 0, c_white, 1)
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