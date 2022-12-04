function scr_Item_Variable_Step() {
	if global.U[3] > 0 {
		global.U03boost += 0.9 + global.U[3];

		if (global.U03boost >= (global.U[3] * 500)) {
			global.U03boost = global.U[3] * 500;	
		}
	}


}
