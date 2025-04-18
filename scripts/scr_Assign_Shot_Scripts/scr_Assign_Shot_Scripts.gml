// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Assign_Shot_Scripts(){
	
	// Only stuff directly related to shot_stats should get assigned here
	// If a script is related to a specific item instead of a broad shot stat, it should get assigned separately

	var _shot_step_scripts = []
	var _shot_draw_scripts = []
	
	if global.A[14] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent and object_index != obj_Defense_Soul_Shot { 
		array_push(_shot_step_scripts, scr_A14)
		array_push(_shot_draw_scripts, scr_A14_Draw)
	}
	if shot_stats.Shot_Movement = 0 {
		array_push(_shot_step_scripts, scr_Shot_No_Movement)
	}
	if shot_stats.Shot_State = "Beast" {
		array_push(_shot_step_scripts, scr_Beast_Shot_Particles)
	}
	if shot_stats.Shot_Spike_Aura {
		array_push(_shot_step_scripts, scr_Spike_Shot_Particles)
	}
	if global.P[5] > 0 {
		array_push(_shot_step_scripts, scr_P05_Particles)
	}
	if shot_stats.Shot_Extra_Hits_Frequency != -1 {
		array_push(_shot_step_scripts, scr_Shot_Extra_Hits_Tick)
	}
	if shot_stats.Shot_Suck != 0 {
		if shot_stats.Shot_Suck_Type = 1 {
			array_push(_shot_step_scripts, scr_Enemy_Bullet_Suck)
		} else if shot_stats.Shot_Suck_Type = 2 {
			array_push(_shot_step_scripts, scr_Enemy_Bullet_Orbit_Suck)
		}
	}
	if shot_stats.Shot_Bounce = 1 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
		array_push(_shot_step_scripts, scr_Wall_Bounce_Ext)
	}
	if shot_stats.Shot_Angular_Velocity != 0 {
		array_push(_shot_step_scripts, scr_Shot_Angular_Velocity)
	}
	if shot_stats.Shot_Point_Angle = 1 {
		array_push(_shot_step_scripts, scr_Shot_Point_Angle)
	}
	if shot_stats.Shot_Face_Direction = 1 {
		array_push(_shot_step_scripts, scr_Shot_Two_Face_Direction)
	}

	if shot_stats.Shot_Shrink = 1 {
		array_push(_shot_step_scripts, scr_Shot_Shrink)
	} else {
		array_push(_shot_step_scripts, scr_Shot_Fizzle_Out)
	}
	
	if shot_stats.Shot_Fade = 1 {
		array_push(_shot_step_scripts, scr_Shot_Fade)
	}
	if shot_stats.Shot_Image_Rotation_Speed != 0 {
		array_push(_shot_step_scripts, scr_Shot_Rotate)
	}

	if shot_stats.Shot_Friction != 0 {
		array_push(_shot_step_scripts, scr_Shot_Friction)
	}
	if shot_stats.Shot_Acceleration != 0 {
		array_push(_shot_step_scripts, scr_Shot_Acceleration)
	}
	
	if shot_stats.Shot_Mouse_Maintain = 1 {
	    array_push(_shot_step_scripts, scr_Shot_Mouse_Maintain)
	}
	if shot_stats.Shot_Soul_Maintain = 1 {
		array_push(_shot_step_scripts, scr_Shot_Soul_Maintain)
	}
	if shot_stats.Shot_Instability > 0 {
		array_push(_shot_step_scripts, scr_Shot_Instability)
	}
	if shot_stats.Shot_Excess_Essence > 0 {
		array_push(_shot_step_scripts, scr_Shot_Excess_Essence_Step)
	}
	
	if shot_stats.Shot_Grow > 0 {
	    array_push(_shot_step_scripts, scr_Shot_Grow)
	}
	if shot_stats.Shot_Air_Burst_Stats != false {
		array_push(_shot_step_scripts, scr_Shot_Air_Burst_Step)
	}
	if shot_stats.Shot_Orbital_Type > 0 { 
		array_push(_shot_step_scripts, scr_Shot_Orbit)
	}
	
	if shot_stats.Shot_Shield_Type = 1 || shot_stats.Shot_Continue = 1 { 
	    array_push(_shot_step_scripts, scr_Shot_Size_Proportional_To_Damage)
	}

	if shot_stats.Shot_Aura = 1 {
		array_push(_shot_step_scripts, scr_Shot_Aura_Damage)
	}

	if shot_stats.Shot_Homing_Type = 1 {
	    array_push(_shot_step_scripts, scr_Shot_Homing_1)
	}

	if shot_stats.Shot_Homing_Type = 2 {
	    array_push(_shot_step_scripts, scr_Shot_Homing_2)
	}

	if shot_stats.Shot_Homing_Type = 3 {
	    array_push(_shot_step_scripts, scr_Shot_Homing_3)
	}
	
	
	
	// one of the last ones
	if shot_stats.Shot_Wave_Direction != 0 || shot_stats.Shot_Wave_Acceleration != 0 {
		array_push(_shot_step_scripts, scr_Shot_Wave)
	}
	
	shot_stats.Shot_Step_Scripts = array_concat(shot_stats.Shot_Step_Scripts, _shot_step_scripts)
	shot_stats.Shot_Draw_Scripts = array_concat(shot_stats.Shot_Draw_Scripts, _shot_draw_scripts)

}