/// @description Insert description here
// You can write your code in this editor

//scr_Morph_In_List();

existt++;

if existt >= 30 {
	alph -= 1 / 30;
}
if alph < 0 {
	alph = 0;	
}

if (!surface_exists(surf)) {
	var swidth = sprite_width;
	var sheight = sprite_height;
	
	if swidth < 0 {
		swidth = 2;
	}
	if sheight < 0 {
		sheight = 2;
	}
	
	var wpow = 1;
	
	while(wpow < swidth) {
		wpow = wpow * 2;
	}
	swidth = wpow;
	
	var hpow = 1;
	
	while(hpow < sheight) {
		hpow = hpow * 2;
	}
	sheight = hpow;
	
	surf = surface_create(swidth, sheight);	
}

surface_set_target(surf);

draw_sprite_ext(sprite_index, image_index, sprite_xoffset, sprite_yoffset, image_xscale,image_yscale,image_angle,c_white,1);

gpu_set_colorwriteenable(1, 1, 1, 0);

var backg = spr_Mental_Background;
if global.currentchapter = 2 {
	backg = spr_Mental_Background_Feel;
}
if global.currentchapter = 3 {
	backg = spr_Mental_Background_Dream;
}
draw_sprite_ext(backg, 0, 0, 0, 1, 1, 0, c_white, 1);

gpu_set_colorwriteenable(1, 1, 1, 1);

surface_reset_target();

draw_surface_ext(surf, x - (sprite_xoffset), y - (sprite_yoffset),1,1,image_angle,c_white,alph);

//draw_text(x + 60,y, string(surface_get_width(surf)));

//draw_text(x + 60,y + 30, string(surface_get_height(surf)));

/*

draw_text(x,y, string(sprite_get_yoffset(bossSprite) - (sprite_height / 2)));

draw_text(x,y + 30, string(sprite_get_height(bossSprite)));

draw_text(x + 60,y, string(xxadd));

draw_text(x + 60,y + 30, string(yyadd));

//draw_text(x,y, string(sprite_index));

//draw_text(x,y + 30, string(bossSprite));