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

death_sprite = spr_boss_template_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

tar_angle = 0;

scr_default_attack_settings_v2();

minion_count = 3;
minion_type = obj_touch_hand;
minion_health = 150;
minion_defense = 0;
		
var _mins = scr_Minion_Spawn();

hand_1 = _mins[0];
hand_2 = _mins[1];
hand_3 = _mins[2];
