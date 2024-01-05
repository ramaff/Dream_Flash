// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 24;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.45);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(50);

diamond_bound = (global.roomSizeX - 64)
xx_center = room_width / 2;
yy_center = room_height / 2;
room_half_size = (diamond_bound / 2)

shadow_clone = [noone, noone, noone]

shadow_positions = [
					{boss: id, xx: xx_center, yy: yy_center, ex: xx_center - room_half_size, ey: yy_center, dir: 0}, 
					{boss: id, xx: xx_center, yy: yy_center, ex: xx_center + room_half_size, ey: yy_center, dir: 0}, 
					{boss: id, xx: xx_center, yy: yy_center, ex: xx_center, ey: yy_center - room_half_size, dir: 0}, 
					{boss: id, xx: xx_center, yy: yy_center, ex: xx_center, ey: yy_center + room_half_size, dir: 0}
					];
	
edge_xx = xx_center - room_half_size
edge_yy = yy_center
edge_direction = 45;

death_sprite = spr_ninja_spirit_v2_ko;
boss_palette = spr_ninja_spirit_v2_palette;
boss_palette_index = champ;
