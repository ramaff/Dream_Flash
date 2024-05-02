/// @description Insert description here
// You can write your code in this editor

event_inherited();

if instance_exists(minionbossparent) {
	scr_Boss_Share_Damage(minionbossparent, boss_stored_health, bosshealth);
	
	minionbossparent.bossSize += minionbossparent.bossSize * 0.125;
	if minionbossparent.bossSize > 0.5 {
		minionbossparent.bossSize = 0.5;	
	}
}
