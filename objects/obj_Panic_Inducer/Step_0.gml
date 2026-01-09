scr_Invincibility_Frames();

scr_Minion_Step();

if instance_exists(obj_Soul_Parent) {
	followtarget = obj_Soul_Parent;
} else {
	instance_destroy();	
}

scr_Minion_Follow_Leader(100, 1);