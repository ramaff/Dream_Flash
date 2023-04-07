function scr_C06() {
	// Location Soul Hit by Bullet Event

	if global.C[6] > 0 {
    
	    var val = irandom(2 * global.C[6]) + irandom(80);
    
	    if val >= 80
	    if (instance_exists(obj_Bullet_Parent) and (distance_to_object(obj_Bullet_Parent) < 100)) {
	        var tar = instance_nearest(x,y,obj_Bullet_Parent).id;
			
			scr_Lightning_To_Target(spr_Lightning_Streak, x, y, tar.x, tar.y, 10, 64, make_color_rgb(175, 200, 255))
			
			with (tar) {
				scr_Bullet_Dampen(5)
			}
			
			scr_Refresh_Soul(3)
			
			
			//scr_Essence_Defense_Field();
	    }

	}



}
