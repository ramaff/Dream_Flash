// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 25;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(80);

split = 0;

boss_palette = spr_wisper_v2_palette

boss_palette_index = champ + 1;
if champ = 0 {
	boss_palette_index = 0	
}