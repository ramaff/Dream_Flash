function scr_S02() {
	// Heart Loss Event
	/// Also in damage calc

	if global.S[2] > 0 {
	    repeat(global.S[2]) {
	        with instance_create_depth(obj_Soul_Parent.x,obj_Soul_Parent.y,0,obj_Helping_Soul) {
				followtarget = obj_Soul_Parent.id;	
			}
	    }
	}


}
