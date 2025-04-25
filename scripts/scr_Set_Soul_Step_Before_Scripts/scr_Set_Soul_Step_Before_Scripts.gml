function scr_Set_Soul_Step_Before_Scripts() {
	
	var _soul_step_before_scripts = []
	if global.B[10] > 0 {
		array_push(_soul_step_before_scripts, scr_B10)
	}

	if global.C[5] > 0 {
		scr_C05();
	}
	if global.C[6] > 0 {
		scr_C06();
	}

	if global.D[12] > 0
		scr_D12_Gust();
	}

	if global.E[13] > 0 {
		scr_E13();
	}

	scr_OA02();
	scr_P10();
	
	scr_P04();
	//scr_P08();
	
	scr_U07();
	
	scr_Essence_Beam_Step()
	
	scr_XC02();
	
	scr_OC05();
	
	scr_XC06_Step();
	
	scr_OB04();

	return _soul_step_before_scripts;

}
