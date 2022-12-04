draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);
draw_set_halign(fa_center);

vis = 0;

if statVal = "Health" {
    draw_sprite(spr_Soul_Menu_Heart,0,x,y);
	sprite_index = spr_Soul_Menu_Heart;
    scr_Draw_Text_Outlined(x,y-9,c_black,c_white,string(basehp));
    vis = 1;
}
if statVal = "Power" {
    draw_sprite(spr_Soul_Menu_Power,0,x,y);
	sprite_index = spr_Soul_Menu_Power;
    scr_Draw_Text_Outlined(x,y-4,c_black,c_white,"+" + string(floor((basepow-1)*100)) + "%");
    vis = 1;
}
if statVal = "Essence" {
    draw_sprite(spr_Soul_Menu_Essence,0,x,y);
	sprite_index = spr_Soul_Menu_Essence;
    scr_Draw_Text_Outlined(x-1,y-8,c_black,c_white,string(baseep));
    vis = 1;
}
if statVal = "Dexterity" {
    draw_sprite_ext(spr_Soul_Menu_Dexterity,0,x,y,1,1,0,c_white,1);
	sprite_index = spr_Soul_Menu_Dexterity;
	if instance_exists(obj_Soul_Parent) {
		basefirerate = basefirerate * obj_Soul_Parent.sdelayregenfactor;	
	}
    scr_Draw_Text_Outlined(x,y-4,c_black,c_white,"+" + string(floor((basefirerate-1)*100)) + "%");
    vis = 1;
}
if statVal = "Perception" {
    draw_sprite_ext(spr_Soul_Menu_Perception,0,x,y,1,1,0,c_white,1);
	sprite_index = spr_Soul_Menu_Perception;
    scr_Draw_Text_Outlined(x-1,y-8,c_black,c_white,"-" + string(essCost * 100) + "%");
    vis = 1;
}

if point_distance(x,y,mouse_x,mouse_y) < 40 and vis = 1 {
    scr_Soul_Icon_Cloud();
    //scr_Bottom_Cloud_Info();
}

