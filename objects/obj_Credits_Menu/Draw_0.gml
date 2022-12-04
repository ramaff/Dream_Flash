//if global.layerdeep = 2 {

    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    
    startx = 1280 / 2;
    
    draw_text(startx,64, string_hash_to_newline("CREDITS"));
    
    draw_text(startx,128, string_hash_to_newline("A Game by Ramaf Party"));
    
    draw_text(startx,192, string_hash_to_newline("Music - Rossiter, Evie"));
    
    draw_text(startx,256, string_hash_to_newline("SPECIAL THANKS"));
    
    creditsText = " Rossiter # double-pmcl-dot-net # FrostedGH # Garrok # WikiTay # Chortles # Weaz # Bob # Gunga Ginga # Corsaka # Phone # Miksalok # Fiery # Embarr"
    
    draw_text_ext(startx - 104,320, string_hash_to_newline(creditsText),20,600);
    
    creditsText2 = " EvieMusic # Dr. Napkins # Imperfect BL God # Filipe Andre (H3XO) # Sheeper (The Classical) # TripledYou # Zakoji # Cryo # Yui # Jeancarlos # Omni # Kegg(cuthe) # Anew Returner"
    
    draw_text_ext(startx + 104,320, string_hash_to_newline(creditsText2),20,600);
//}

