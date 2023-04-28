// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Stat_Credits(){
	snakedis += 0.5 * floor((global.souldexterity + global.soulperception) / 20);
	beastdis += 0.5 * floor((global.soulstrength + global.soulvitality) / 20);
	mechdis += 0.5 * floor((global.soulvitality + global.soulessence) / 20);
	scrubdis += 0.5 * floor((global.soulvitality + global.souldexterity) / 20);
	spikedis += 0.5 * floor((global.soulessence + global.souldexterity) / 20);
	bleedingdis += 0.5 * floor((global.soulstrength + global.souldexterity) / 20);
	castingdis += 0.5 * floor((global.soulvitality + global.soulperception) / 20);
	ascendingdis += 0.5 * floor((global.soulessence + global.soulperception) / 20);
}