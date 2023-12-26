boost = global.boost;
champ = global.champ + 0.1;

bossValue = 16;
scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;

dir = 0;

image_index = 0;

scr_Boss_Size_Setup(0.55);

boss_palette = spr_Horror_Stack_Palette;
boss_palette_index = champ;

if champ = 8 {
	boss_palette_index = 3;
} 
