function scr_Change_Chapter() {
	instance_create(0,0,Chapter_Change_Control);
	instance_create(0,0,obj_Fade);
	
	global.stagedamage = 8 + (global.currentchapter * 2);

	with(obj_Soul_Hurt) {
	    bulletpower = 0;
	}

	

}
