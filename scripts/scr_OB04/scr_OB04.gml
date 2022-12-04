function scr_OB04() {
	// Soul Item Step

	if global.OB[4] > 0 {

		with(obj_Bullet_Parent) {
			if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < 150 {
				var mspd = bulletspeedmax * 0.9;
				repeat(global.OB[4]) {
					mspd = mspd * 0.8;	
				}
				if bulletspeed > mspd {
					bulletspeed -= bulletspeed * 0.05;
					speed -= speed * 0.05;
				}
			}
		}
	}


}
