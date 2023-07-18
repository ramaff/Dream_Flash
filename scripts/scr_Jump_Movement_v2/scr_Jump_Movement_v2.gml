function scr_Jump_Movement_v2(jumpSpeed) {
	
	if pattern_count <= ((pattern_count_max / 2) + 0.5) {
		jumpDirection = "Down";	
	} else {
		jumpDirection = "Up";	
	}

	var _a_speed = jumpSpeed * 2 * ((pattern_count - ((pattern_count_max / 2) + 0.5)) / ((pattern_count_max / 2) + 0.5));
	var _b_speed = jumpSpeed * 2 * ((((pattern_count_max / 2) + 0.5) - pattern_count) / ((pattern_count_max / 2) + 0.5));

	if jumpDirection = "Up" {
		boss_height += _a_speed;
		y -= _a_speed;
	} else if jumpDirection = "Down" {
		boss_height -= _b_speed;
		y += _b_speed;
	}


}
