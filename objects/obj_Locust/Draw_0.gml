scr_Boss_Shadow();

var palindex = champ;

pal_swap_set(spr_Locust_Palette,palindex,false);
draw_self();
pal_swap_reset();

/*
if bossActiveAttack[1] = 2 and bossActiveAttackDelay[1] <= 0 {
	spawnFrame++;
	frame = floor(spawnFrame / 10);
	show_debug_message("frame: " + string(frame))
	draw_sprite_ext(spr_Locust_Spawn_Top_Left, frame, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
	draw_sprite_ext(spr_Locust_Spawn_Bottom_Right, frame, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
	draw_sprite_ext(spr_Locust_Spawn_Top_Back, frame, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);

} */

if bossbeamattackactive = 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}

