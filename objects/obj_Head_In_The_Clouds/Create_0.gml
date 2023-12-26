// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 90;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(130);

boss_palette = spr_Head_In_The_Clouds_Palette
boss_palette_index = tier;
