draw_set_font(Dream_Flash_Font);
draw_set_colour(c_white);
draw_set_halign(fa_center);

//vis = 0;
var sPercent = 0;

image_xscale = 0.5;
image_yscale = 0.5;

if stat = 1 and global.soulstrength > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("STR"));
    sPercent = (global.soulstrength) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 2 and global.soulvitality > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("VIT"));
    sPercent = (global.soulvitality) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 3 and global.soulessence > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("ESS"));
    sPercent = (global.soulessence) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 4 and global.souldexterity > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("DEX"));
    sPercent = (global.souldexterity) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 5 and global.soulperception > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("PER"));
    sPercent = (global.soulperception) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 6 and global.soulstate > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("STE"));
    sPercent = (global.soulstate) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}

if stat = 7 and (global.souldespair) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("DES"));
    sPercent = (global.souldespair + global.souldespairTemp) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 8 and (global.soulparanoia) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("PAR"));
    sPercent = (global.soulparanoia + global.soulparanoiaTemp) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 9 and (global.soulloathing) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("LTH"));
    sPercent = (global.soulloathing) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 10 and (global.soulassurance) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("VAN"));
    sPercent = (global.soulassurance) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 11 and (global.soulbliss) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("BLS"));
    sPercent = (global.soulbliss) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}
if stat = 12 and (global.soulhope) > 0 {
    draw_text(x+45,y+84, string_hash_to_newline("HPE"));
    sPercent = (global.soulhope) * 2.5;
	draw_text(x+45,y+60, string_hash_to_newline(sPercent / 20));
	vis = 1;
}

if sPercent > 100 {
	sPercent = 100;	
	testp = 0;
}

//sPercent = testp;
//testp++;

var yy = 200;

/*if stat > 6 {
	sprite_index = spr_Spiritual_Stat_Meter_Butt;	
} */

if vis = 1 {
	//draw_sprite_ext(sprite_index,0,x,y,0.5,0.5,0,c_white,1);
	draw_sprite_ext(spr_Stat_Meter_Butt_Empty,stat - 1,x,y,0.5,0.5,0,c_white,1)
    draw_sprite_part_ext(sprite_index,stat,0,yy * (1 - (sPercent / 100)),80,yy,x,y - (100) + yy * (1 - (sPercent / 200)),0.5,0.5,c_white,1);	
}

var dist = 0;

if mouse_x < (x + 40) and mouse_x > (x) and mouse_y < (y + 100) and mouse_y > (y) {
	dist = 1;
}

if dist = 1 and vis = 1 {
    //scr_Soul_Stat_Cloud();
	x += 24;
	y += 50;
	x -= 24;
	y -= 50;
}

