if !instance_exists(obj_Soul_Parent) {
    exit;
}

if !window_has_focus() {
	exit;	
}

if (Pause_Control.pause) {
	exit;	
}

//global.currentheart = variable_struct_get(heart[-1], "heart_id");
global.currentheart = array_length(heart) - 1;
if global.currentheart < 0 {
	exit;	
}
global.currenthearttype = heart[global.currentheart].heart_id;

if heart_script != noone {
	script_execute(heart_script)	
}
