function scr_Set_Soul_Step_Before_Scripts(_soul = obj_Soul_Parent.id) {
	
	var _soul_step_before_scripts = []
	if global.A[5] > 0 {
		array_push(_soul_step_before_scripts, scr_A05_Status_Build_Up);
	}
	if global.B[10] > 0 {
		array_push(_soul_step_before_scripts, scr_B10)
	}
	if global.C[5] > 0 {
		array_push(_soul_step_before_scripts, scr_C05);
	}
	if global.C[6] > 0 {
		array_push(_soul_step_before_scripts, scr_C06);
	}
	if global.D[5] > 0 {
		array_push(_soul_step_before_scripts, scr_D05_Status_Build_Up);
	}
	if global.D[12] > 0 {
		array_push(_soul_step_before_scripts, scr_D12_Gust);
	}
	if global.E[13] > 0 {
		array_push(_soul_step_before_scripts, scr_E13);
	}
	if global.OA[2] > 0 {
		array_push(_soul_step_before_scripts, scr_OA02);
	}
	if global.P[10] > 0 {
		array_push(_soul_step_before_scripts, scr_P10);
	}
	if global.P[4] > 0 {
		array_push(_soul_step_before_scripts, scr_P04);
	}
	if global.S[1] > 0 {
		array_push(_soul_step_before_scripts, scr_S01_Status_Build_Up);
	}
	if global.U[7] > 0 {
		array_push(_soul_step_before_scripts, scr_U07);
	}
	if global.Weap[14] > 0 {
		array_push(_soul_step_before_scripts, scr_Essence_Beam_Step)
	}
	/*if global.XC[2] > 0 {
		array_push(_soul_step_before_scripts, scr_XC02);
	} */
	if global.OC[5] > 0 {
		array_push(_soul_step_before_scripts, scr_OC05);
	}
	if global.XC[6] > 0 {
		array_push(_soul_step_before_scripts, scr_XC06_Step);
	}
	if global.OB[4] > 0 {
		array_push(_soul_step_before_scripts, scr_OB04);
	}

	return _soul_step_before_scripts;

}
