boost = 0;
champ = 0;

scr_Boss_Minion_Stat_Setup();

scr_Boss_Attack_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(50);

tar_angle = 0;
orbit_height = 100;

death_sprite = spr_touch_hand_ko
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;
