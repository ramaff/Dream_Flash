// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 4;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(70);

y -= 400;

death_sprite = spr_boss_template_ko;
boss_palette = spr_growing_sorrows_v2_palette;
boss_palette_index = champ;
if champ = 8 {
	boss_palette_index = 3;
}
top_tip = (room_height / 2) - (global.roomSizeY / 2) + 150

tear_trail_tip_1 = noone;
tear_trail_tip_2 = noone;
