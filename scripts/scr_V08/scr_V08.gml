// Extra Shot Stats

function scr_V08() {

	if global.V[8] >= 1 {
		shot_stats.Shot_Wander = global.V[8];
		shot_stats.Shot_Life_Span = ceil(shot_stats.Shot_Life_Span * 0.75);
		alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Speed = shot_stats.Shot_Speed * 0.75;
		speed = speed * 0.75;
	}

}
