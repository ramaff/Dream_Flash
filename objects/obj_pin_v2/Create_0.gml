boost = 0;
champ = 0;

scr_Boss_Minion_Stat_Setup();

scr_Boss_Attack_Setup(2);

active_attack_cooldown = 120

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

var _new_pos = scr_Boss_Teleport_v2_Return(-128, -1, 300)
x = _new_pos[0]
y = _new_pos[1]

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

state = states.leaping