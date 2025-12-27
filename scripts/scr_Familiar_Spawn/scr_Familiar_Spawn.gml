function scr_add_familiar_to_chain(_chain, _minion_type, _count) {
	repeat(_count) {
		_chain[array_length(_chain)] = _minion_type;
	}
	return _chain
}

function scr_spawn_familar(_xx, _yy, _familiar, _follow_target = noone) {
	with (obj_Minion_Parent) {
		scr_Minion_Follow_Adjust();	
	}
	
	var _ct = noone;
	if !instance_exists(obj)
	with instance_create(_xx, _yy, _familiar) {
		followtarget = _follow_target
		_ct = id;
		scr_Minion_Follow_Adjust();
	}
	return _ct;
}

function scr_Familiar_Spawn() {

	scr_Gem_Spawn();
	
	scr_N02();
	
	var minions = [];
	var followminions = [];
	var exemptminions = [];
	
	followminions = scr_add_familiar_to_chain(followminions, obj_Wandering_Soul, global.M[1]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Friendly_Figment, global.M[2]);
	minions = scr_add_familiar_to_chain(minions, obj_Fighter_Soul, global.M[3]);
	exemptminions = scr_add_familiar_to_chain(exemptminions, obj_Butt_Of_Jokes, global.M[4]);
	minions = scr_add_familiar_to_chain(minions, obj_Blaze_Soul, global.M[5]);
	minions = scr_add_familiar_to_chain(minions, obj_Flash_Cannon, global.M[6]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Fuse_Soul, global.M[7]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Healthy_Thoughts, global.M[8]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Spike_Soul, global.M[9]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Corporeal_Chum, global.M[10]);
	minions = scr_add_familiar_to_chain(minions, obj_Hungry_Soul, global.M[11]);
	minions = scr_add_familiar_to_chain(minions, obj_Troubling_Thingo, global.M[12]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Copy_Cat_Soul, global.M[13]);
	minions = scr_add_familiar_to_chain(minions, obj_Explosive_Manifesto, global.M[14]);
	minions = scr_add_familiar_to_chain(minions, obj_Poisonous_Soul, global.M[15]);
	minions = scr_add_familiar_to_chain(minions, obj_Cognition, global.M[16]);
	minions = scr_add_familiar_to_chain(minions, obj_Bleeding_Soul, global.M[17]);
	exemptminions = scr_add_familiar_to_chain(exemptminions, obj_Bullet_Eater, global.M[18]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Magican_Soul, global.M[19]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Positive_Thoughts, global.M[20]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Electro_Soul, global.M[21]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Glum_Chum, global.M[22]);
	minions = scr_add_familiar_to_chain(minions, obj_Barrier_Soul, global.M[23]);
	minions = scr_add_familiar_to_chain(minions, obj_Mello_Jello, global.M[24]);
	followminions = scr_add_familiar_to_chain(followminions, obj_Rattlesoul, global.M[25]);

	var _ct = id;
	var ang = 0;
	var dis = 20;

	for(var i = 0; i < array_length(followminions); i++) {
		_ct = scr_spawn_familar(x + lengthdir_x(dis, ang), y + lengthdir_y(dis, ang), followminions[i], _ct);
		ang += 45;
		dis += 5 + (300 / dis);
	}
	
	var _ct = id;
	
	for(var i = 0; i < array_length(minions); i++) {
		_ct = scr_spawn_familar(x + lengthdir_x(dis, ang), y + lengthdir_y(dis, ang), minions[i], _ct);
		ang += 45;
		dis += 5 + (300 / dis);
	}
	
	var _ct = id;
	
	for(var i = 0; i < array_length(exemptminions); i++) {
		_ct = scr_spawn_familar(x + lengthdir_x(dis, ang), y + lengthdir_y(dis, ang), exemptminions[i], _ct);
		ang += 45;
		dis += 5 + (300 / dis);
	}

}
