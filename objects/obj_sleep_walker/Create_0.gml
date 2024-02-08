// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 58;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

death_sprite = spr_boss_template_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

active_attack_cooldown = 240;

var _xx = x;
var _yy = y;
var _ct = id;
var _tw = 20;
weight = 20;
target_weight = 2;

for(var i = 0; i < 10; i++) {
	_xx += lengthdir_x(i * 5, 0);
	_yy += lengthdir_y(i * 5, 0);
		
	with instance_create(_xx,_yy,obj_thought_chain) {
		target = _ct;
		target_weight = _tw;
		
		_ct = id;
	}
	
	if i = 0 {
		target = _ct;	
	}
	
	_tw = 2;
}

with instance_create(_xx,_yy,obj_sleep_hound) {
	target = _ct;
	target_weight = _tw;
	
	_ct = id;
	
	boss_value = 58
	scr_Boss_Stats_Setup(2);
			
	champ = other.champ;
	boost = other.boost;
	difficulty = global.floor[global.currentroom,24];
}

hound = _ct;