
if !instance_exists(followtarget) {
	var followtar = obj_Soul_Parent.id
	with (obj_Fleeting_Soul) {
		followtarget = followtar
		followtar = id	
	}
	//followtarget = followtar
	//show_debug_message(object_get_name(followtarget))
}

//show_debug_message()
//show_debug_message(object_get_name(followtarget))

// scr_Light_Follow_Soul_AI();

scr_New_Face_Direction();

scr_Minion_Follow_Leader(50,5,false);

