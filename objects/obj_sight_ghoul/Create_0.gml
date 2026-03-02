// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 70;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(60);

death_sprite = spr_boss_template_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

active_attack_cooldown += 90;