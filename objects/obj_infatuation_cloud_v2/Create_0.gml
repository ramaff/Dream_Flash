// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 6;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.45);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(70);

death_sprite = spr_infatuation_cloud_v2_ko;
boss_palette = spr_infatuation_cloud_v2_palette;
boss_palette_index = champ + 1;

cry_dir = random(360);

field_width = global.roomSizeX + 128;
rain_xx = x;

top_rain_start_x = (room_width / 2) - (field_width / 2)