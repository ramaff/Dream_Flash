// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 43;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

death_sprite = spr_gutter_ball_v2_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

alarm[1] = 10;

mirror = false;
hops = 0;