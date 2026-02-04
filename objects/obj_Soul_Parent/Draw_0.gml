//shader_set(shOutline);
//shader_set_uniform_f(upixelW,texelW);
//shader_set_uniform_f(upixelH,texelH);

var flk = 0.95 + random(0.05);

draw_sprite_ext(spr_Soul_Glow,0,x,y,flk,flk,0,c_white,0.15);

//shader_set(shd_Bloom_Pot);
//show_debug_message(sprite_get_name(sprite_index))
if soul_underground <= 0 {
    draw_self();
}
//shader_reset();

current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))

if Charge_Hold = 2 {
	var size = Charge_Size + 0.25;
	var sspr = current_weapon_stats.Shot_Sprite;
	
	if sspr = "spr_Laser_Start" {
		sspr = "spr_Laser_Charge_Ball"
	}
	if sspr = "spr_Beam_Start" {
		sspr = "spr_Essence_Beam_Charge_Ball"
	}
	if sspr = "spr_Crystal_Laser_Start" {
		sspr = "spr_Crystal_Laser_Charge_Ball"
	}
	
	draw_sprite_ext(asset_get_index(sspr), 0, x, y - 50 - scr_Wave(0, 30, 3, 0), size, size, 0, c_white, 1)
}

/*
if mouse_check_button(mb_left) {
	//draw_sprite_ext(spr_The_Soul_Hard_Think_Face,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}
*/

//better_scaling_draw_sprite(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha, 1);
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

//shader_reset();

scr_P04_Draw();
//scr_U07_Draw();

/*
var i = 0;
for (i = 0; i < ds_list_size(global.IItemPool); i++) {
	draw_text(x - 400 + (30 * i),y,string(ds_list_find_value(global.IItemPool, i)));
}
*/

//scr_Draw_Standalone_Beam();

//scr_Draw_Beam_Setup("Weapon");

sWeaponUseFrame = 0;