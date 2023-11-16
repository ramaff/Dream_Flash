boost = 0;
champ = 0;

scr_Boss_Minion_Stat_Setup();

scr_Boss_Attack_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

spawn_size_fac = 0.6