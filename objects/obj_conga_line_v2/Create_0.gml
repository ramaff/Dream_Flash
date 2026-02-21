// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 44;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

death_sprite = spr_boss_template_ko;
boss_palette = spr_boss_template_palette;
boss_palette_index = champ;

angles = [45, 135, 225, 315]

var total_num = 1
if boost = 2 {
	total_num = 2;	
}

followtarget = noone;
follower = noone;

if instance_number(obj_conga_line_v2) <= total_num {
	var ct = id;
	var line_angle = scr_Soul_Point() + 180;
	line_angle = round(line_angle / 90) * 90
	
	var xx = x;
	var yy = y;

	for(var i = 0; i < 12; i++) {
		xx += lengthdir_x(80, line_angle);
		yy += lengthdir_y(80, line_angle);
		
		if scr_Chance(4) {
			line_angle += 90 * (irandom(2) - 1)	
		}
		if scr_Soul_Distance(xx, yy) < 200 {
			line_angle = scr_Soul_Point() + 180;
		}
		if scr_Soul_Distance(xx, yy) > 500 {
			line_angle = scr_Soul_Point();
		}
		line_angle = round(line_angle / 90) * 90
		with instance_create(xx,yy,obj_conga_line_v2) {
			followtarget = ct;
			followtarget.follower = id;
		
			ct = id;
			scr_Boss_Stats_Setup(2);
			
			champ = other.champ;
			boost = other.boost;
			difficulty = global.floor[global.currentroom,24];
			
			active_attack_cooldown = 240;
		}
	}
}

active_attack_cooldown = 240;
