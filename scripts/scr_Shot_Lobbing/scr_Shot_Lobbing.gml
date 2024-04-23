function scr_Shot_Lobbing() {
	shot_stats.Shot_Height += shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;
	y -= shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;

	if abs(shot_stats.Shot_Height) < ((25)  * 0.45) {
	    shot_stats.Shot_Height += shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;
	    y -= shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;
	}

	if abs(shot_stats.Shot_Height) < ((25) * 0.75) {
	    shot_stats.Shot_Height += shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;
	    y -= shot_stats.Shot_Bounce_Direction * 0.25 * shot_stats.Shot_Lobbing;
	}

	if abs(shot_stats.Shot_Height) >= ((25) - 2) || shot_stats.Shot_Height <= 0 {
	    shot_stats.Shot_Bounce_Direction = shot_stats.Shot_Bounce_Direction * -1;
	}



}
