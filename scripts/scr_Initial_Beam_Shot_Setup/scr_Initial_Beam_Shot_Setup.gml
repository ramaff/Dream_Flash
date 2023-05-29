// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Initial_Beam_Shot_Setup(shxx = x, shyy = y){

	if other.Shot_Beam = 2 {
		shotdamage = false;
		if other.sWeaponTicker mod 3 = 0 { 
			shotdamage = true;	
		} else {
			other.Shot_Power = 0;
		}
	}	
	if other.Shot_Type = obj_Beam_Shot {
		
		var beamseg = 1;
		var beamdir = direction;
		var curvedir = other.Shot_Beam_Curve * (-1 + random(2))
		var beamstop = other.Shot_Melee;
		var beamxx = lengthdir_x(-6, beamdir)
		var beamyy = lengthdir_y(-6, beamdir)
		//var oldbeamdir = beamdir
		var beamtype = other.Shot_Beam;
		var beamtotalsegs = other.Shot_Beam_Count;
		beamtotalsegs = 15;
		var beamspriteindex = 0;
		var beamsize = shotsize;
		var dirChange = 0;
		var boss_hits = {};
		var homespeed = shothomingspeed * 3;
		var hit_again = -1;
		var splitsize = 128 * shotsize;
		
		scr_Beam_Create(shxx, shyy, beamseg, beamdir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize)	
	}

}