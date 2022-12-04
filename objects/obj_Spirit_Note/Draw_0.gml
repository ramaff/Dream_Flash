draw_sprite_ext(spr_Menu_Big_Cloud,0,x,y,1,1,0,c_white,cloudT);

draw_text_ext_color(x-240,y+144,string_hash_to_newline("Page " + string(currentT) + "/2"),40,400,c_black,c_black,c_black,c_black,cloudT);

draw_sprite_ext(spr_Tutorial_Arrow,0,x+240,y+144,1,1,0,c_white,cloudT);

draw_set_font(Dream_Flash_Font);

if currentT = 1 {
    cloudT += 0.05;
}

if currentT = 1 {
    if textT[1] <= 1 and cloudT >= 1 {
        textT[1] += 0.02;
    }
    draw_sprite_ext(spr_Misc_Tutorial_Stuff,1,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("You've encountered a wandering Masked Spirit. These spirits wander the dreamscape, leaving if unprovoked."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 2 {
    if textT[2] <= 1 and cloudT >= 2 {
        textT[2] += 0.02;
    }
    draw_sprite_ext(spr_Misc_Tutorial_Stuff,0,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("Killing a masked spirit allows you to increase your emotional stats. Be careful, though, as provoking a spirit will cause more dangerous ones to appear later on."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}


/*
if currentT = 2 {
    if textT[2] <= 1 and cloudT >= 1 {
        textT[2] += 0.02;
    }
    draw_sprite_ext(spr_Tutorial_Stuff,1,x,y-128,1,1,0,c_white,textT[2]);
    draw_text_ext_color(x,y-32,string_hash_to_newline("Teleport by right clicking, doing this costs essence and requires some cooldown time. You can exit dreamscape fields by teleporting outside of the field."),40,400,c_black,c_black,c_black,c_black,textT[2]);
}

if currentT = 3 {
    if textT[3] <= 1 and cloudT >= 1 {
        textT[3] += 0.02;
    }
    draw_sprite_ext(spr_Tutorial_Stuff,2,x,y-128,1,1,0,c_white,textT[3]);
    draw_text_ext_color(x,y-32,string_hash_to_newline("Using Weapons and Teleporting uses up the essence of your soul. Your essence is limited but replenishes automatically."),40,400,c_black,c_black,c_black,c_black,textT[3]);
}

if currentT = 4 {
    if textT[4] <= 1 and cloudT >= 1 {
        textT[4] += 0.02;
    }
    draw_sprite_ext(spr_Tutorial_Stuff,3,x,y-128,1,1,0,c_white,textT[4]);
    draw_text_ext_color(x,y-32,string_hash_to_newline("You have 3 hearts by default. These hearts each have their own health and can have unique properties. You can also swap the order of your hearts by clicking them and moving them to a different heart slot. If you lose a heart it is gone forever."),40,400,c_black,c_black,c_black,c_black,textT[4]);
}

if currentT = 5 {
    if textT[5] <= 1 and cloudT >= 1 {
        textT[5] += 0.02;
    }
    draw_sprite_ext(spr_Tutorial_Stuff,4,x,y-128,1,1,0,c_white,textT[5]);
    draw_text_ext_color(x,y-32,string_hash_to_newline("Each room can have a boss battle or an item. You can pick up items from orbit using your right click. At the end of the chapter you will fight a super boss that will allow you to go deeper into your dream."),40,400,c_black,c_black,c_black,c_black,textT[5]);
}

