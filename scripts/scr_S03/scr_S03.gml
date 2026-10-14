function scr_S03() {
	// Heart Loss Event
	/// Also in damage calc

	if global.S[3] > 0 {
	    repeat(global.S[3]) {
	        with instance_create_depth(obj_Soul_Parent.x,obj_Soul_Parent.y,0,obj_Coping_Cloud) {
				followtarget = obj_Soul_Parent.id;	
			}
	    }
	}


}
