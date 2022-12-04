

var palindex = champ;

if champ = 8 {
	palindex = 3;	
}

pal_swap_set(spr_Grim_Apparition_Palette,palindex,false);
    draw_self();
pal_swap_reset();
