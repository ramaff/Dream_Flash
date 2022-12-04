function scr_Soul_Turn_To_Linear() {
	var bossdirection = scr_Soul_Point();
			if (x < obj_Soul_Parent.perX + 5) and (x > obj_Soul_Parent.perX - 5) {
				var bossdirection = scr_Soul_Point();
				if bossdirection > 180 and bossdirection < 359.9 {
					direction = 270;
				} else {
					direction = 90;	
				}
			}
			if (y < obj_Soul_Parent.perY + 5) and (y > obj_Soul_Parent.perY - 5) {
				var bossdirection = scr_Soul_Point();
				if bossdirection > 90 and bossdirection < 270 {
					direction = 180;
				} else {
					direction = 0;	
				}
			}
			if angle_difference(bossdirection,direction) > 90 {
				direction += 180;	
			}


}
