// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Form_Unlock(){
	if global.soultransformedstate = "None" {
		var snakedis = 0;
		var beastdis = 0;
		var mechdis = 0;
		var scrubdis = 0;
		var dragondis = 0;
		var spikedis = 0;
		var bleedingdis = 0;
		var rocketdis = 0;
		var castingdis = 0;
		var ascendingdis = 0;
		
		snakedis += 0.5 * floor((global.souldexterity + global.soulperception) / 20);
		beastdis += 0.5 * floor((global.soulstrength + global.soulvitality) / 20);
		mechdis += 0.5 * floor((global.soulvitality + global.soulessence) / 20);
		scrubdis += 0.5 * floor((global.soulvitality + global.souldexterity) / 20);
		spikedis += 0.5 * floor((global.soulessence + global.souldexterity) / 20);
		bleedingdis += 0.5 * floor((global.soulstrength + global.souldexterity) / 20);
		castingdis += 0.5 * floor((global.soulvitality + global.soulperception) / 20);
		ascendingdis += 0.5 * floor((global.soulessence + global.soulperception) / 20);
		
		
		if global.snakeprogress >= (3 - snakedis) {
			global.soultransformedstate = "Snake";
			global.recollectionState[1]++;
		}
		if global.beastprogress >= (3 - beastdis) {
			global.soultransformedstate = "Beast";
			global.recollectionState[2]++;
		}
		if global.mechprogress >= (3 - mechdis) {
			global.soultransformedstate = "Mechanical";
			global.recollectionState[3]++;
		}
		if global.scrubprogress >= (3 - scrubdis) {
			global.soultransformedstate = "Scrub";
			global.recollectionState[4]++;
		}
		if global.spikeprogress >= (3 - spikedis) {
			global.soultransformedstate = "Spike";
			global.recollectionState[6]++;
		}
		if global.bleedingprogress >= (3 - bleedingdis) {
			global.soultransformedstate = "Bleeding";
			global.recollectionState[7]++;
		}
		if global.castingprogress >= (3 - castingdis) {
			global.soultransformedstate = "Casting";
			global.recollectionState[9]++;
		}
		if global.ascendingprogress >= (3 - ascendingdis) {
			global.soultransformedstate = "Ascending";
			global.recollectionState[10]++;
		}
		if global.soultransformedstate != "None" and obj_Soul_Parent.stransformedstate = "None" {
			repeat(6) {
				ds_list_add(global.i_item_pool, "F00");
			}
			ds_list_add(global.i_item_pool, "I31");
			ds_list_add(global.i_item_pool, "I32");
			ds_list_add(global.i_item_pool, "I33");
			ds_list_add(global.i_item_pool, "I34");
			ds_list_add(global.i_item_pool, "I35");
			ds_list_add(global.i_item_pool, "I36");
		}
		obj_Soul_Parent.stransformedstate = global.soultransformedstate;
		obj_Soul_Parent.soul_step_after_scripts = scr_Set_Soul_Step_After_Scripts(obj_Soul_Parent)
	}
}