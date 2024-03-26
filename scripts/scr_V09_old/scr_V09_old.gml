// Extra Shot Stats

function scr_V09_old() {

	if global.V[9] >= 1 {
		//shot_stats.Shot_Lobbing = 1;
		//shot_stats.Shot_Bounce_Y = 0;
	    //shot_stats.Shot_Bounce_Speed = 10;
	    //shot_stats.Shot_Bounce_Direction = 1;	
		
		shot_stats.Shot_Powermax = shot_stats.Shot_Powermax * (0.5);
		shot_stats.Shot_Power = shot_stats.Shot_Powermax;
		shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * (0.5);
		
		shot_stats.Shot_Size = shot_stats.Shot_Size * 0.7;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		
		shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 0.5;
		alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Speed = shot_stats.Shot_Speed * 1.25;
		speed = speed * 1.25;
	}

}
