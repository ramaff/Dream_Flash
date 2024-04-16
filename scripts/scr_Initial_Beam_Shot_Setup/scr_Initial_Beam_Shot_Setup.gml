// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Initial_Beam_Shot_Setup(shxx = x, shyy = y){

	if shot_stats.Shot_Type = "obj_Beam_Shot" {
		
		var beamseg = 1;
		var beamdir = direction;
		var curvedir = shot_stats.Shot_Beam_Curve * (-1 + random(2))
		var beamstop = shot_stats.Shot_Melee;
		var beamxx = lengthdir_x(-6, beamdir)
		var beamyy = lengthdir_y(-6, beamdir)
		//var oldbeamdir = beamdir
		var beamtype = shot_stats.Shot_Beam;
		var beamtotalsegs = shot_stats.Shot_Beam_Count;
		beamtotalsegs = 15;
		var beamspriteindex = 0;
		var beamsize = shot_stats.Shot_Size;
		var dirChange = 0;
		var boss_hits = {};
		var homespeed = shot_stats.Shot_Homing_Speed * 3;
		var hit_again = -1;
		var splitsize = 128 * shot_stats.Shot_Size;
		
		scr_Beam_Create(shxx, shyy, beamseg, beamdir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize)	
	}

}