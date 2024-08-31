// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 1;
scr_Boss_Stats_Setup(2);

scr_Wall_Boss_Path_Setup();

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(30);

death_sprite = spr_boss_template_ko;
boss_palette = spr_wall_watcher_v2_palette;
boss_palette_index = champ;

