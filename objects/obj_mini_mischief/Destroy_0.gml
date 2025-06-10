/// @description Insert description here
// You can write your code in this editor

event_inherited();

if instance_exists(minionbossparent) {
	if bosshealth < 0 {
		with (minionbossparent) {
			var _dmg = 15
			bosshealth -= _dmg;
			scr_setup_dmg_indicator(x,y, _dmg, c_white);
		}
	}
	minionbossparent.bossSize += minionbossparent.bossSize * 0.05;
	if minionbossparent.bossSize > 0.5 {
		minionbossparent.bossSize = 0.5;	
	}
}
