function scr_Change_Chapter() {
	if global.currentheart > 0 {
		instance_create(0,0,Chapter_Change_Control);
		instance_create(0,0,obj_Fade);
	}
	
	//global.stagedamage = 8 + (global.currentchapter * 2);
	global.stagedamage = 10;

	with(obj_Soul_Hurt) {
	    bulletpower = 0;
	}

	

}
