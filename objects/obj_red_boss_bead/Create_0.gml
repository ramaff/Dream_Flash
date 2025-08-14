// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 61;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(60);

death_sprite = spr_red_boss_bead_ko
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

boss_path = pth_Boss_Beads_Path_1
path_position = 0;

var _tar = id;

with instance_create_depth(x, y, depth, obj_yellow_boss_bead) {
	boss_value = 61
	champ = 0.1;
	scr_Boss_Stats_Setup(2);
	
	active_attack_cooldown = 180;
	
	target = _tar
	_tar = id;
	
	champ = other.champ;
	boost = other.boost;
	difficulty = 0;	
	scr_Boss_Height_Setup(60);
	
	death_sprite = spr_yellow_boss_bead_ko;
}

with instance_create_depth(x, y, depth, obj_blue_boss_bead) {
	boss_value = 61
	champ = 0.1;
	scr_Boss_Stats_Setup(2);
	
	active_attack_cooldown = 300;
	
	target = _tar
	_tar = id;
	
	champ = other.champ;
	boost = other.boost;
	difficulty = 0;	
	scr_Boss_Height_Setup(60);
	
	death_sprite = spr_blue_boss_bead_ko;
}


