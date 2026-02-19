// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 20;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(105);

death_sprite = spr_spire_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

scr_default_attack_settings_v2();

minion_count = 4;
minion_type = obj_spire_thought;
minion_health = 40;
minion_defense = 0;
		
var _mins = scr_Minion_Spawn();

red_cloud = _mins[0];
blue_cloud = _mins[1];
green_cloud = _mins[2];
yellow_cloud = _mins[3];

red_cloud.active_attack_cooldown += 60 + random(120);
blue_cloud.active_attack_cooldown += 60 + random(120);
green_cloud.active_attack_cooldown += 60 + random(120);
yellow_cloud.active_attack_cooldown += 60 + random(120);
