function scr_U03() {
	// Soul Step After Event

		var _shoot_angle = point_direction(obj_Soul_Parent.x, obj_Soul_Parent.y, obj_Astral_Indicator.x, obj_Astral_Indicator.y);
		if global.U03boost <= 0 {
			global.U03_direction = _shoot_angle
		}
		global.U03boost -= abs(angle_difference(_shoot_angle, global.U03_direction)) * 5
		global.U03boost = max(global.U03boost, 0);
		global.U03_direction = _shoot_angle
	    sdelayregenfactor += (global.U03boost / 500);


}
