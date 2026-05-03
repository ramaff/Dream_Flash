/// @description Insert description here
// You can write your code in this editor
if instance_exists(target) {
	if target.image_alpha > 0 {
		event_user(0);
		gpu_set_fog(true, c_white, 0, 0);
	    draw_self();
	    gpu_set_fog(false, c_white, 0, 0);
	}
} else {
	instance_destroy();	
}
//image_alpha -= 0.05;