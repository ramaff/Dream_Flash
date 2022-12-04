draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);

draw_set_halign(fa_center);

recollectionUpgradeString = "";

repeat(recollectionUpgrade) {
    recollectionUpgradeString += "+";
}

recollectionIndex = 0;

if image_alpha >= 0.25 {
    recollectionIndex = 1;
}
if image_alpha >= 0.5 {
    recollectionIndex = 2;
}
if image_alpha >= 0.75 {
    recollectionIndex = 3;
}

var cloudS = spr_Recollection_Hover_Cloud;
if leave = 1 {
	cloudS = spr_Recollection_Hover_Cloud_Leave;
	image_speed = 1/60;
}
if recollectionMirror = 1 {
	//cloudS = spr_Reco_Hover_Cloud_Left;
}
if recollectionMirror = 2 {
	//cloudS = spr_Reco_Hover_Cloud_Down;
}

if cloudS = spr_Recollection_Hover_Cloud and string_length(recollectionExtraStats) > 50 {
	shop = 1;
}

if shop > 0 {
	cloudS = spr_Recollection_Hover_Cloud_Bigger;
	if leave = 1 {
		cloudS = spr_Recollection_Hover_Cloud_Bigger_Leave;
		image_speed = 1/60;
	}
}

if leave = 1 {
	recollectionIndex = image_index;	
	image_alpha = 1;
}

if shop = 0 {
if recollectionMirror = 0 {
    draw_sprite_ext(cloudS,recollectionIndex,x,y,1,1,0,c_white,image_alpha);
    if image_alpha >= 0.5 {
    draw_set_alpha(image_alpha);
    draw_text(x+172,y-176, string_hash_to_newline(recollectionString + recollectionUpgradeString));
	if recollectionExtraStats != 0 {
		draw_text_ext(x+172,y-144, string_hash_to_newline(recollectionExtraStats),24,200);
	}
    draw_set_alpha(1);
    }
} else if recollectionMirror = 1 {
    draw_sprite_ext(cloudS,recollectionIndex,x,y,-1,1,0,c_white,image_alpha);
    if image_alpha >= 0.5 {
    draw_set_alpha(image_alpha);
    draw_text(x-172,y-176, string_hash_to_newline(recollectionString + recollectionUpgradeString));
    if recollectionExtraStats != 0 {
		draw_text_ext(x-172,y-144, string_hash_to_newline(recollectionExtraStats),24,200);
	}
	draw_set_alpha(1);
    }
} else if recollectionMirror = 2 {
    draw_sprite_ext(cloudS,recollectionIndex,x,y,1,-1,0,c_white,image_alpha);
    if image_alpha >= 0.5 {
    draw_set_alpha(image_alpha);
    draw_text(x+172,y+128, string_hash_to_newline(recollectionString + recollectionUpgradeString));
    if recollectionExtraStats != 0 {
		draw_text_ext(x+172,y+96, string_hash_to_newline(recollectionExtraStats),24,200);
	}
	draw_set_alpha(1);
    }
} else if recollectionMirror = 3 {
    draw_sprite_ext(cloudS,recollectionIndex,x,y,-1,-1,0,c_white,image_alpha);
    if image_alpha >= 0.5 {
    draw_set_alpha(image_alpha);
    draw_text(x-172,y+128, string_hash_to_newline(recollectionString + recollectionUpgradeString));
    if recollectionExtraStats != 0 {
		draw_text_ext(x-172,y+96, string_hash_to_newline(recollectionExtraStats),24,200);
	}
	draw_set_alpha(1);
    }
} 
}

if shop > 0 {
	if recollectionMirror = 0 {
	    draw_sprite_ext(cloudS,recollectionIndex,x,y,1,1,0,c_white,image_alpha);
	    if image_alpha >= 0.5 {
	    draw_set_alpha(image_alpha);
	    draw_text(x+188,y-224, string_hash_to_newline(recollectionString + recollectionUpgradeString));
		if recollectionExtraStats != 0 {
			draw_text_ext(x+188,y-188, string_hash_to_newline(recollectionExtraStats),24,220);
		}
	    draw_set_alpha(1);
		}	
		if shop = 3 {
			if recollectionString = "Aura Strikes" {
				priceString = "Requires at least 10 Strength";
			}
			if recollectionString = "Greater Hearts" {
				priceString = "Requires at least 10 Vitality";
			}
			if recollectionString = "All Out" {
				priceString = "Requires at least 10 Essence";
			}
			if recollectionString = "Multi-Tasking" {
				priceString = "Requires at least 10 Dexterity";
			}
			if recollectionString = "Bullet Conquest" {
				priceString = "Requires at least 10 Perception";
			}
		}
	}
	if recollectionMirror = 1 {
	    draw_sprite_ext(cloudS,recollectionIndex,x,y,-1,1,0,c_white,image_alpha);
	    if image_alpha >= 0.5 {
	    draw_set_alpha(image_alpha);
	    draw_text(x-188,y-224, string_hash_to_newline(recollectionString + recollectionUpgradeString));
		if recollectionExtraStats != 0 {
			draw_text_ext(x-188,y-188, string_hash_to_newline(recollectionExtraStats),24,220);
		}
	    draw_set_alpha(1);
		}	
	}
}

if priceString != "" {
    if image_alpha >= 0.5 {
    draw_set_alpha(image_alpha);
	if shop != 3 {
	    draw_text(x+204,y-128, string_hash_to_newline(priceString));
	    draw_sprite(recollectionPriceType,0,x+168,y-120)
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