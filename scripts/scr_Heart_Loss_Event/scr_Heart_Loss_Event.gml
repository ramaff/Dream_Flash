function scr_Heart_Loss_Event(current_heart_type) {
	scr_S02();
	scr_S03();

	scr_L04();
	
	var heart_val = current_heart_type - frac(current_heart_type);
	if heart_val != HEART_TYPE.BODY_RAG and heart_val != HEART_TYPE.UNDYING and heart_val != HEART_TYPE.COPING and heart_val != HEART_TYPE.SECURE {
		scr_S04();
		scr_B03_Add();
	}
    
	scr_F06(25);
	
	with(obj_Soul_Parent) {
		alarm[2] = 1;
	}
}
