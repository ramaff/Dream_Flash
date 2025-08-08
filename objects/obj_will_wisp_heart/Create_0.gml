// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 59;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(50);

death_sprite = spr_Wisp_Mask_Heart_ko
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

with instance_create(x,y,obj_will_wisp_mask) {
	target = other.id
	
	boss_value = 59
	champ = 0.1;
	scr_Boss_Stats_Setup(2);
			
	champ = other.champ;
	boost = other.boost;
	difficulty = global.floor[global.currentroom,24];
}

target_x = x;
target_y = y;
target_angle = scr_Soul_Point() + 180;