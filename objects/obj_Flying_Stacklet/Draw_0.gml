/// @description Insert description here
// You can write your code in this editor
//texture_set_interpolation(0);
pal_swap_set(boss_palette, boss_palette_index,false);
    
draw_self();

pal_swap_reset();

//texture_set_interpolation(1);