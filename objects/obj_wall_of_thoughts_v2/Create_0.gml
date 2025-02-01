// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 7;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.55);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(50);

death_sprite = spr_wall_of_thoughts_v2_ko;
boss_palette = spr_wall_of_thoughts_v2_palette;
boss_palette_index = champ;

y -= (global.roomSizeY / 3);

with(obj_Soul_Parent) {
	y += 200;	
}
