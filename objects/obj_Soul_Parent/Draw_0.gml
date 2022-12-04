//shader_set(shOutline);
//shader_set_uniform_f(upixelW,texelW);
//shader_set_uniform_f(upixelH,texelH);

var flk = 0.95 + random(0.05);

draw_sprite_ext(spr_Soul_Glow,0,x,y,flk,flk,0,c_white,0.15);

//shader_set(shd_Bloom_Pot);
//show_debug_message(sprite_get_name(sprite_index))
    draw_self();
//shader_reset();

/*
if mouse_check_button(mb_left) {
	//draw_sprite_ext(spr_The_Soul_Hard_Think_Face,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}
*/

//better_scaling_draw_sprite(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha, 1);
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

//shader_reset();

scr_E13_Draw();
scr_P04_Draw();
scr_U07_Draw();

/*
var i = 0;
for (i = 0; i < ds_list_size(global.IItemPool); i++) {
	draw_text(x - 400 + (30 * i),y,string(ds_list_find_value(global.IItemPool, i)));
}
*/

//scr_Draw_Standalone_Beam();

//scr_Draw_Beam_Setup("Weapon");

sWeaponUseFrame = 0;