image_xscale = 0.5;
image_yscale = 0.5;

draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_self();
image_speed = 0;
image_index = 0;

if cat = 1 {
    draw_sprite_ext(spr_Soul_Shot_Art,0,x,y,0.5,0.5,0,c_white,1);
}
if cat = 2 {
    draw_sprite_ext(spr_Strengthened_Shots_Item,0,x,y,0.4,0.4,0,c_white,1);
}
if cat = 3 {
    draw_sprite_ext(spr_Wall_Eye,0,x,y,0.5,0.5,0,c_white,1);
}
if global.recollectionStateUnlocked = 1 {
if cat = 4 {
    draw_sprite_ext(spr_State_Up_Item,0,x,y,0.5,0.5,0,c_white,1);
}
if cat = 5 {
    draw_text(x-1,y-12,string_hash_to_newline("?"));
}
} else {
	
if cat = 4 {
	draw_text(x-1,y-12, string_hash_to_newline("?"));	
}
}

