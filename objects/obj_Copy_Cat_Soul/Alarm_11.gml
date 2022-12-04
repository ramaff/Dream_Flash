for (bi = 0; bi < 9; bi++) {
	if Shot_Repetition[bi] > 0 {
		if Shot_Barrage_Speed[bi] < 1 {
		    Shot_Barrage_Speed[bi] = 1;
		}
		alarm[11] = Shot_Barrage_Speed[bi];
		if Shot_Repetition_Forward_Interval[bi] > 0 {
			var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
			Shot_XX = lengthdir_x(len,Shot_Direction);
			Shot_YY = lengthdir_y(len,Shot_Direction);
		}
		scr_Shot_Creation();
		Shot_Repetition[bi]--;
	}

}