/// @description Insert description here
// You can write your code in this editor

event_inherited();

if instance_exists(minionbossparent) {
	if bosshealth < 0 {
		with (minionbossparent) {
			bosshealth -= 15;
			scr_setup_dmg_indicator(x,y, 15, c_white);
		}
	}
	minionbossparent.bossSize += minionbossparent.bossSize * 0.05;
	if minionbossparent.bossSize > 0.5 {
		minionbossparent.bossSize = 0.5;	
	}
}
