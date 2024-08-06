function scr_Boss_Beat() {
	global.totalFieldBeat++;
	
	//global.H06refill = 10;
	global.H06refill--;
	if global.H06refill < 0 {
		global.H06refill = 0;	
	}

	scr_V02();
	scr_H07();
	
	scr_N04_Pay();

	scr_XA04_Room_Update();
	
	//scr_Tutorial_Note_Spawn("item_field");

}
