boost = 0;
champ = 0;

scr_Boss_Minion_Stat_Setup();

scr_Boss_Attack_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

sprite_index = spr_pocket_minion_spawn;
active_attack_delay = 60;
active_attack = -1;

state = states.jumping;
