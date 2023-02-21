
if !instance_exists(followtarget) {
	var followtar = obj_Soul_Parent.id
	with (obj_Manifested_Fig) {
		followtarget = followtar
		followtar = id	
	}
}

scr_Invincibility_Frames();
scr_Minion_Step();
//scr_Light_Follow_Soul_AI();

scr_Minion_Follow_Leader(50,5,false);

