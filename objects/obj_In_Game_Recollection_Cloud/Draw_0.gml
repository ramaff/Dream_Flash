draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);

draw_set_halign(fa_center);

recollectionUpgradeString = "";

repeat(recollectionUpgrade + stacks - 1) {
    recollectionUpgradeString += "+";
}

image_xscale = 0.5;
image_yscale = 0.5;

var _y_offset = -40;

if shop > 0 || (string_length(recollectionExtraStats) > 30) || (string_length(recollectionDescription) > 30) || ((string_length(recollectionExtraStats) > 0) and (string_length(recollectionDescription) > 0)) {
	_y_offset = -80;
}

/*if leave = 1 {
	image_alpha = 1;
} */

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
draw_text_color(x,y+_y_offset, recollectionString + recollectionUpgradeString, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(Weak_Damage_Font)
//draw_set_alpha(image_alpha);
if recollectionExtraStats != 0 and recollectionExtraStats != "" {
	draw_text_ext_color(x,y+_y_offset+24, recollectionExtraStats,20,240, c_black, c_black, c_gray, c_gray, image_alpha);
	_y_offset += 24;
}
draw_text_ext_color(x,y+_y_offset+28, recollectionDescription,20,240, c_black, c_black, c_black, c_black, image_alpha);
if (string_count("+", recollectionDescription) > 2) and recollectionExtraStats == "" {
	_y_offset += 24;
}
//draw_set_alpha(1);

if priceString != "" {
	//draw_set_alpha(image_alpha);
	draw_text_color(x+84,y+_y_offset+114, string_hash_to_newline(priceString), c_black, c_black, c_black, c_black, image_alpha);
	draw_sprite_ext(recollectionPriceType,0,x+60,y+_y_offset+118, 0.5, 0.5, 0, c_white, 1)
	//draw_set_alpha(1);
}

if recollectionCount = 0 {
	draw_set_font(Weak_Damage_Font);
	draw_sprite_ext(spr_no_recollection_icon,0,x-94,y+_y_offset+123, 0.5, 0.5, 0, c_white, 1)
	draw_text_color(x-40,y+_y_offset+114, "No Recollection", c_black, c_black, c_black, c_black, image_alpha);	
}

//draw_set_alpha(1);

if image_alpha > 1 {
	image_alpha = 1;	
}
if image_alpha < 0 {
	image_alpha = 0;	
}