function scr_Set_Soul_Step_After_Scripts(_soul = obj_Soul_Parent.id) {
	
	var _soul_step_after_scripts = []

	if _soul.stransformedstate != "None" {
		array_push(_soul_step_after_scripts, scr_State_Step_Scripts);
		array_push(_soul_step_after_scripts, scr_State_Particles);
		if _soul.stransformedstate == "Scrub" {
			array_push(_soul_step_after_scripts, scr_Scrub_Soul_Slip);
		}
		if _soul.stransformedstate == "Mechanical" {
			array_push(_soul_step_after_scripts, scr_Mech_State_Angle);
		}
		if _soul.stransformedstate == "Spike" {
			array_push(_soul_step_after_scripts, scr_Spike_State_Underground);
		}
	}

	if global.B[7] > 0 {
		array_push(_soul_step_after_scripts, scr_B07)
	}
	if global.B[8] > 0 {
		array_push(_soul_step_after_scripts, scr_B08);
	}
	if global.C[10] > 0 {
		array_push(_soul_step_after_scripts, scr_C10);
	}
	if global.D[7] > 0 {
		array_push(_soul_step_after_scripts, scr_D07);
	}
	if global.C[1] > 0 {
		array_push(_soul_step_after_scripts, scr_C01);
	}
	if global.C[7] > 0 {
		array_push(_soul_step_after_scripts, scr_C07);
	}
	if global.M[1] > 0 {
		array_push(_soul_step_after_scripts, scr_M01);
	}
	if global.H[13] > 0 {
		array_push(_soul_step_after_scripts, scr_H13);
	}
	if global.U[2] > 0 {
		array_push(_soul_step_after_scripts, scr_U02);
	}
	if global.U[3] > 0 {
		array_push(_soul_step_after_scripts, scr_U03);
	}
	if global.XA[5] > 0 {
		array_push(_soul_step_after_scripts, scr_XA05);
	}
	array_push(_soul_step_after_scripts, scr_Weapon_Warmup_Step);
	
	if global.F[7] >= 1 {
		array_push(_soul_step_after_scripts, scr_F07);
	}
	if global.N[3] > 0 {
		array_push(_soul_step_after_scripts, scr_N03_Step);
	}
	if global.D[14] > 0 {
		array_push(_soul_step_after_scripts, scr_D14);
	}

	return _soul_step_after_scripts;

}