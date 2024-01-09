draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);
draw_set_halign(fa_center);
//draw_self();
image_speed = 0;
image_index = 0;

if global.recollectCategory = "Weapons" {
    draw_text(x+48,y-176, string_hash_to_newline(string(itemVal) + " - " + recollectionString));
	
	var _icon_index = 0
	if recollectionComplexity = "Medium" {
		_icon_index = 1;	
	}
	if recollectionComplexity = "High" {
		_icon_index = 2;
	}
	
    draw_sprite(spr_Weapon_Recollection_Diagonal,_icon_index,x-208,y-120)
    draw_sprite_ext(recollectionSprite,0,x-208,y-120, 0.75, 0.75, 0, c_white,1);
    draw_sprite(spr_Recollection_See_Icon,0,x-208,y-44)
    draw_text(x-208,y-20, string_hash_to_newline(recollectionCount));
	
	draw_text(x+48,y-24, string_hash_to_newline(recollectionComplexity) + " Complexity");
	
    draw_sprite(spr_Recollection_Power_Icon,0,x-80,y-120);
    if recollectionPower != -999 {
        draw_text(x-80,y-96, string_hash_to_newline(recollectionPower));
    } else {
        draw_text(x-80,y-96, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Essence_Icon,0,x-16,y-120);
    if recollectionEssence != -999 {
        draw_text(x-16,y-96, string_hash_to_newline(recollectionEssence));
    } else {
        draw_text(x-16,y-96, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Recharge_Icon,0,x+48,y-120);
    if recollectionRecharge != -999 {
        draw_text(x+48,y-96, string_hash_to_newline(recollectionRecharge));
    } else {
        draw_text(x+48,y-96, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Speed_Icon,0,x+112,y-120);
    if recollectionSpeed != -999 {
        draw_text(x+112,y-96, string_hash_to_newline(recollectionSpeed));
    } else {
        draw_text(x+112,y-96, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Lifespan_Icon,0,x+176,y-120);
    if recollectionLifespan != -999 {
        draw_text(x+176,y-96, string_hash_to_newline(recollectionLifespan));
    } else {
        draw_text(x+176,y-96, string_hash_to_newline("????"));
    }
    if recollectionExtraStats != "????" {
        draw_text(x+48,y-72, string_hash_to_newline(recollectionExtraStats));
    }
    if recollectionDescription != "????" {
        draw_text_ext(x+48,y+24, string_hash_to_newline(recollectionDescription),40,440);
    }
    //draw_sprite(spr_Recollection_Recharge_Icon,0,x+160,y-120);
}

if global.recollectCategory = "Items" {
    draw_text(x+48,y-176, string_hash_to_newline(string(itemVal) + " - " + recollectionString));
    draw_sprite(spr_Recollection_Diagonal,0,x-208,y-120)
    draw_sprite_ext(recollectionSprite,0,x-208,y-120,recollectionSize + 0.1, recollectionSize + 0.1, 0, c_white, 1);
    draw_sprite(spr_Recollection_See_Icon,0,x-208,y-44)
    draw_text(x-208,y-20, string_hash_to_newline(recollectionCount));
    
    draw_text(x+48,y-104, string_hash_to_newline(recollectionExtraStats));
    if recollectionDescription != "????" {
        draw_text_ext(x+48,y-48, string_hash_to_newline(recollectionDescription),40,440);
    }

}

if global.recollectCategory = "Bosses" {
    draw_text(x+48,y-176, string_hash_to_newline(string(itemVal) + " - " + recollectionBString[recollectionChamp]));
    draw_sprite(spr_Recollection_Diagonal,0,x-208,y-120)
	
	//show_debug_message("boss champ palette index: " + string(recollectionPaletteIndex[recollectionChamp]))
	
	if recollectionPaletteIndex[recollectionChamp] != 0 {
		pal_swap_set(recollectionPalette,recollectionPaletteIndex[recollectionChamp],false);
	    draw_sprite_ext(recollectionBSprite[recollectionChamp],0,x-208,y-120,recollectionSize,recollectionSize,0,c_white,1);
	    pal_swap_reset();
	} else {
		draw_sprite_ext(recollectionBSprite[recollectionChamp],0,x-208,y-120,recollectionSize,recollectionSize,0,c_white,1);
	}
	
    draw_sprite(spr_Recollection_See_Icon,0,x-208,y-44)
    draw_text(x-208,y-20, string_hash_to_newline(recollectionCount));
    
    draw_sprite(spr_Recollection_Boss_Health_Icon,0,x-24,y-120);
    if recollectionHealth1[recollectionChamp] != -999 {
        if recollectionDefense1[recollectionChamp] != 0 {
            draw_text(x-24,y-96, string_hash_to_newline(string(recollectionHealth1[recollectionChamp]) + "HP" + " " + string(recollectionDefense1[recollectionChamp]) + " Defense"));
        } else {
            draw_text(x-24,y-96, string_hash_to_newline(string(recollectionHealth1[recollectionChamp]) + "HP"));
        }
    } else {
        draw_text(x-24,y-96, string_hash_to_newline("????"));
    }
    
    draw_sprite(spr_Recollection_Boss_Health_Icon,1,x+120,y-120);
    if recollectionHealth2[recollectionChamp] != -999 {
        if recollectionDefense2[recollectionChamp] != 0 {
            draw_text(x+120,y-96, string_hash_to_newline(string(recollectionHealth2[recollectionChamp]) + "HP" + " " + string(recollectionDefense2[recollectionChamp]) + " Defense"));
        } else {
            draw_text(x+120,y-96, string_hash_to_newline(string(recollectionHealth2[recollectionChamp]) + "HP"));
        }
    } else {
        draw_text(x+120,y-96, string_hash_to_newline("????"));
    }
    
	/*
    draw_sprite(spr_Recollection_Recharge_Icon,0,x-80,y-56);
    if recollectionImaginaryResist[recollectionChamp] != -999 {
        draw_text(x-80,y-36, string_hash_to_newline(string(recollectionImaginaryResist[recollectionChamp]) + "%"));
    } else {
        draw_text(x-80,y-36, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Sharp_Icon,0,x-16,y-56);
    if recollectionSharpResist[recollectionChamp] != -999 {
        draw_text(x-16,y-36, string_hash_to_newline(string(recollectionSharpResist[recollectionChamp]) + "%"));
    } else {
        draw_text(x-16,y-36, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Explosive_Icon,0,x+48,y-56);
    if recollectionExplosiveResist[recollectionChamp] != -999 {
        draw_text(x+48,y-36, string_hash_to_newline(string(recollectionExplosiveResist[recollectionChamp]) + "%"));
    } else {
        draw_text(x+48,y-36, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Magic_Icon,0,x+112,y-56);
    if recollectionMagicResist[recollectionChamp] != -999 {
        draw_text(x+112,y-36, string_hash_to_newline(string(recollectionMagicResist[recollectionChamp]) + "%"));
    } else {
        draw_text(x+112,y-36, string_hash_to_newline("????"));
    }
    draw_sprite(spr_Recollection_Energy_Icon,0,x+176,y-56);
    if recollectionEnergyResist[recollectionChamp] != -999 {
        draw_text(x+176,y-36, string_hash_to_newline(string(recollectionEnergyResist[recollectionChamp]) + "%"));
    } else {
        draw_text(x+176,y-36, string_hash_to_newline("????"));
    }
	*/
    
    if recollectionDanger[recollectionChamp] != -999 {
        draw_text(x+48,y-16, string_hash_to_newline("Boss Power Level: " + string(recollectionDanger[recollectionChamp])));
    }
    
    if recollectionDescription != "????" {
        draw_text_ext(x+48,y+16, string_hash_to_newline(recollectionDescription),40,440);
    }
	
	draw_sprite(spr_Tutorial_Arrow,1,x+256,y+156);
	
	if recollectionChamp = 0 {
		draw_text(x+208,y+144,"Base");
	} else if recollectionChamp < 8 {
		draw_text(x+208,y+144,string(recollectionChamp));
	} else {
		draw_text(x+208,y+144,"S. " + string(recollectionChamp - 7));
	}
	
	draw_sprite_ext(spr_Tutorial_Arrow,1,x+160,y+156,-1,-1,0,c_white,1);
}

if global.recollectCategory = "State" {
    draw_text(x+48,y-176, string_hash_to_newline(string(itemVal) + " - " + recollectionString));
    draw_sprite(spr_Recollection_Diagonal,0,x-208,y-120)
    draw_sprite_ext(recollectionSprite,0,x-208,y-120,recollectionSize + 0.1, recollectionSize + 0.1, 0, c_white, 1);
    draw_sprite(spr_Recollection_See_Icon,0,x-208,y-44)
    draw_text(x-208,y-20, string_hash_to_newline(recollectionCount));
    
    draw_text(x+48,y-104, string_hash_to_newline(recollectionExtraStats));
    if recollectionDescription != "????" {
        draw_text_ext(x+48,y-48, string_hash_to_newline(recollectionDescription),40,440);
    }

}

if global.recollectCategory = "Information" {
	var isize = 1;
	var iv = string_digits(itemVal);
	if iv > 6 {
		iv = iv - 6;	
		isize = 0.6;
	}
	if iv != 6 {
		isize = 0.6;	
	}
    draw_sprite_ext(recollectionSprite,string_digits(iv) - 1,x,y-128,isize,isize,0,c_white,1);
    draw_text_ext_color(x,y-32,string_hash_to_newline(recollectionDescription),40,440,c_black,c_black,c_black,c_black,1);
}