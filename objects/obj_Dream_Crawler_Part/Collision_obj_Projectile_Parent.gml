/// @description Insert description here
// You can write your code in this editor
if bosshealth < bossmaxhealth {
	var diff = bossmaxhealth - bosshealth;
	bosshealth = bossmaxhealth;
	if instance_exists(grand_parent) {
		grand_parent.bosshealth -= diff;	
	}
}