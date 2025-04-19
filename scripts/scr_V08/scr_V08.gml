// Extra Shot Stats

function scr_V08() {

	if global.V[8] >= 1 {
		shot_stats.Shot_Wander = global.V[8];
		shot_stats.Shot_Life_Span = ceil(shot_stats.Shot_Life_Span * 1.5);
		alarm[0] = shot_stats.Shot_Life_Span / (shot_stats.Shot_Wander + 1);
		shot_stats.Shot_Speed = shot_stats.Shot_Speed * 0.75;
		shot_stats.Shot_Form_Show = 0;
		speed = speed * 0.75;
	}

}
