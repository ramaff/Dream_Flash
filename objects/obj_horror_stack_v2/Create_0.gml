// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 16;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

active_attack_cooldown = 60 / bossattackspeed;

death_sprite = spr_horror_stack_v2_cannon_ball_ko
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

balls = 2