/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow();

draw_sprite_ext(spr_Cartwheel, image_index, x, y + bossHeight - 40, image_xscale, image_yscale, 0, c_white, 1)

// Palette Color Swap for different boss champs:
var palindex = champ;

//pal_swap_set(spr_Crazy_Eyes_Palette,palindex,false);

draw_self();

//pal_swap_reset();

if activeAttack = 2 and activeAttackDelay > 0 and image_index >= 2 {
	for(var i = 0; i < 7; i++) {
		draw_sprite_ext(spr_Boss_Sky_Lightning, i, x + lightning_xx[i], y + lightning_yy[i], 1, 1, 90, c_yellow, 1);
	}
}