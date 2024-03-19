// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Chain_Pull(_target = noone, _chain_length = 30, _weight = 10, _target_weight = 10, _chain_strength = 10){

	if instance_exists(_target) {
		var _dist = point_distance(x,y,_target.x,_target.y) 
		var _dir = point_direction(x,y,_target.x,_target.y)
		while(_dist > _chain_length + 1) {
			_dist -= _chain_length;
			//_dist = _dist / 2;
			//_dist = _dist / max(1, (20 / _chain_strength));
			var _pulled = _dist / (1 + (_weight / _target_weight));
			var _pull = (_dist) - _pulled
			_target.x -= lengthdir_x(_pull, _dir);
			_target.y -= lengthdir_y(_pull, _dir);
			x += lengthdir_x(_pulled, _dir);
			y += lengthdir_y(_pulled, _dir);
			_dist = point_distance(x,y,_target.x,_target.y) 
		}
	} else {
		instance_destroy()	
	}

}