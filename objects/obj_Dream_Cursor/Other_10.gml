/// @description Insert description here
// You can write your code in this editor


var _direction = true
var _og_button = target_button

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
	yy += 1;
	xx = 0;
}
if yy > max_y {
	yy = 0;	
	xx = 0;
}
if xx < 0 {
	xx = max_x	
}
if yy < 0 {
	yy = max_y	
}

target_button = menu_grid[xx][yy];

if instance_exists(target_button) {
	x = target_button.x;
	y = target_button.y;
	with (target_button) {
		event_user(0);	
	}
}
if instance_exists(_og_button) {
	with (_og_button) {
		event_user(1);	
	}
}

