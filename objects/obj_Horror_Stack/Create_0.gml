boost = global.boost;
champ = global.champ;

bossValue = 16;
scr_Boss_Stats_Setup();
//alarm[0] = 90 / bossattackspeed;

dir = 0;

bossStack = 3;

//image_speed = 0;
image_index = 0;

scr_Boss_Size_Setup(0.55);

//sprite_index = spr_Horror_Stack_scale;
boss_palette = spr_Horror_Stack_Palette;
boss_palette_index = champ;

if champ = 8 {
	boss_palette_index = 3;
} 

