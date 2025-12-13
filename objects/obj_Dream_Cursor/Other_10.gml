/// @description Insert description here
// You can write your code in this editor


var _direction = true
var _og_button = target_button

if array_length(menu_grid) <= 0 {
	exit;	
}

if InputCheck(INPUT_VERB.DOWN) {
	yy += 1;
} else if InputCheck(INPUT_VERB.UP) {
	yy -= 1;
} else if InputCheck(INPUT_VERB.RIGHT) {
	xx += 1;
} else if InputCheck(INPUT_VERB.LEFT) {
	xx -= 1;
} else {
	exit;
}

movement_delay = 15;

if xx > max_x {
	//yy += 1;
	xx = 0;
}
if yy > max_y {
	yy = 0;	
	//xx = 0;
}
if xx < 0 {
	xx = max_x	
}
if yy < 0 {
	yy = max_y	
}

target_button = menu_grid[xx][yy];

if instance_exists(_og_button) {
	with (_og_button) {
		event_user(1);	
	}
}

if instance_exists(target_button) {
	if target_button.object_index == obj_Option_Button {
		var _type = target_button.type
		with(obj_Option_Pointer) {
			if abs(type) != abs(_type) {
				continue;
			}
			if InputPressed(INPUT_VERB.LEFT) and type < 0 {
				event_user(0)
			} 
			if InputPressed(INPUT_VERB.RIGHT) and type > 0 {
				event_user(0)	
			}
		}
		with(obj_Option_Slider) {
			if abs(type) != abs(_type) {
				continue;
			}
			if InputCheck(INPUT_VERB.LEFT) {
				percent = clamp(percent - 10, 0, 100);
			} 
			if InputCheck(INPUT_VERB.RIGHT) {
				percent = clamp(percent + 10, 0, 100);
			}
		}
	}
	//x = target_button.x;
	//y = target_button.y;
	event_user(1);
}
/*
if instance_exists(_og_button) and _og_button != target_button {
	with (_og_button) {
		event_user(1);	
	}
} */

