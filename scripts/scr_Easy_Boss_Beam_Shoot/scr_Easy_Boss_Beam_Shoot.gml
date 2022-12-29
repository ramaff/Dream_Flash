// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Easy_Boss_Beam_Shoot(beamStartCount, beamOffset){

	var beamFr = min(5,floor((beamStartCount - bossPatternCount) / 5));
    if bossPatternCount < (beamStartCount - 30) {
        scr_Boss_Beam_Attack_New("Active",beamOffset,beamFr);  
    } else {
        scr_Boss_Beam_Attack_New("Dormant",beamOffset,beamFr);    
    }

}