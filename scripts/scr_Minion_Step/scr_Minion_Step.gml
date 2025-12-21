function scr_Minion_Step() {
	sminknockbacktime--;

	if sminknockback != 0 and sminknockbacktime > 0 {
	    var angl = sminknockbackdirection;
	    x += lengthdir_x(sminknockback, angl);
	    y += lengthdir_y(sminknockback, angl);
	}

	if sminknockbacktime <= 0 {
	    sminknockback = 0;
	}

	//scr_Soul_Outside_Check();


}
