var palindex = champ;

if champ = 8 {
	palindex = 2;	
}

pal_swap_set(spr_Veil_Palette,palindex,false);
    
draw_self();

pal_swap_reset();
if bossbeamattackactive = 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}

