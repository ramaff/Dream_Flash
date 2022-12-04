draw_sprite_ext(spr_Menu_Big_Cloud,0,x,y,1,1,0,c_white,cloudT);

draw_text_ext_color(x-240,y+144,string_hash_to_newline("Page " + string(currentT) + "/7"),40,400,c_black,c_black,c_black,c_black,cloudT);

draw_sprite_ext(spr_Tutorial_Arrow,0,x+240,y+144,1,1,0,c_white,cloudT);

draw_set_font(Dream_Flash_Font);

if currentT = 1 {
    cloudT += 0.05;
}

if currentT = 1 {
    if textT[1] <= 1 and cloudT >= 1 {
        textT[1] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,0,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("Your soul has reached a higher state of being!"),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 2 {
    if textT[2] <= 1 and cloudT >= 2 {
        textT[2] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,1,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("You can now temporarily activate a state transformation. There are various state transformations and each one is significantly more powerful than the base soul."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 3 {
    if textT[3] <= 1 and cloudT >= 3 {
        textT[3] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,2,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("State transformations can be activated when the state bar is full. You trigger the transformation by performing a teleport on the position of the soul."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 4 {
    if textT[4] <= 1 and cloudT >= 4 {
        textT[4] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,3,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("Different states have different rates of state charge usage. When you run out of state charge you revert back into the base soul."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 5 {
    if textT[5] <= 1 and cloudT >= 4 {
        textT[5] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,4,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("All teleports performed during a higher state will have a powerful effect that can severely damage bosses, at the cost of additional state charge."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 6 {
    if textT[6] <= 1 and cloudT >= 4 {
        textT[6] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,4,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("In order to unlock a state transformation the soul needs 3 state credits. Each state has a different set of criteria for getting its state credits."),40,400,c_black,c_black,c_black,c_black,textT[1]);
}
if currentT = 7 {
    if textT[7] <= 1 and cloudT >= 4 {
        textT[7] += 0.02;
    }
    draw_sprite_ext(spr_State_Tutorial_Recos,4,x,y-96,0.5,0.5,0,c_white,textT[1]);
    draw_text_ext_color(x,y - 32,string_hash_to_newline("Sources of state credits could be items you pick up, bosses defeated in channeling rooms, or having high enough stats in a certain attribute."),40,400,c_black,c_black,c_black,c_black,textT[1]);
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

