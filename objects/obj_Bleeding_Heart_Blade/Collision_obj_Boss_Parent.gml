/// @description Insert description here
// You can write your code in this editor

if !thrusting {
	exit;	
}

var _boss = other.id;
if !variable_struct_get(bosses_hit, _boss.id) {
	variable_struct_set(bosses_hit, _boss.id, _boss.id)
	with instance_create_depth(_boss.x - 20 + random(40), _boss.y - 20 + random(40), _boss.depth - 1, obj_Deep_Bleed_Mark) {
		target = _boss;
		potency = 4;
		frequency = ceil(20 / global.soulheartboost);
		ticks = round(30 * global.soulheartboost);
		
		xx = -30 + random(60);
		yy = -30 + random(60);
		image_xscale = 0.5;
		image_yscale = 0.5;
		image_angle = -22.5 + random(45);
		
		alarm[0] = frequency
	}
}