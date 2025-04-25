function scr_P10() {
	// Soul Item Step

		with(obj_Bullet_Parent) {
			if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < 150 {
				var mspd = bulletspeedmax * 0.9;
				repeat(global.P[10]) {
					mspd = mspd * 0.8;	
				}
				if bulletspeed > mspd {
					bulletspeed -= bulletspeed * 0.05;
					speed -= speed * 0.05;
				}
			}
		}


}
