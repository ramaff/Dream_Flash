// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 1;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(60);

active_attack_cooldown = 180 / bossattackspeed;

death_sprite = spr_boss_template_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

boss_path = pth_Boss_Beads_Path_1
path_position = 0;

target = noone;
tail = noone;
