// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Beam_Frame(beamFrame){
	// beamFrame - beam shooting begin pattern count
	bossFrame = floor(beamFrame / 10);
	if beamFrame > 2 {
		beamFrame = 2;	
	}
	return beamFrame;
}